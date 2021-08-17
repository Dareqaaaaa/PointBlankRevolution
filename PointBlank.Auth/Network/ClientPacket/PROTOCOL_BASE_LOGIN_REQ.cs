using PointBlank.Core;
using PointBlank.Core.Managers;
using PointBlank.Core.Managers.Server;
using PointBlank.Core.Models.Enums;
using PointBlank.Core.Network;
using PointBlank.Auth.Data.Configs;
using PointBlank.Auth.Data.Managers;
using PointBlank.Auth.Data.Model;
using PointBlank.Auth.Data.Sync;
using PointBlank.Auth.Data.Sync.Server;
using PointBlank.Auth.Network.ServerPacket;
using System;
using System.Net.NetworkInformation;

namespace PointBlank.Auth.Network.ClientPacket
{
    public class PROTOCOL_BASE_LOGIN_REQ : ReceivePacket
    {
        private string Token, GameVersion, PublicIP;
        private int TokenSize;
        private ClientLocale GameLocale;
        private PhysicalAddress MacAddress;

        public PROTOCOL_BASE_LOGIN_REQ(AuthClient client, byte[] data)
        {
            makeme(client, data);
        }

        public override void read()
        {
            int Length = readC();
            readB(Length);
            readB(16);
            readS(32);
            readB(26);
            readC();
            GameVersion = readC() + "." + readH();
            TokenSize = readH();
            Token = readS(TokenSize);
            readC();
            readH();

            PublicIP = _client.GetIPAddress();
            GameLocale = ClientLocale.Thai;
            MacAddress = new PhysicalAddress(new byte[6]);
        }

