using PointBlank.Core;
using PointBlank.Core.Managers;
using PointBlank.Core.Managers.Events;
using PointBlank.Core.Managers.Server;
using PointBlank.Core.Models.Account;
using PointBlank.Core.Models.Account.Clan;
using PointBlank.Core.Models.Account.Players;
using PointBlank.Core.Network;
using PointBlank.Core.Xml;
using PointBlank.Auth.Data.Configs;
using PointBlank.Auth.Data.Managers;
using PointBlank.Auth.Data.Model;
using System;
using PointBlank.Core.Models.Servers;
using PointBlank.Core.Models.Enums;

namespace PointBlank.Auth.Network.ServerPacket
{
    public class PROTOCOL_BASE_GET_USER_INFO_ACK : SendPacket
    {
        private Account Player;
        private Clan Clan;
        private uint Error;
        //private bool Xmas;

        public PROTOCOL_BASE_GET_USER_INFO_ACK(Account Player)
        {
            this.Player = Player;
            if (Player != null)
            {
                Clan = ClanManager.getClanDB(Player.clan_id, 1);
            }
            else
            {
                Error = 0x80000000;
            }
        }

        private void CheckGameEvents(EventVisitModel evVisit)
        {
            long dateNow = long.Parse(DateTime.Now.ToString("yyMMddHHmm"));
            PlayerEvent pev = Player._event;
            if (pev != null)
            {
                QuestModel evQuest = EventQuestSyncer.getRunningEvent();
                if (evQuest != null)
                {
                    long date = pev.LastQuestDate, finish = pev.LastQuestFinish;
                    if (pev.LastQuestDate < evQuest.startDate)
                    {
                        pev.LastQuestDate = 0;
                        pev.LastQuestFinish = 0;
                    }
                    if (pev.LastQuestFinish == 0)
                    {
                        Player._mission.mission4 = 13; // MissionId
                        if (pev.LastQuestDate == 0)
                        {
                            pev.LastQuestDate = (uint)dateNow;
                        }
                    }
                    if (pev.LastQuestDate != date || pev.LastQuestFinish != finish)
                    {
                        EventQuestSyncer.ResetPlayerEvent(Player.player_id, pev);
                    }
                }
                EventLoginModel evLogin = EventLoginSyncer.getRunningEvent();
                if (evLogin != null && !(evLogin.startDate < pev.LastLoginDate && pev.LastLoginDate < evLogin.endDate))
                {
                    ItemsModel item = new ItemsModel(evLogin._rewardId, evLogin._category, "Login Event", 1, evLogin._count);
                    PlayerManager.tryCreateItem(item, Player._inventory, Player.player_id);
                    ComDiv.updateDB("player_events", "last_login_date", dateNow, "player_id", Player.player_id);
                }
                if (evVisit != null && pev.LastVisitEventId != evVisit.id)
                {
                    pev.LastVisitEventId = evVisit.id;
                    pev.LastVisitSequence1 = 0;
                    pev.LastVisitSequence2 = 0;
                    pev.NextVisitDate = 0;
                    EventVisitSyncer.ResetPlayerEvent(Player.player_id, evVisit.id);
                }
                /*EventXmasModel evXmas = EventXmasSyncer.getRunningEvent();
                if (evXmas != null)
                {
                    if (pev.LastXmasRewardDate < evXmas.startDate)
                    {
                        pev.LastXmasRewardDate = 0;
                        ComDiv.updateDB("player_events", "last_xmas_reward_date", 0, "player_id", Player.player_id);
                    }
                    if (!(pev.LastXmasRewardDate > evXmas.startDate && pev.LastXmasRewardDate <= evXmas.endDate))
                    {
                        Xmas = true;
                    }
                }*/
            }
            ComDiv.updateDB("accounts", "last_login", dateNow, "player_id", Player.player_id);
        }

