# Point-Blank-Revolution
Point Blank Revolution is an emulator for client 3.24. This is a project for personal study purposes only, therefore I do not recommend its use to anyone.

# Features
- All the features of the online releases
- Visit events (up-to 32 items)
- New permissions system
- A lot of bug fixes
- Easier shop setups and management

# Bug reports
If you find any problems report them that I will try to correct them as soon as possible.
If you want to contribute, make a pull-request and I will check whether to accept it.

# Changelogs 1.2.0.0-stable
```
- Removed useless logs from battle server (that make my eyes blood)
- Removed top-ups
- Removed pc-cafe (will be coded as vip)
- Removed level-up for rank over 51
- Added plant and defuse duration static in the server (to avoid decimal separator problems, plant and defuse time don't need a configuration)
- Added observer checkbox on room for player with rank GM or MOD (I'll code a system for rank permissions)
- Small bug fixing
- Database and encoding configuration are now readed from 'Data\Database.ini' (to avoid multiple configurations)
- Implemented RCON on gameserver (useful for real-time interaction from website to server)
  - RCON use Fleck (WebSocket) for receive packets
  - RCON can be enabled / disable from configuration
  - RCON have a password that must be sended on packet for confirm that sended packet's are valid
- Cleared auth / game from useless logs
- !! Added weapon synchronization in battle 
- !! Removed "10 minutes remaining" after battle end, maybe I'll code playtime events in the future
- !! Added clan enable / disable from config Auth.ini
- Replaced table 'info_login_configs' with table 'server_settings'
- Replaced table info_basic_items'' with table 'server_inventory_template'
- Replaced table 'info_channels' with table 'channels'
- Replaced table 'info_gameservers' with table 'gameservers'
- Replaced table 'info_cupons_flags' with table 'server_effect_flags'
- Replaced table 'info_missions' with table 'server_cards'
- Replaced table 'info_rank_awards' with table 'server_rank_awards'
- Moved 'Data\Cards\MissionAwards' to database, table 'server_cardsawards'
- Replace tables 'events' with 'serverevents'
- Moved 'Data\Rank\Player.xml' to database, table 'server_ranks'
- Moved 'Data\Rank\Clan.xml' to database, table 'server_clan_ranks'
- Replaced table 'auto_ban' with table 'logs_auto_ban'
- Replaced table 'nick_history' with table 'logs_nick_history'
- Removed table 'gamerules', I'll code tournaments in the future
- Replaced table 'friends' with table 'player_friends'
- Replaced table 'clan_data' with table 'clans'
- Replaced table 'accounts' with table 'players'
- Removed table 'online', not needed, can use players.online and players.state
- Translated 'logs_nick_history' motive from Thai to English
- Fixed channels user count on auth server
- Added attendance check events (up to 31 rewards)
- Added attendance check multi-reward (up to 2 items to choose)
- Added settings 'enable_greenblood' in table 'server_settings', turn on / off age selection and force normal blood to everyone
- Improvement on BattleManager
- Improvement on GameManager
- Added RconSendMoney (Opcode: 1, Pattern: opcode|rconPassword|userId|moneys)
- Added RconSendPoints (Opcode: 2, Pattern: opcode|rconPassword|userId|points)
- Bunch of small bug fixed
- Now 'access_level' permissions will be readed from table permissions_rights
- Added permissions
- Added permissions_levels (base database will have the follow levels: normal, vip, advanced vip, trial moderator, moderator, gamemaster)
- Added permissions_rights
- Added 'observer_enabled' permission
- Added ':commands %page%' command (permission: commandscommand)
  - Show all the commands available for this user
- Added ':gift %userid% %type% %value%' command (permission: giftcommand)
  - type 'money/moneys/cash', value 'amount': give money to user
  - type 'point/points/gold', value 'amount': give points to user
  - type 'item/good/good', value 'goodid': give good item to user inventory (no characters and masks)
- Added ':update %what%' to update part of the emulator (permission: updatecommand)
  - Can update: 
    - shop (instant for command sender, must login back for other players)
    - events (instant for everyone and force update even on the Auth server)
    - permissions (instant for everyone but fake_rank won't apply without login back, force update even on the Auth Server)
- Quickstarts preferences now are saved in the database
- Removed 'QuickStart.xml'
- Added 'items' table where Battle server pick informations about weapons
- Now damage is limited by items informations on 'items' table
  - Added configuration to allow or deny damage from unlisted items
  - Added configuration to turn off this protection
- Added auto ban for users who use auto-kill on bot mode
- Added auto ban for users who seems to have hack (PROTOCOL_BATTLE_TIMERSYNC_REQ)
  - Can be turned on / off from config
- Added configuration 'ClearToken' to clear Token after login (I recommend leaving it active for safety reasons. The token must be regenerated by the launcher at each start)
- Remove "shop" table, moved to:
  - 'item_goods' for weapons, characters & normal items
  - 'item_goods_effects' for effect items
  - Both the table have now a 'discount' value, it will automatically calculate the price and add the 'sale' icon
  - Now goods don't need multiple line for more days, can just be added with a comma splitting them
```