        public override void run()
        {
            try
            {
                if (PublicIP == null || Token.Trim().Length == 0)
                {
                    _client.Close(0, true);
                }

                ServerConfig cfg = AuthManager.Config;
                if (cfg == null || !AuthConfig.isTestMode && !AuthConfig.GameLocales.Contains(GameLocale) || Token.Length < AuthConfig.minTokenSize || GameVersion != cfg.ClientVersion)
                {
                    string msg = "";
                    if (cfg == null)
                    {
                        msg = "Invalid server setting [" + Token + "]";
                    }
                    else if (!AuthConfig.isTestMode && !AuthConfig.GameLocales.Contains(GameLocale))
                    {
                        msg = GameLocale + " blocked [" + Token + "]";
                    }
                    else if (Token.Length < AuthConfig.minTokenSize)
                    {
                        msg = "Token < Size [" + Token + "]";
                    }
                    else if (GameVersion != cfg.ClientVersion)
                    {
                        msg = "Version: " + GameVersion + " not compatible [" + Token + "]";
                    }
                    _client.SendPacket(new PROTOCOL_SERVER_MESSAGE_DISCONNECTIONSUCCESS_ACK(2147483904, false));
                    Logger.LogLogin(msg);
                    _client.Close(1000, true);
                }
                else
                {
                    _client._player = AccountManager.getInstance().getAccountDB(Token, null, 0, 0);
                    if (_client._player == null && AuthConfig.AUTO_ACCOUNTS && !AccountManager.getInstance().CreateAccount(out _client._player, Token))
                    {
                        _client.SendPacket(new PROTOCOL_BASE_LOGIN_ACK(EventErrorEnum.LOGIN_DELETE_ACCOUNT, "", 0));
                        Logger.LogLogin("Failed to create account automatically");
                        _client.Close(1000, false);
                    }
                    else
                    {
                        Account p = _client._player;
                        if (p == null || !p.CompareToken(Token))
                        {
                            string msg = "";
                            if (p == null)
                            {
                                msg = "Invaild Account";
                            }
                            else if (!p.CompareToken(Token))
                            {
                                msg = "Invalid Token";
                            }
                            _client.SendPacket(new PROTOCOL_BASE_LOGIN_ACK(EventErrorEnum.LOGIN_INVALID_ACCOUNT, "", 0));
                            Logger.LogLogin(msg + " [" + Token + "]");
                            _client.Close(1000, false);
                        }
                        else if (p.access >= 0)
                        {
                            if (p.MacAddress != MacAddress)
                            {
                                ComDiv.updateDB("players", "last_mac", MacAddress, "player_id", p.player_id);
                            }
                            bool macStatus, ipStatus;
                            BanManager.GetBanStatus(MacAddress.ToString(), PublicIP, out macStatus, out ipStatus);
                            if (macStatus || ipStatus)
                            {
                                if (macStatus)
                                {
                                    Logger.LogLogin("Mac banned [" + p.login + "]");
                                }
                                else
                                {
                                    Logger.LogLogin("Ip banned [" + p.login + "]");
                                }
                                _client.SendPacket(new PROTOCOL_BASE_LOGIN_ACK(ipStatus ? EventErrorEnum.LOGIN_BLOCK_IP : EventErrorEnum.LOGIN_BLOCK_ACCOUNT, "", 0));
                                _client.Close(1000, false);
                            }
                            else if (p.IsGM() && cfg.onlyGM || p.access >= 0 && !cfg.onlyGM)
                            {
                                Account pCache = AccountManager.getInstance().getAccount(p.player_id, true);
                                if (!p._isOnline)
                                {
                                    BanHistory htb = BanManager.GetAccountBan(p.ban_obj_id);
                                    if (htb.endDate > DateTime.Now)
                                    {
                                        _client.SendPacket(new PROTOCOL_BASE_LOGIN_ACK(EventErrorEnum.LOGIN_BLOCK_ACCOUNT, "", 0));
                                        Logger.LogLogin("Account with ban active [" + p.login + "]");
                                        _client.Close(1000, false);
                                    }
                                    else if (CheckHwId(pCache.hwid))
                                    {
                                        _client.SendPacket(new PROTOCOL_BASE_LOGIN_ACK(EventErrorEnum.LOGIN_BLOCK_ACCOUNT, "", 0));
                                        Logger.LogLogin("Ban HwId [" + p.login + "]");
                                        _client.Close(1000, false);
                                    }
                                    else
                                    {
                                        if (pCache != null)
                                        {
                                            pCache._connection = _client;
                                        }
                                        p.SetPlayerId(p.player_id, 31);
                                        p._clanPlayers = ClanManager.getClanPlayers(p.clan_id, p.player_id);
                                        _client.SendPacket(new PROTOCOL_BASE_LOGIN_ACK(0, p.login, p.player_id));
                                        _client.SendPacket(new PROTOCOL_AUTH_GET_POINT_CASH_ACK(0, p._gp, p._money));
                                        if (p.clan_id > 0)
                                        {
                                            _client.SendPacket(new PROTOCOL_CS_MEMBER_INFO_ACK(p._clanPlayers));
                                        }
                                        p._status.SetData(4294967295, p.player_id);
                                        p._status.updateServer(0);
                                        p.setOnlineStatus(true);
                                        SendRefresh.RefreshAccount(p, true);



                                        if (AuthConfig.ClearToken)
                                            ComDiv.updateDB("players", "token", "", "player_id", p.player_id);
                                    }
                                }
                                else
                                {
                                    _client.SendPacket(new PROTOCOL_BASE_LOGIN_ACK(EventErrorEnum.LOGIN_ALREADY_LOGIN_WEB, "", 0));
                                    Logger.LogLogin("Online account [" + p.login + "]");
                                    if (pCache != null && pCache._connection != null)
                                    {
                                        pCache.SendPacket(new PROTOCOL_AUTH_ACCOUNT_KICK_ACK(1));
                                        pCache.SendPacket(new PROTOCOL_SERVER_MESSAGE_ERROR_ACK(2147487744));
                                        pCache.Close(1000);
                                    }
                                    else
                                    {
                                        AuthSync.SendLoginKickInfo(p);
                                    }
                                    _client.Close(1000, false);
                                }
                            }
                            else
                            {
                                _client.SendPacket(new PROTOCOL_BASE_LOGIN_ACK(EventErrorEnum.LOGIN_TIME_OUT_2, "", 0));
                                Logger.LogLogin("Invalid Access [" + p.login + "]");
                                _client.Close(1000, false);
                            }
                        }
                        else
                        {
                            _client.SendPacket(new PROTOCOL_BASE_LOGIN_ACK(EventErrorEnum.LOGIN_BLOCK_ACCOUNT, "", 0));
                            Logger.LogLogin("Permanent ban [" + p.login + "]");
                            _client.Close(1000, false);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Logger.warning("PROTOCOL_BASE_LOGIN_REQ: " + ex.ToString());
            }
        }

        public bool CheckHwId(string PlayerHwId)
        {
            foreach (string HwId in BanManager.GetHwIdList())
            {
                if (PlayerHwId.Length != 0 || HwId.Length != 0 || HwId != null || HwId == "")
                {
                    if (PlayerHwId == HwId)
                    {
                        return true;
                    }
                }
            }
            return false;
        }
    }
}