        public override void write()
        {
            ServerConfig cfg = AuthManager.Config;
            EventVisitModel evVisit = EventVisitSyncer.getRunningEvent();
            writeH(525);
            writeH(0);
            writeD(Error);
            if (Error != 0)
            {
                return;
            }
            writeC((byte)Player.Characters.Count);
            writeH(210);
            writeC((byte)QuickStartXml.QucikStarts.Count);
            for (int i = 0; i < QuickStartXml.QucikStarts.Count; i++)
            {
                QuickStart Quick = QuickStartXml.QucikStarts[i];
                writeC((byte)Quick.MapId);
                writeC((byte)Quick.Rule);
                writeC((byte)Quick.StageOptions);
                writeC((byte)Quick.Type);
            }
            writeB(new byte[33]);
            writeC(4);
            writeD(0);
            writeD(0);
            writeD(0);
            writeD(0);
            writeD(0);
            writeD(Player._titles.Slots);
            writeC(3);
            writeC((byte)Player._titles.Equiped1);
            writeC((byte)Player._titles.Equiped2);
            writeC((byte)Player._titles.Equiped3);
            writeQ(Player._titles.Flags);
            writeC(160);
            writeB(Player._mission.list1);
            writeB(Player._mission.list2);
            writeB(Player._mission.list3);
            writeB(Player._mission.list4);
            writeC((byte)Player._mission.actualMission);
            writeC((byte)Player._mission.card1);
            writeC((byte)Player._mission.card2);
            writeC((byte)Player._mission.card3);
            writeC((byte)Player._mission.card4);
            writeB(ComDiv.getCardFlags(Player._mission.mission1, Player._mission.list1));
            writeB(ComDiv.getCardFlags(Player._mission.mission2, Player._mission.list2));
            writeB(ComDiv.getCardFlags(Player._mission.mission3, Player._mission.list3));
            writeB(ComDiv.getCardFlags(Player._mission.mission4, Player._mission.list4));
            writeC((byte)Player._mission.mission1);
            writeC((byte)Player._mission.mission2);
            writeC((byte)Player._mission.mission3);
            writeC((byte)Player._mission.mission4);
            writeD(Player.blue_order);
            writeD(Player.medal);
            writeD(Player.insignia);
            writeD(Player.brooch);
            writeD(0);
            writeC(0);
            writeD(0);
            writeC(2);
            WriteDormantEvent();
            WriteVisitEvent(evVisit);
            writeC(2);
            writeD(0);
            writeC(0);
            writeD(0);
            writeD(0);
            writeC(0);
            writeC(0);
            writeC(0);
            writeC(0);
            writeC(0);
            writeIP("127.0.0.1");
            writeD(uint.Parse(DateTime.Now.ToString("yyMMddHHmm")));
            if (Player.Characters.Count == 0)
            {
                writeC(0);
                writeC(1);
            }
            else
            {
                writeC((byte)Player.getCharacter(Player._equip._red).Slot);
                writeC((byte)Player.getCharacter(Player._equip._blue).Slot);
            }
            writeD(Player._inventory.getItem(Player._equip._dino)._id);
            writeD((uint)Player._inventory.getItem(Player._equip._dino)._objId);
            writeD(0);
            writeD(0);
            writeD(0);
            writeD(0);
            writeD(0);
            writeH(0);
            writeC((byte)Player.name_color);
            writeD(Player._bonus.fakeRank);
            writeD(Player._bonus.fakeRank);
            writeUnicode(Player._bonus.fakeNick, 66);
            writeH((short)Player._bonus.sightColor);
            writeH((short)Player._bonus.muzzle);
            writeD(Player._statistic.fights);
            writeD(Player._statistic.fights_win);
            writeD(Player._statistic.fights_lost);
            writeD(Player._statistic.fights_draw);
            writeD(Player._statistic.kills_count);
            writeD(Player._statistic.headshots_count);
            writeD(Player._statistic.deaths_count);
            writeD(Player._statistic.totalfights_count);
            writeD(Player._statistic.totalkills_count);
            writeD(Player._statistic.escapes);
            writeD(Player._statistic.assist);
            writeD(Player._statistic.fights);
            writeD(Player._statistic.fights_win);
            writeD(Player._statistic.fights_lost);
            writeD(Player._statistic.fights_draw);
            writeD(Player._statistic.kills_count);
            writeD(Player._statistic.headshots_count);
            writeD(Player._statistic.deaths_count);
            writeD(Player._statistic.totalfights_count);
            writeD(Player._statistic.totalkills_count);
            writeD(Player._statistic.escapes);
            writeD(Player._statistic.assist);
            writeUnicode(Player.player_name, 66);
            writeD(Player._rank);
            writeD(Player._rank);
            writeD(Player._gp);
            writeD(Player._exp);
            writeD(0);
            writeC(0);
            writeD(0);
            writeQ(0);
            writeC(0);
            writeC(0);
            writeD(Player._money);
            writeD(Clan._id);
            writeD(Player.clanAccess);
            writeQ(Player.Status());
            writeC((byte)Player.pc_cafe);
            writeC((byte)Player.tourneyLevel);
            writeUnicode(Clan._name, 34);
            writeC((byte)Clan._rank);
            writeC((byte)Clan.getClanUnit());
            writeD(Clan._logo);
            writeC((byte)Clan._name_color);
            writeC((byte)Clan.effect);
            writeC((byte)Player.age);
        }

        private void WriteDormantEvent()
        {
            writeB(new byte[375]);
        }

        private void WriteVisitEvent(EventVisitModel ev)
        {
            PlayerEvent pev = Player._event;
            if (ev != null && (pev.LastVisitSequence1 < ev.checks && pev.NextVisitDate <= int.Parse(DateTime.Now.ToString("yyMMdd")) || pev.LastVisitSequence2 < ev.checks && pev.LastVisitSequence2 != pev.LastVisitSequence1))
            {
                writeUnicode(ev.title, 70);
                writeC((byte)pev.LastVisitSequence1);
                writeC((byte)ev.checks);
                writeD(ev.id);
                writeD(ev.startDate);
                writeD(ev.endDate);
                writeB(new byte[12]);
                for (int i = 0; i < 32; i++)
                {
                    VisitBox box = ev.box[i];
                    writeC((byte)box.RewardCount);
                    writeD(box.reward1.good_id);
                    writeD(box.reward2.good_id);
                }
            }
            else
            {
                writeB(new byte[375]);
            }
        }
    }
}