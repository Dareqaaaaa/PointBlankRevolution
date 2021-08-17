/*
 Navicat Premium Data Transfer

 Source Server         : pgsql
 Source Server Type    : PostgreSQL
 Source Server Version : 90426
 Source Host           : localhost:5432
 Source Catalog        : pbit_evo
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 90426
 File Encoding         : 65001

 Date: 17/08/2021 17:00:20
*/


-- ----------------------------
-- Sequence structure for account_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."account_id_seq";
CREATE SEQUENCE "public"."account_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for accounts_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."accounts_id_seq";
CREATE SEQUENCE "public"."accounts_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for auto_ban_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auto_ban_seq";
CREATE SEQUENCE "public"."auto_ban_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ban_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ban_seq";
CREATE SEQUENCE "public"."ban_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for channels_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."channels_id_seq";
CREATE SEQUENCE "public"."channels_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for check_event_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."check_event_seq";
CREATE SEQUENCE "public"."check_event_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for clan_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."clan_seq";
CREATE SEQUENCE "public"."clan_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for clans_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."clans_id_seq";
CREATE SEQUENCE "public"."clans_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for contas_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."contas_seq";
CREATE SEQUENCE "public"."contas_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for gameservers_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."gameservers_id_seq";
CREATE SEQUENCE "public"."gameservers_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for gift_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."gift_id_seq";
CREATE SEQUENCE "public"."gift_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for ipsystem_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."ipsystem_id_seq";
CREATE SEQUENCE "public"."ipsystem_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for items_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."items_id_seq";
CREATE SEQUENCE "public"."items_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for jogador_amigo_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."jogador_amigo_seq";
CREATE SEQUENCE "public"."jogador_amigo_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for jogador_inventario_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."jogador_inventario_seq";
CREATE SEQUENCE "public"."jogador_inventario_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for jogador_mensagem_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."jogador_mensagem_seq";
CREATE SEQUENCE "public"."jogador_mensagem_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for loja_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."loja_seq";
CREATE SEQUENCE "public"."loja_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for message_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."message_id_seq";
CREATE SEQUENCE "public"."message_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for player_characters_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."player_characters_id_seq";
CREATE SEQUENCE "public"."player_characters_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for player_eqipment_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."player_eqipment_id_seq";
CREATE SEQUENCE "public"."player_eqipment_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for player_friends_player_account_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."player_friends_player_account_id_seq";
CREATE SEQUENCE "public"."player_friends_player_account_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for player_topups_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."player_topups_seq";
CREATE SEQUENCE "public"."player_topups_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for players_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."players_id_seq";
CREATE SEQUENCE "public"."players_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for storage_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."storage_seq";
CREATE SEQUENCE "public"."storage_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for templates_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."templates_id_seq";
CREATE SEQUENCE "public"."templates_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for ban_history
-- ----------------------------
DROP TABLE IF EXISTS "public"."ban_history";
CREATE TABLE "public"."ban_history" (
  "object_id" int8 NOT NULL DEFAULT nextval('ban_seq'::regclass),
  "provider_id" int8 NOT NULL DEFAULT 0,
  "type" varchar(255) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "value" varchar(255) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "reason" varchar(255) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "start_date" timestamp(6) NOT NULL DEFAULT '2000-01-01 00:00:00'::timestamp without time zone,
  "end_date" timestamp(6) NOT NULL DEFAULT '2000-01-01 00:00:00'::timestamp without time zone
)
;

-- ----------------------------
-- Records of ban_history
-- ----------------------------

-- ----------------------------
-- Table structure for ban_hwid
-- ----------------------------
DROP TABLE IF EXISTS "public"."ban_hwid";
CREATE TABLE "public"."ban_hwid" (
  "hwid" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of ban_hwid
-- ----------------------------

-- ----------------------------
-- Table structure for channels
-- ----------------------------
DROP TABLE IF EXISTS "public"."channels";
CREATE TABLE "public"."channels" (
  "server_id" int4 NOT NULL DEFAULT 0,
  "channel_id" int4 NOT NULL DEFAULT 0,
  "type" int4 NOT NULL DEFAULT 0,
  "announce" varchar COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "online" int4 NOT NULL DEFAULT 0
)
;

-- ----------------------------
-- Records of channels
-- ----------------------------
INSERT INTO "public"."channels" VALUES (1, 0, 1, 'Point Blank Emulator 3.24', 0);
INSERT INTO "public"."channels" VALUES (1, 1, 1, 'Point Blank Emulator 3.24', 0);
INSERT INTO "public"."channels" VALUES (1, 2, 1, 'Point Blank Emulator 3.24', 0);
INSERT INTO "public"."channels" VALUES (1, 3, 1, 'Point Blank Emulator 3.24', 0);
INSERT INTO "public"."channels" VALUES (1, 4, 1, 'Point Blank Emulator 3.24', 0);
INSERT INTO "public"."channels" VALUES (1, 5, 1, 'Point Blank Emulator 3.24', 0);
INSERT INTO "public"."channels" VALUES (1, 6, 1, 'Point Blank Emulator 3.24', 0);
INSERT INTO "public"."channels" VALUES (1, 7, 1, 'Point Blank Emulator 3.24', 0);
INSERT INTO "public"."channels" VALUES (1, 8, 1, 'Point Blank Emulator 3.24', 0);
INSERT INTO "public"."channels" VALUES (1, 9, 4, 'Point Blank Emulator 3.24', 0);

-- ----------------------------
-- Table structure for clan_invites
-- ----------------------------
DROP TABLE IF EXISTS "public"."clan_invites";
CREATE TABLE "public"."clan_invites" (
  "clan_id" int4 NOT NULL DEFAULT 0,
  "player_id" int8 NOT NULL DEFAULT 0,
  "dateinvite" int4 NOT NULL DEFAULT 0,
  "text" varchar COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying
)
;

-- ----------------------------
-- Records of clan_invites
-- ----------------------------

-- ----------------------------
-- Table structure for clans
-- ----------------------------
DROP TABLE IF EXISTS "public"."clans";
CREATE TABLE "public"."clans" (
  "clan_id" int4 NOT NULL DEFAULT nextval('clan_seq'::regclass),
  "clan_rank" int4 NOT NULL DEFAULT 0,
  "clan_name" varchar COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "owner_id" int8 NOT NULL DEFAULT 0,
  "logo" int8 NOT NULL DEFAULT 0,
  "color" int4 NOT NULL DEFAULT 0,
  "clan_info" varchar COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "clan_news" varchar COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "create_date" int4 NOT NULL DEFAULT 0,
  "autoridade" int4 NOT NULL DEFAULT 0,
  "limite_rank" int4 NOT NULL DEFAULT 0,
  "limite_idade" int4 NOT NULL DEFAULT 0,
  "limite_idade2" int4 NOT NULL DEFAULT 0,
  "partidas" int4 NOT NULL DEFAULT 0,
  "vitorias" int4 NOT NULL DEFAULT 0,
  "derrotas" int4 NOT NULL DEFAULT 0,
  "pontos" float4 NOT NULL DEFAULT 1000,
  "max_players" int4 NOT NULL DEFAULT 50,
  "clan_exp" int4 NOT NULL DEFAULT 0,
  "best_exp" varchar COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "best_participation" varchar COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "best_wins" varchar COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "best_kills" varchar COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "best_headshot" varchar COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "effect" int4 NOT NULL DEFAULT 0
)
;

-- ----------------------------
-- Records of clans
-- ----------------------------

-- ----------------------------
-- Table structure for gameservers
-- ----------------------------
DROP TABLE IF EXISTS "public"."gameservers";
CREATE TABLE "public"."gameservers" (
  "id" int4 NOT NULL,
  "state" int4 NOT NULL,
  "type" int4 NOT NULL,
  "ip" varchar(255) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "port" int4 NOT NULL,
  "sync_port" int4 NOT NULL,
  "max_players" int4 NOT NULL
)
;

-- ----------------------------
-- Records of gameservers
-- ----------------------------
INSERT INTO "public"."gameservers" VALUES (0, 1, 1, '127.0.0.1', 39190, 1908, 700);
INSERT INTO "public"."gameservers" VALUES (1, 1, 1, '127.0.0.1', 39191, 1909, 700);

-- ----------------------------
-- Table structure for item_goods
-- ----------------------------
DROP TABLE IF EXISTS "public"."item_goods";
CREATE TABLE "public"."item_goods" (
  "item_id" int4 NOT NULL,
  "item_name" varchar(255) COLLATE "pg_catalog"."default",
  "item_consume" int4,
  "counts" varchar(255) COLLATE "pg_catalog"."default",
  "moneys" varchar(255) COLLATE "pg_catalog"."default",
  "points" varchar(255) COLLATE "pg_catalog"."default",
  "item_title" int4 DEFAULT 0,
  "item_icon" int4 DEFAULT 0,
  "item_visible" bool DEFAULT true,
  "price_discount" int4 DEFAULT 0
)
;

-- ----------------------------
-- Records of item_goods
-- ----------------------------
INSERT INTO "public"."item_goods" VALUES (103036, 'Aug A3', 1, '100,200,500', '0,0,0', '10000,15000,30000', 0, 0, 't', 0);
INSERT INTO "public"."item_goods" VALUES (103040, 'Aug A3 D.', 2, '86400,259200,604800,2592000', '100,270,500,1500', '0,0,0,0', 0, 0, 't', 50);
INSERT INTO "public"."item_goods" VALUES (1800047, 'Change Nickname', 1, '1', '1000', '0', 0, 0, 't', 0);
INSERT INTO "public"."item_goods" VALUES (1800051, 'Change Clan Name', 1, '1', '1000', '0', 0, 0, 't', 0);
INSERT INTO "public"."item_goods" VALUES (1800052, 'Change Clan Mark', 1, '1', '1000', '0', 0, 0, 't', 0);
INSERT INTO "public"."item_goods" VALUES (1800055, 'Clan Member +50', 1, '1', '1000', '0', 0, 0, 't', 0);

-- ----------------------------
-- Table structure for item_goods_effects
-- ----------------------------
DROP TABLE IF EXISTS "public"."item_goods_effects";
CREATE TABLE "public"."item_goods_effects" (
  "effect_id" int4 NOT NULL,
  "effect_name" varchar(255) COLLATE "pg_catalog"."default",
  "count_days" varchar(255) COLLATE "pg_catalog"."default",
  "price_moneys" varchar(255) COLLATE "pg_catalog"."default",
  "price_points" varchar(255) COLLATE "pg_catalog"."default",
  "icon" int4 DEFAULT 0,
  "effect_visible" bool DEFAULT true,
  "price_discount" int4 DEFAULT 0
)
;

-- ----------------------------
-- Records of item_goods_effects
-- ----------------------------
INSERT INTO "public"."item_goods_effects" VALUES (1700002, 'Exp 130%', '1,3,7,30,90', '100,270,500,1500,3000', '0,0,0,0,0', 0, 't', 0);
INSERT INTO "public"."item_goods_effects" VALUES (1700026, 'Quick Change Weapon', '1,3,7,30,90', '100,270,500,1500,3000', '0,0,0,0,0', 0, 't', 0);
INSERT INTO "public"."item_goods_effects" VALUES (1700003, 'Exp 150%', '1,3,7,30,90', '100,270,500,1500,3000', '0,0,0,0,0', 0, 't', 0);
INSERT INTO "public"."item_goods_effects" VALUES (1700004, 'Point 130%', '1,3,7,30,90', '100,270,500,1500,3000', '0,0,0,0,0', 0, 't', 0);
INSERT INTO "public"."item_goods_effects" VALUES (1700119, 'Point 150%', '1,3,7,30,90', '100,270,500,1500,3000', '0,0,0,0,0', 0, 't', 0);
INSERT INTO "public"."item_goods_effects" VALUES (1700191, '+1 Smoke', '1,3,7,30,90', '100,270,500,1500,3000', '0,0,0,0,0', 0, 't', 0);
INSERT INTO "public"."item_goods_effects" VALUES (1700040, '+5% HP', '1,3,7,30,90', '100,270,500,1500,3000', '0,0,0,0,0', 0, 't', 0);
INSERT INTO "public"."item_goods_effects" VALUES (1700030, '+5% Defense', '1,3,7,30,90', '100,270,500,1500,3000', '0,0,0,0,0', 0, 't', 0);
INSERT INTO "public"."item_goods_effects" VALUES (1700034, 'C4 Speed Up', '1,3,7,30,90', '100,270,500,1500,3000', '0,0,0,0,0', 0, 't', 0);
INSERT INTO "public"."item_goods_effects" VALUES (1700035, '+1 Grenade', '1,3,7,30,90', '100,270,500,1500,3000', '0,0,0,0,0', 0, 't', 0);
INSERT INTO "public"."item_goods_effects" VALUES (1700027, 'Quick Reload', '1,3,7,30,90', '100,270,500,1500,3000', '0,0,0,0,0', 0, 't', 0);

-- ----------------------------
-- Table structure for item_goods_sets
-- ----------------------------
DROP TABLE IF EXISTS "public"."item_goods_sets";
CREATE TABLE "public"."item_goods_sets" (
  "set_id" int4 NOT NULL,
  "set_name" varchar(255) COLLATE "pg_catalog"."default",
  "visible" bool DEFAULT true
)
;

-- ----------------------------
-- Records of item_goods_sets
-- ----------------------------

-- ----------------------------
-- Table structure for item_goods_sets_items
-- ----------------------------
DROP TABLE IF EXISTS "public"."item_goods_sets_items";
CREATE TABLE "public"."item_goods_sets_items" (
  "set_id" int4 NOT NULL,
  "item_id" int4 NOT NULL,
  "item_name" varchar(255) COLLATE "pg_catalog"."default",
  "item_consume" int4,
  "item_count" int4,
  "price_money" int4,
  "price_points" int4
)
;

-- ----------------------------
-- Records of item_goods_sets_items
-- ----------------------------

-- ----------------------------
-- Table structure for item_repair
-- ----------------------------
DROP TABLE IF EXISTS "public"."item_repair";
CREATE TABLE "public"."item_repair" (
  "item_id" int8 NOT NULL DEFAULT 0,
  "point" int8 NOT NULL DEFAULT 0,
  "cash" int8 NOT NULL DEFAULT 0,
  "quautity" int8 NOT NULL DEFAULT 100,
  "enable" bool NOT NULL DEFAULT false
)
;

-- ----------------------------
-- Records of item_repair
-- ----------------------------
INSERT INTO "public"."item_repair" VALUES (103003, 59, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (103005, 59, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (103041, 0, 15, 100, 't');
INSERT INTO "public"."item_repair" VALUES (103053, 89, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (103057, 89, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (103058, 89, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (103069, 89, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (103116, 59, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (103117, 59, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (103118, 59, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (103153, 63, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (103174, 130, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (103223, 70, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (103268, 85, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (103284, 90, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (103305, 100, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (103306, 81, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (103338, 105, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (103406, 100, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (104001, 59, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (104002, 59, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (104003, 59, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (104004, 59, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (104007, 59, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (104008, 59, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (104009, 59, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (104011, 59, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (104013, 59, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (104027, 0, 15, 100, 't');
INSERT INTO "public"."item_repair" VALUES (104033, 59, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (104038, 0, 6, 100, 't');
INSERT INTO "public"."item_repair" VALUES (104043, 89, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (104059, 59, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (104096, 59, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (104098, 59, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (104099, 59, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (104100, 89, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (104134, 84, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (105001, 59, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (105002, 59, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (105004, 59, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (105005, 89, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (105006, 59, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (105007, 59, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (105011, 89, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (105012, 89, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (105024, 0, 6, 100, 't');
INSERT INTO "public"."item_repair" VALUES (105029, 89, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (105030, 89, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (105031, 90, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (105032, 89, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (105034, 89, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (105035, 89, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (105068, 89, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (106001, 59, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (106003, 89, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (106004, 59, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (106009, 0, 15, 100, 't');
INSERT INTO "public"."item_repair" VALUES (106010, 89, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (106018, 89, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (106019, 89, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (106020, 89, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (106021, 89, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (106043, 140, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (110001, 59, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (110003, 89, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (110004, 89, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (110011, 89, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (202001, 29, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (202002, 29, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (202005, 29, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (202007, 59, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (202010, 0, 9, 100, 't');
INSERT INTO "public"."item_repair" VALUES (202011, 59, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (202021, 59, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (202022, 29, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (202023, 59, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (202026, 59, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (202036, 89, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (202094, 32, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (202102, 59, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (202112, 55, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (213001, 29, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (214001, 29, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (214002, 29, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (214004, 29, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (214007, 29, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (103001, 59, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (103002, 59, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (103013, 89, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (103014, 59, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (103015, 89, 0, 100, 't');
INSERT INTO "public"."item_repair" VALUES (103024, 0, 20, 100, 't');
INSERT INTO "public"."item_repair" VALUES (103025, 0, 15, 100, 't');
INSERT INTO "public"."item_repair" VALUES (103036, 89, 0, 100, 't');

-- ----------------------------
-- Table structure for item_stats
-- ----------------------------
DROP TABLE IF EXISTS "public"."item_stats";
CREATE TABLE "public"."item_stats" (
  "id" int4 NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "loaded_bullet" int4,
  "total_bullet" int4,
  "damage" int4,
  "fire_delay" numeric(255,2),
  "helmet_penetrate" int4,
  "range" numeric(255,2)
)
;

-- ----------------------------
-- Records of item_stats
-- ----------------------------
INSERT INTO "public"."item_stats" VALUES (103002, 'AK-47 DualMag', 30, 240, 33, 0.10, 85, 140.00);
INSERT INTO "public"."item_stats" VALUES (103119, 'AK-47 Elite', 45, 225, 33, 0.09, 85, 160.00);
INSERT INTO "public"."item_stats" VALUES (103078, 'AK-47 DualMag', 30, 240, 33, 0.10, 85, 140.00);
INSERT INTO "public"."item_stats" VALUES (103009, 'AK-47 Gold', 45, 360, 33, 0.10, 85, 140.00);
INSERT INTO "public"."item_stats" VALUES (103054, 'AK-47 Gold', 45, 360, 33, 0.10, 85, 140.00);
INSERT INTO "public"."item_stats" VALUES (103124, 'AK-47 Gold', 45, 360, 33, 0.10, 85, 140.00);
INSERT INTO "public"."item_stats" VALUES (103059, 'AK-47 Non Ext', 30, 90, 33, 0.10, 85, 140.00);
INSERT INTO "public"."item_stats" VALUES (103072, 'AK-47 Silver', 40, 320, 31, 0.10, 85, 140.00);
INSERT INTO "public"."item_stats" VALUES (103122, 'AK-47 PBIC2013', 45, 225, 33, 0.09, 85, 160.00);
INSERT INTO "public"."item_stats" VALUES (103025, 'AK-47 Silver', 40, 320, 33, 0.10, 85, 140.00);
INSERT INTO "public"."item_stats" VALUES (103076, 'AK-47 Silver', 40, 320, 33, 0.10, 85, 140.00);
INSERT INTO "public"."item_stats" VALUES (103221, 'AK-47 SOPMOD Gold', 45, 225, 33, 0.09, 85, 160.00);
INSERT INTO "public"."item_stats" VALUES (103225, 'AK-47 SOPMOD Medical', 45, 225, 33, 0.09, 85, 160.00);
INSERT INTO "public"."item_stats" VALUES (103017, 'AK-47 Silver', 40, 320, 33, 0.10, 85, 140.00);
INSERT INTO "public"."item_stats" VALUES (103086, 'AK-47 Taiwan1', 45, 360, 33, 0.10, 85, 140.00);
INSERT INTO "public"."item_stats" VALUES (103015, 'AK-47 SOPMOD', 30, 150, 33, 0.09, 85, 160.00);
INSERT INTO "public"."item_stats" VALUES (103152, 'AK-47 SOPMOD BR Camo', 45, 225, 33, 0.09, 85, 160.00);
INSERT INTO "public"."item_stats" VALUES (103039, 'AK-47 SOPMOD', 40, 200, 33, 0.09, 85, 160.00);
INSERT INTO "public"."item_stats" VALUES (103074, 'AK-47 SOPMOD', 30, 150, 33, 0.09, 85, 160.00);
INSERT INTO "public"."item_stats" VALUES (103033, 'AK-47 SOPMOD', 30, 150, 33, 0.09, 85, 160.00);
INSERT INTO "public"."item_stats" VALUES (103099, 'AK-47 SOPMOD GRS', 45, 225, 33, 0.09, 85, 160.00);
INSERT INTO "public"."item_stats" VALUES (103041, 'AK-47 SOPMOD KingCobra', 45, 225, 33, 0.09, 85, 160.00);
INSERT INTO "public"."item_stats" VALUES (103126, 'AK-47 SOPMOD KingCobra', 45, 225, 33, 0.09, 85, 160.00);
INSERT INTO "public"."item_stats" VALUES (103101, 'AK-47 SOPMOD PBNC', 45, 225, 33, 0.09, 85, 160.00);
INSERT INTO "public"."item_stats" VALUES (103092, 'AK-47 SOPMOD R', 30, 150, 33, 0.09, 85, 160.00);
INSERT INTO "public"."item_stats" VALUES (103252, 'AK-47 SOPMOD Sakura', 45, 225, 33, 0.09, 85, 160.00);
INSERT INTO "public"."item_stats" VALUES (103058, 'GrenadeLauncher AK47', 45, 225, 33, 0.10, 95, 140.00);
INSERT INTO "public"."item_stats" VALUES (103125, 'GrenadeLauncher AK47', 45, 225, 33, 0.10, 95, 140.00);
INSERT INTO "public"."item_stats" VALUES (103068, 'GrenadeLauncher AK47 RED', 45, 235, 35, 0.10, 95, 140.00);
INSERT INTO "public"."item_stats" VALUES (103115, 'AN-94', 30, 150, 31, 0.08, 85, 160.00);
INSERT INTO "public"."item_stats" VALUES (103167, 'AN94 Gold', 45, 225, 31, 0.08, 85, 160.00);
INSERT INTO "public"."item_stats" VALUES (103036, 'AUG-A3', 30, 150, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103129, 'AUG-A3 BLOODY', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103111, 'AUG A3 BR-Camo', 45, 225, 30, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103224, 'AUG A3 Basketball', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103048, 'AUG-A3 Black', 30, 150, 26, 0.07, 76, 100.00);
INSERT INTO "public"."item_stats" VALUES (103107, 'AUG-A3 Black', 30, 150, 26, 0.07, 76, 100.00);
INSERT INTO "public"."item_stats" VALUES (103093, 'AUG A3 Blaze', 40, 200, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103065, 'AUG A3 Blue', 40, 160, 29, 0.07, 75, 100.00);
INSERT INTO "public"."item_stats" VALUES (103195, 'AUG A3 Brazil', 40, 200, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103155, 'AUG A3 Brazuca', 45, 225, 30, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103228, 'AUG A3 Camo-Soldier', 40, 200, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103227, 'AUG A3 Cobra', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103178, 'AUG A3 EvilCupid', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103217, 'AUG A3 Dark-Days', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103063, 'AUG A3 ESports', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103075, 'AUG-A3', 30, 150, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103210, 'AUG A3 Egypt', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103028, 'AUG-A3', 30, 150, 26, 0.07, 85, 120.00);
INSERT INTO "public"."item_stats" VALUES (103183, 'AUG A3 GRS2', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103037, 'AUG-A3 Gold', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103130, 'AUG-A3 Gold BLOODY', 45, 225, 30, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103089, 'AUG-A3 Gold', 45, 225, 30, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103071, 'AUG-A3 IC', 40, 200, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103106, 'AUG-A3 ITALIA', 45, 225, 30, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103147, 'AUG A3 Inferno', 45, 225, 30, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103211, 'AUG A3 Jordan', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103131, 'AUG-A3 Latin3', 45, 225, 30, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103161, 'AUG A3 Latin3 Non-Logo', 45, 225, 30, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103207, 'AUG A3 Lebaran2015', 30, 150, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103216, 'AUG A3 Mech', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103184, 'AUG A3 NEWBORN 2015', 45, 225, 30, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103188, 'AUG A3 Ongame', 45, 225, 30, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103120, 'AUG-A3 PBIC2013', 45, 225, 28, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103219, 'AUG A3 PBIC2015', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103214, 'AUG A3 PBNC2015', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103148, 'AUG A3 PBNC5', 45, 225, 30, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103187, 'AUG A3 PBNC6', 45, 255, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103215, 'AUG A3 PBTC2015', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103163, 'AUG A3 PC Cafe', 30, 150, 26, 0.07, 76, 100.00);
INSERT INTO "public"."item_stats" VALUES (103189, 'AUG A3 Redemption', 45, 225, 30, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103251, 'AUG A3 Sakura', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103212, 'AUG A3 Saudi', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103181, 'Aug A3 sheep', 45, 225, 30, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103190, 'AUG A3 Summer', 45, 225, 30, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103112, 'AUG A3 Turkey', 45, 225, 30, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103213, 'AUG A3 UAE', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103222, 'AUG A3 VeraCruz', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103197, 'AUG A3 4Game', 30, 150, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103198, 'AUG A3 4Game-SE', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103245, 'AUG A3 Arena-Deluxe', 30, 150, 26, 0.07, 76, 100.00);
INSERT INTO "public"."item_stats" VALUES (103244, 'AUG A3 Arena-Normal', 30, 150, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103128, 'AUG A3 Azerbaijan', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103160, 'AUG A3 BR 4th Anniversary', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103180, 'AUG A3 CNY-2015', 45, 225, 28, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103173, 'AUG A3 Cangaceiro', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103250, 'AUG A3 Cupid', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103240, 'AUG A3 DFN', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103204, 'AUG A3 Emblem-Argentian', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103200, 'AUG A3 Emblem-Bolivia', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103205, 'AUG A3 Emblem-Chile', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103202, 'AUG A3 Emblem-Columbia', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103201, 'AUG A3 Emblem-Ecuador', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103199, 'AUG A3 Emblem-Mexico', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103206, 'AUG A3 Emblem-Peru', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103203, 'AUG A3 Emblem-Venezuela', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103097, 'AUG-A3 GRS', 45, 225, 30, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103108, 'AUG-A3 GRS EV', 45, 225, 30, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103104, 'AUG-A3 GSL', 45, 225, 30, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103149, 'AUG A3 GSL 2014', 45, 225, 28, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103186, 'AUG A3 GSL2015', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103164, 'AUG A3 G E-Sports', 45, 225, 28, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103232, 'AUG A3 Halloween', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103194, 'AUG A3 Independence', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103171, 'AUG A3 Latin4', 45, 225, 28, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103234, 'AUG A3 Latin5', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103193, 'AUG A3 LionFlame', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103243, 'AUG A3 Monkey', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103235, 'AUG A3 Obsidian', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103159, 'AUG A3 PBIC2014', 45, 225, 28, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103196, 'AUG A3 PBST2015', 45, 225, 28, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103144, 'AUG A3 Russia', 45, 225, 30, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103192, 'AUG A3 Rose', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103233, 'AUG A3 Spy-Normal', 30, 150, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103249, 'AUG A3 Silence', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103238, 'AUG A3 Spy-Deluxe', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103231, 'AUG A3 Steam', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103142, 'AUG A3 1st-Garena', 45, 225, 30, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103109, 'AUG A3 TW1st', 40, 200, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103110, 'AUG A3 TW1st', 40, 200, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103165, 'AUG A3 Toy', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103248, 'AUG A3 VeraCruz2016', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103158, 'AUG A3 WOE', 45, 225, 30, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103241, 'AUG A3 Xmas2015', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103005, 'F2000', 30, 150, 26, 0.07, 76, 120.00);
INSERT INTO "public"."item_stats" VALUES (103116, 'F2000 Reload', 30, 150, 26, 0.07, 76, 120.00);
INSERT INTO "public"."item_stats" VALUES (103032, 'F2000 SL', 40, 200, 26, 0.07, 76, 120.00);
INSERT INTO "public"."item_stats" VALUES (103077, 'F2000 SL', 40, 200, 26, 0.07, 76, 120.00);
INSERT INTO "public"."item_stats" VALUES (103046, 'F2000 SL', 40, 200, 27, 0.07, 76, 120.00);
INSERT INTO "public"."item_stats" VALUES (103049, 'FAMAS G2', 25, 150, 24, 0.06, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103090, 'FAMAS G2M', 25, 150, 24, 0.06, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103050, 'FAMAS G2 Commando', 25, 150, 24, 0.06, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103062, 'FAMAS G2 Commando ESports', 25, 150, 24, 0.06, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103105, 'FAMAS G2 Commando GSL', 40, 240, 24, 0.06, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103064, 'FAMAS G2 Commando Gold', 40, 240, 24, 0.06, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103091, 'famas G2 Commando PBTN', 25, 150, 25, 0.06, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103100, 'FAMAS G2 GRS', 40, 240, 24, 0.06, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103113, 'FAMAS G2 GRS EV', 40, 240, 24, 0.06, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103052, 'FAMAS G2 M203', 25, 150, 24, 0.06, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103051, 'FAMAS G2 Scope', 25, 150, 24, 0.06, 87, 100.00);
INSERT INTO "public"."item_stats" VALUES (103087, 'FAMAS G2 Silver', 30, 195, 24, 0.06, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103143, 'FG42', 20, 100, 45, 0.11, 85, 140.00);
INSERT INTO "public"."item_stats" VALUES (103145, 'FG42 Gold', 30, 150, 45, 0.11, 85, 140.00);
INSERT INTO "public"."item_stats" VALUES (103013, 'G36C', 30, 150, 25, 0.08, 73, 100.00);
INSERT INTO "public"."item_stats" VALUES (103038, 'G36C', 40, 200, 25, 0.08, 73, 100.00);
INSERT INTO "public"."item_stats" VALUES (103229, 'G36C Camo-Soldier', 40, 200, 25, 0.08, 73, 100.00);
INSERT INTO "public"."item_stats" VALUES (103146, 'G36C Elite', 45, 225, 29, 0.07, 73, 100.00);
INSERT INTO "public"."item_stats" VALUES (103027, 'G36C', 30, 150, 25, 0.08, 73, 100.00);
INSERT INTO "public"."item_stats" VALUES (103067, 'G36C NON EX', 30, 90, 25, 0.08, 73, 100.00);
INSERT INTO "public"."item_stats" VALUES (103029, 'G36C Silver', 40, 200, 25, 0.08, 73, 100.00);
INSERT INTO "public"."item_stats" VALUES (103034, 'G36C Silver', 30, 150, 25, 0.08, 73, 100.00);
INSERT INTO "public"."item_stats" VALUES (103031, 'G36C Silver', 30, 150, 25, 0.08, 73, 100.00);
INSERT INTO "public"."item_stats" VALUES (103102, 'HK417 12', 30, 150, 33, 0.08, 85, 160.00);
INSERT INTO "public"."item_stats" VALUES (103168, 'HK417 12 Gold', 45, 225, 33, 0.08, 85, 160.00);
INSERT INTO "public"."item_stats" VALUES (103004, 'K-2', 30, 90, 27, 0.08, 55, 140.00);
INSERT INTO "public"."item_stats" VALUES (103047, 'K-2', 30, 90, 27, 0.08, 79, 140.00);
INSERT INTO "public"."item_stats" VALUES (103011, 'K201', 30, 90, 27, 0.08, 79, 140.00);
INSERT INTO "public"."item_stats" VALUES (103236, 'K2C', 30, 150, 28, 0.07, 80, 140.00);
INSERT INTO "public"."item_stats" VALUES (103237, 'K2C Gold', 45, 225, 28, 0.07, 80, 140.00);
INSERT INTO "public"."item_stats" VALUES (103223, 'M14-EBR', 20, 100, 42, 0.13, 95, 140.00);
INSERT INTO "public"."item_stats" VALUES (103239, 'M14-EBR Gold', 30, 150, 42, 0.13, 95, 140.00);
INSERT INTO "public"."item_stats" VALUES (103045, 'M4-SR16-FC', 50, 250, 26, 0.07, 76, 100.00);
INSERT INTO "public"."item_stats" VALUES (103042, 'M4-SR16-LV1', 50, 250, 26, 0.07, 76, 100.00);
INSERT INTO "public"."item_stats" VALUES (103082, 'M4-SR16-LV1', 50, 250, 26, 0.07, 76, 100.00);
INSERT INTO "public"."item_stats" VALUES (103043, 'M4-SR16-LV2', 50, 250, 26, 0.07, 76, 100.00);
INSERT INTO "public"."item_stats" VALUES (103083, 'M4-SR16-LV2', 50, 250, 26, 0.07, 76, 100.00);
INSERT INTO "public"."item_stats" VALUES (103044, 'M4-SR16-LV3', 50, 250, 26, 0.07, 76, 100.00);
INSERT INTO "public"."item_stats" VALUES (103084, 'M4-SR16-LV3', 50, 250, 26, 0.07, 76, 100.00);
INSERT INTO "public"."item_stats" VALUES (103114, 'M4A1 Elite', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103079, 'M4A1 Scope2', 30, 150, 26, 0.07, 76, 100.00);
INSERT INTO "public"."item_stats" VALUES (103103, 'M4-SR16-FC', 50, 250, 26, 0.07, 76, 100.00);
INSERT INTO "public"."item_stats" VALUES (103098, 'M4A1 GRS', 45, 225, 26, 0.07, 76, 100.00);
INSERT INTO "public"."item_stats" VALUES (103208, 'M4A1 GRS EV', 45, 225, 26, 0.07, 76, 100.00);
INSERT INTO "public"."item_stats" VALUES (103024, 'M4A1 Gold', 45, 225, 26, 0.07, 76, 100.00);
INSERT INTO "public"."item_stats" VALUES (103023, 'M4A1 Gold', 45, 225, 26, 0.07, 76, 100.00);
INSERT INTO "public"."item_stats" VALUES (103121, 'M4A1 PBIC2013', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103010, 'M4A1 SE', 45, 225, 26, 0.07, 76, 100.00);
INSERT INTO "public"."item_stats" VALUES (103127, 'M4A1 SE', 45, 225, 26, 0.07, 76, 100.00);
INSERT INTO "public"."item_stats" VALUES (103080, 'M4A1 SE', 45, 225, 26, 0.07, 76, 100.00);
INSERT INTO "public"."item_stats" VALUES (103003, 'M4A1 Scope2', 30, 150, 26, 0.07, 76, 100.00);
INSERT INTO "public"."item_stats" VALUES (103021, 'M4A1 Silver', 40, 200, 26, 0.07, 76, 100.00);
INSERT INTO "public"."item_stats" VALUES (103081, 'M4A1 Silver', 40, 200, 26, 0.07, 76, 100.00);
INSERT INTO "public"."item_stats" VALUES (103022, 'M4A1 White', 30, 150, 26, 0.07, 76, 100.00);
INSERT INTO "public"."item_stats" VALUES (103055, 'M4A1 White', 30, 150, 26, 0.07, 76, 100.00);
INSERT INTO "public"."item_stats" VALUES (103060, 'M4 NON EXT', 30, 90, 26, 0.07, 76, 100.00);
INSERT INTO "public"."item_stats" VALUES (103053, 'Pindad SS2 V4', 30, 120, 27, 0.07, 82, 75.00);
INSERT INTO "public"."item_stats" VALUES (103061, 'Pindad SS SS2-V4 ParaSniper Gold', 45, 180, 27, 0.07, 82, 75.00);
INSERT INTO "public"."item_stats" VALUES (103156, 'Pindad SS2 V4 Gold', 45, 180, 27, 0.07, 82, 75.00);
INSERT INTO "public"."item_stats" VALUES (103118, 'Pindad SS2 V4 Reload', 30, 150, 26, 0.07, 82, 100.00);
INSERT INTO "public"."item_stats" VALUES (103226, 'SC-2010 Medical', 45, 225, 30, 0.08, 85, 105.00);
INSERT INTO "public"."item_stats" VALUES (103191, 'SC-2010 Rose', 45, 225, 30, 0.08, 85, 105.00);
INSERT INTO "public"."item_stats" VALUES (103242, 'SC-2010 Xmas2015', 45, 225, 30, 0.08, 85, 105.00);
INSERT INTO "public"."item_stats" VALUES (103069, 'SCAR-H CQC', 20, 100, 29, 0.10, 76, 80.00);
INSERT INTO "public"."item_stats" VALUES (103094, 'SCAR-L Cabine', 30, 150, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103175, 'SCAR-L Cabine', 40, 200, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103170, 'SCAR-L Cabine Gold', 45, 225, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103096, 'SCAR-L FC', 30, 150, 26, 0.07, 95, 100.00);
INSERT INTO "public"."item_stats" VALUES (103218, 'SCAR-L FC PBNC2015 US', 45, 225, 26, 0.07, 95, 100.00);
INSERT INTO "public"."item_stats" VALUES (103095, 'SCAR-L Recon', 30, 150, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103176, 'SCAR-L Recon', 40, 200, 26, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103088, 'SCAR-H LB sniper', 30, 150, 26, 0.07, 100, 100.00);
INSERT INTO "public"."item_stats" VALUES (103070, 'SCAR-H Std Sil', 30, 150, 26, 0.07, 76, 100.00);
INSERT INTO "public"."item_stats" VALUES (103153, 'SC-2010', 30, 150, 30, 0.08, 85, 105.00);
INSERT INTO "public"."item_stats" VALUES (103154, 'SC-2010 Gold', 45, 225, 30, 0.08, 85, 105.00);
INSERT INTO "public"."item_stats" VALUES (103185, 'SC-2010 NEWBORN 2015', 45, 225, 30, 0.08, 85, 105.00);
INSERT INTO "public"."item_stats" VALUES (103166, 'SC-2010', 40, 200, 30, 0.08, 85, 105.00);
INSERT INTO "public"."item_stats" VALUES (103014, 'SG550 SE', 45, 225, 30, 0.09, 82, 160.00);
INSERT INTO "public"."item_stats" VALUES (103035, 'SG550 SE', 40, 200, 30, 0.09, 82, 160.00);
INSERT INTO "public"."item_stats" VALUES (103001, 'SG550 DotSight', 30, 150, 30, 0.09, 82, 160.00);
INSERT INTO "public"."item_stats" VALUES (103018, 'SG550 MB', 30, 150, 30, 0.09, 82, 160.00);
INSERT INTO "public"."item_stats" VALUES (103030, 'SG550 MB', 30, 150, 30, 0.09, 82, 160.00);
INSERT INTO "public"."item_stats" VALUES (103066, 'SG550 NON EX', 30, 90, 30, 0.09, 82, 160.00);
INSERT INTO "public"."item_stats" VALUES (103026, 'SG550 MB', 30, 150, 30, 0.09, 82, 160.00);
INSERT INTO "public"."item_stats" VALUES (103117, 'SG550 Reload', 30, 150, 33, 0.09, 82, 160.00);
INSERT INTO "public"."item_stats" VALUES (103073, 'SG550 SE', 45, 225, 30, 0.09, 82, 160.00);
INSERT INTO "public"."item_stats" VALUES (103019, 'SG550 Silver', 40, 200, 30, 0.09, 82, 160.00);
INSERT INTO "public"."item_stats" VALUES (103056, 'SG550 Silver', 40, 200, 30, 0.09, 82, 160.00);
INSERT INTO "public"."item_stats" VALUES (103020, 'SG550 White', 30, 150, 30, 0.09, 82, 160.00);
INSERT INTO "public"."item_stats" VALUES (103172, 'Snow-ball Blaster', 30, 150, 1, 0.07, 40, 45.00);
INSERT INTO "public"."item_stats" VALUES (103123, 'TAR-21', 30, 180, 25, 0.06, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103151, 'TAR-21 BR Camo', 45, 225, 25, 0.06, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103169, 'TAR-21 Gold', 45, 225, 25, 0.06, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103150, 'TAR-21 Midnight', 40, 225, 25, 0.06, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103162, 'Tar-21 Midnight Non-Logo', 40, 225, 25, 0.06, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103182, 'TAR-21 Sheep', 45, 225, 25, 0.06, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (103057, 'vz52', 15, 75, 56, 0.16, 73, 160.00);
INSERT INTO "public"."item_stats" VALUES (103209, 'Vz52 Black-Pearl', 23, 115, 56, 0.16, 73, 160.00);
INSERT INTO "public"."item_stats" VALUES (103174, 'XM8', 30, 150, 25, 0.07, 73, 100.00);
INSERT INTO "public"."item_stats" VALUES (103177, 'XM8 Gold', 45, 225, 25, 0.07, 73, 100.00);
INSERT INTO "public"."item_stats" VALUES (5009001, 'C4', 1, 1, 100, 5.00, 100, 35.00);
INSERT INTO "public"."item_stats" VALUES (5009002, 'C4', 1, 1, 100, 5.00, 100, 35.00);
INSERT INTO "public"."item_stats" VALUES (5009016, 'CrownWatermelon', 1, 1, 100, 5.00, 100, 35.00);
INSERT INTO "public"."item_stats" VALUES (5009004, 'DummyLV1', 1, 1, 90, 5.00, 100, 35.00);
INSERT INTO "public"."item_stats" VALUES (5009005, 'DummyLV2', 1, 1, 100, 5.00, 100, 35.00);
INSERT INTO "public"."item_stats" VALUES (5009006, 'DummyLV3', 1, 1, 100, 5.00, 100, 35.00);
INSERT INTO "public"."item_stats" VALUES (5009007, 'DummyLV4', 1, 1, 100, 5.00, 100, 35.00);
INSERT INTO "public"."item_stats" VALUES (5009003, 'DummyLV1', 1, 1, 100, 5.00, 100, 35.00);
INSERT INTO "public"."item_stats" VALUES (5009009, 'SentryGunLV1', 1, 1, 100, 5.00, 100, 35.00);
INSERT INTO "public"."item_stats" VALUES (5009010, 'SentryGunLV2', 1, 1, 100, 5.00, 100, 35.00);
INSERT INTO "public"."item_stats" VALUES (5009011, 'SentryGunLV3', 1, 1, 100, 5.00, 100, 35.00);
INSERT INTO "public"."item_stats" VALUES (5009012, 'SentryGunLV4', 1, 1, 100, 5.00, 100, 35.00);
INSERT INTO "public"."item_stats" VALUES (5009008, 'SentryGunLV1', 1, 1, 100, 5.00, 100, 35.00);
INSERT INTO "public"."item_stats" VALUES (5009015, 'SkillShop', 1, 1, 100, 5.00, 100, 35.00);
INSERT INTO "public"."item_stats" VALUES (5009013, 'SupplyAmmo', 1, 1, 100, 5.00, 100, 35.00);
INSERT INTO "public"."item_stats" VALUES (5009014, 'SupplyHP', 1, 1, 100, 5.00, 100, 35.00);
INSERT INTO "public"."item_stats" VALUES (301022, 'Compound Bow Blue Arrow', 3, 3, 47, 1.00, 75, 120.00);
INSERT INTO "public"."item_stats" VALUES (411023, 'Compound Bow Blue GrenadeArrow', 3, 3, 0, 0.50, 100, 20.00);
INSERT INTO "public"."item_stats" VALUES (411022, 'Compound Bow Blue GrenadeArrow', 1, 1, 80, 0.50, 95, 20.00);
INSERT INTO "public"."item_stats" VALUES (411020, 'Compound Bow Blue GrenadeArrow', 1, 1, 0, 0.50, 94, 20.00);
INSERT INTO "public"."item_stats" VALUES (411021, 'Compound Bow Blue GrenadeArrow', 1, 1, 1, 0.50, 94, 20.00);
INSERT INTO "public"."item_stats" VALUES (234001, 'Compound Bow', 10, 10, 47, 1.00, 85, 60.00);
INSERT INTO "public"."item_stats" VALUES (234005, 'Compound Bow Bl', 10, 10, 48, 1.00, 85, 60.00);
INSERT INTO "public"."item_stats" VALUES (234004, 'Compound Bow Blue', 15, 15, 48, 0.09, 85, 60.00);
INSERT INTO "public"."item_stats" VALUES (234003, 'Compound Bow Gold', 15, 15, 47, 0.09, 85, 60.00);
INSERT INTO "public"."item_stats" VALUES (234002, 'Compound Bow Sl', 13, 13, 47, 0.09, 85, 60.00);
INSERT INTO "public"."item_stats" VALUES (119010, 'M-7', 0, 0, 40, 0.40, 43, 2.00);
INSERT INTO "public"."item_stats" VALUES (119011, 'M-7', 0, 0, 40, 0.80, 43, 8.00);
INSERT INTO "public"."item_stats" VALUES (119021, 'M-7', 0, 0, 85, 0.40, 43, 2.00);
INSERT INTO "public"."item_stats" VALUES (119022, 'M-7', 0, 0, 120, 0.80, 43, 9.50);
INSERT INTO "public"."item_stats" VALUES (119015, 'M-7', 0, 0, 70, 0.40, 43, 2.00);
INSERT INTO "public"."item_stats" VALUES (119016, 'M-7', 0, 0, 120, 0.80, 43, 8.00);
INSERT INTO "public"."item_stats" VALUES (119017, 'M-7', 0, 0, 0, 0.40, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (119018, 'M-7', 0, 0, 60, 0.40, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (119019, 'M-7', 0, 0, 55, 0.40, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (119020, 'M-7', 0, 0, 40, 0.40, 43, 100.00);
INSERT INTO "public"."item_stats" VALUES (119013, 'M-7', 0, 0, 30, 0.40, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (119012, 'M-7', 0, 0, 70, 0.40, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (119001, 'M-7', 0, 0, 70, 0.40, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (119023, 'M-7', 0, 0, 0, 0.40, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (119024, 'M-7', 0, 0, 70, 0.40, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (119002, 'M-7', 0, 0, 30, 0.40, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (119014, 'M-7', 0, 0, 55, 0.40, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (119007, 'M-7', 0, 0, 25, 0.40, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (119025, 'M-7', 0, 0, 90, 0.40, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (119026, 'M-7', 0, 0, 60, 0.40, 43, 100.00);
INSERT INTO "public"."item_stats" VALUES (119006, 'M-7', 0, 0, 10, 0.40, 43, 100.00);
INSERT INTO "public"."item_stats" VALUES (119003, 'M-7', 0, 0, 100, 0.40, 43, 3.50);
INSERT INTO "public"."item_stats" VALUES (119005, 'M-7', 0, 0, 200, 0.40, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (119004, 'M-7', 0, 0, 20, 0.40, 43, 30.00);
INSERT INTO "public"."item_stats" VALUES (119008, 'M-7', 0, 0, 25, 0.80, 43, 6.00);
INSERT INTO "public"."item_stats" VALUES (119009, 'M-7', 0, 0, 10, 0.00, 43, 1.70);
INSERT INTO "public"."item_stats" VALUES (119027, 'M-7', 0, 0, 55, 0.00, 43, 1.70);
INSERT INTO "public"."item_stats" VALUES (135001, 'Cerberus Shotgun', 36, 36, 44, 1.50, 30, 65.00);
INSERT INTO "public"."item_stats" VALUES (213008, 'ColtPython Black-Pearl', 11, 44, 47, 0.29, 79, 45.00);
INSERT INTO "public"."item_stats" VALUES (214002, 'DesertEagle Gold', 14, 42, 28, 0.35, 58, 45.00);
INSERT INTO "public"."item_stats" VALUES (214006, 'DesertEagle Gold', 18, 54, 28, 0.35, 58, 45.00);
INSERT INTO "public"."item_stats" VALUES (214004, 'DesertEagle Gold', 21, 63, 28, 0.35, 58, 45.00);
INSERT INTO "public"."item_stats" VALUES (214010, 'DesertEagle Gold', 21, 63, 28, 0.35, 58, 45.00);
INSERT INTO "public"."item_stats" VALUES (214015, 'DesertEagle BR Camo', 21, 63, 28, 0.35, 58, 45.00);
INSERT INTO "public"."item_stats" VALUES (214009, 'DesertEagle Gold', 14, 42, 28, 0.35, 58, 45.00);
INSERT INTO "public"."item_stats" VALUES (214011, 'DesertEagle GRS', 21, 63, 28, 0.35, 58, 45.00);
INSERT INTO "public"."item_stats" VALUES (214016, 'DesertEagle G E-Sports', 21, 63, 28, 0.35, 58, 45.00);
INSERT INTO "public"."item_stats" VALUES (315003, 'BoneKnife', 0, 0, 49, 1.20, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (315010, 'BoneKnife Camo-Soldier', 0, 0, 49, 1.20, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (315005, 'BoneKnife GRS', 0, 0, 49, 1.20, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (315007, 'BoneKnife GRS2', 0, 0, 49, 1.20, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (315009, 'BoneKnife PBNC2015', 0, 0, 49, 1.20, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (315008, 'Kunai Dual', 10, 10, 65, 0.05, 60, 1.70);
INSERT INTO "public"."item_stats" VALUES (118004, 'Uzi', 60, 300, 19, 0.08, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118006, 'Uzi Micro', 60, 300, 15, 0.07, 80, 56.00);
INSERT INTO "public"."item_stats" VALUES (118009, 'Uzi Micro', 60, 300, 14, 0.07, 80, 55.00);
INSERT INTO "public"."item_stats" VALUES (118011, 'Uzi Micro SL', 78, 390, 14, 0.07, 80, 55.00);
INSERT INTO "public"."item_stats" VALUES (118005, 'Uzi Mini', 60, 300, 17, 0.07, 80, 58.00);
INSERT INTO "public"."item_stats" VALUES (118013, 'Uzi Mini Gold', 80, 400, 17, 0.07, 80, 58.00);
INSERT INTO "public"."item_stats" VALUES (118008, 'Uzi Mini', 60, 300, 16, 0.07, 80, 57.00);
INSERT INTO "public"."item_stats" VALUES (118007, 'Uzi', 60, 300, 18, 0.08, 80, 59.00);
INSERT INTO "public"."item_stats" VALUES (214007, 'HK45 Dual', 20, 60, 21, 0.32, 58, 42.00);
INSERT INTO "public"."item_stats" VALUES (214012, 'HK45 Dual Halloween', 30, 90, 21, 0.32, 58, 42.00);
INSERT INTO "public"."item_stats" VALUES (118001, 'KrissSuperV', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118024, 'KrissSuperV 4th Anniversary', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118068, 'KrissSuperV Basketball', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118012, 'KrissSuperV Batik', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118015, 'KrissSuperV Batik', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118010, 'KrissSuperV Black', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118022, 'KrissSuperV Black', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118035, 'KrissSuperV Brazuca', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118047, 'KrissSuperV CNY-2015', 60, 60, 22, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118036, 'KrissSuperV Champion', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118046, 'KrissSuperV EvilCupid', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118078, 'KrissSuperV Cupid', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118003, 'KrissSuperV', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118073, 'KrissSuperV DFN', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118062, 'KrissSuperV Dark-Days', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118018, 'KrissSuperV', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118014, 'KrissSuperV ESports', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118020, 'KrissSuperV GRS', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118048, 'KrissSuperV GRS2', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118023, 'KrissSuperV GRS EV', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118021, 'KrissSuperV GSL', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118031, 'KrissSuperV GSL 2014', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118041, 'KrissSuperV G E-Sports', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118002, 'KrissSuperV G', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118071, 'KrissSuperV Halloween', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118055, 'KrissSuperV Harimau', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118017, 'KrissSuperV IC', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118030, 'KrissSuperV Inferno', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118061, 'KrissSuperV Mech', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118032, 'KrissSuperV Midnight', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118038, 'KrissSuperV Midnight Non-Logo', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118077, 'KrissSuperV Monkey', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118049, 'KrissSuperV NEWBORN 2015', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118072, 'KrissSuperV Obsidian', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118052, 'Kriss S V Ongame', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118025, 'KrissSuperV PBIC2013', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118064, 'KrissSuperV PBIC2015', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118059, 'KrissSuperV PBNC2015', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118051, 'KrissSuperV Silence PBNC6', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118040, 'KrissSuperV PBSC2014', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118060, 'KrissSuperV PBTC2015', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118019, 'Kriss S V PBTN', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118039, 'KrissSuperV PC-Cafe', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118029, 'KrissSuperV Russia', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118058, 'KrissSuperV Red', 60, 60, 22, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118053, 'KrissSuperV Redemption', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118026, 'KrissSuperV Silence', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118079, 'KrissSuperV Sakura', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118067, 'KrissSuperV Sheep', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118070, 'Kriss S V Steam', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118054, 'KrissSuperV Summer', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118028, 'KrissSuperV 1st-Garena', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118042, 'KrissSuperV Toy', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118027, 'KrissSuperV Turkey', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118016, 'Kriss Vector SV', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118037, 'KrissSuperV WOE', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118045, 'KrissSuperV Xmas', 60, 60, 22, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118075, 'KrissSuperV Xmas2015', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (315001, 'M-9', 0, 0, 45, 1.20, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (315002, 'M-9', 0, 0, 45, 1.20, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (315004, 'M-9', 0, 0, 45, 1.20, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (315006, 'M-9 PBNC', 0, 0, 45, 1.20, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (315011, 'M-9 VeraCruz2016', 0, 0, 45, 1.20, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (214001, 'MK23', 24, 72, 19, 0.30, 58, 40.00);
INSERT INTO "public"."item_stats" VALUES (214005, 'MK23', 32, 98, 19, 0.30, 58, 40.00);
INSERT INTO "public"."item_stats" VALUES (214008, 'MK23', 24, 72, 19, 0.30, 58, 40.00);
INSERT INTO "public"."item_stats" VALUES (118065, 'OA-93 Cobra', 60, 60, 22, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118066, 'OA-93 Medical', 60, 60, 22, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118076, 'OA-93 Xmas2015', 60, 60, 22, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118033, 'OA-93', 60, 60, 22, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118069, 'OA-93 Basketball', 60, 60, 22, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118074, 'OA-93 DFN', 60, 60, 22, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118050, 'OA-93 GSL2015', 60, 60, 22, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118034, 'OA-93 Gold', 60, 60, 22, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118056, 'OA-93 Independence', 60, 60, 22, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118063, 'OA-93 PBNC2015 US', 60, 60, 22, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118057, 'OA-93 PBST2015', 60, 60, 22, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118044, 'OA-93 Xmas', 60, 60, 23, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (118043, 'OA-93', 60, 60, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (213001, 'P99', 12, 48, 20, 0.16, 55, 40.00);
INSERT INTO "public"."item_stats" VALUES (213003, 'P99', 16, 64, 20, 0.16, 55, 40.00);
INSERT INTO "public"."item_stats" VALUES (213006, 'P99', 16, 64, 20, 0.16, 55, 40.00);
INSERT INTO "public"."item_stats" VALUES (213005, 'P99', 12, 48, 20, 0.16, 55, 40.00);
INSERT INTO "public"."item_stats" VALUES (213007, 'P99 Reload', 12, 48, 23, 0.16, 55, 40.00);
INSERT INTO "public"."item_stats" VALUES (213002, 'P99 Silver', 16, 64, 20, 0.16, 55, 40.00);
INSERT INTO "public"."item_stats" VALUES (213004, 'P99 Silver', 16, 64, 20, 0.16, 55, 40.00);
INSERT INTO "public"."item_stats" VALUES (214017, 'Scorpion Vz61', 40, 160, 16, 0.08, 75, 50.00);
INSERT INTO "public"."item_stats" VALUES (214018, 'Scorpion Vz61 Gold', 60, 240, 16, 0.08, 75, 50.00);
INSERT INTO "public"."item_stats" VALUES (411001, 'GrenadeShell', 1, 0, 65, 0.50, 95, 30.00);
INSERT INTO "public"."item_stats" VALUES (411008, 'GrenadeShell', 1, 0, 65, 0.50, 95, 30.00);
INSERT INTO "public"."item_stats" VALUES (411019, 'GrenadeShell', 1, 0, 65, 0.50, 95, 30.00);
INSERT INTO "public"."item_stats" VALUES (411013, 'GrenadeShell', 1, 0, 65, 0.50, 95, 30.00);
INSERT INTO "public"."item_stats" VALUES (411002, 'GrenadeShell', 1, 2, 65, 0.50, 95, 30.00);
INSERT INTO "public"."item_stats" VALUES (411026, 'GrenadeShell', 1, 0, 0, 0.50, 95, 30.00);
INSERT INTO "public"."item_stats" VALUES (411027, 'GrenadeShell', 1, 0, 0, 0.50, 95, 30.00);
INSERT INTO "public"."item_stats" VALUES (411007, 'GrenadeShell', 1, 0, 65, 0.50, 95, 30.00);
INSERT INTO "public"."item_stats" VALUES (411014, 'GrenadeShell', 1, 0, 50, 0.50, 95, 30.00);
INSERT INTO "public"."item_stats" VALUES (411025, 'GrenadeShell', 1, 0, 50, 0.50, 95, 30.00);
INSERT INTO "public"."item_stats" VALUES (411011, 'GrenadeShell', 1, 0, 42, 0.50, 95, 30.00);
INSERT INTO "public"."item_stats" VALUES (411015, 'GrenadeShell', 1, 0, 65, 0.50, 95, 30.00);
INSERT INTO "public"."item_stats" VALUES (411006, 'GrenadeShell', 1, 0, 65, 0.50, 95, 30.00);
INSERT INTO "public"."item_stats" VALUES (411005, 'GrenadeShell', 1, 0, 65, 0.50, 95, 30.00);
INSERT INTO "public"."item_stats" VALUES (411012, 'GrenadeShell', 1, 0, 25, 0.60, 95, 30.00);
INSERT INTO "public"."item_stats" VALUES (411024, 'GrenadeShell', 1, 0, 50, 0.50, 95, 30.00);
INSERT INTO "public"."item_stats" VALUES (411009, 'PoisonGrenade', 1, 0, 20, 0.50, 95, 20.00);
INSERT INTO "public"."item_stats" VALUES (411017, 'GrenadeShell', 1, 0, 65, 0.50, 95, 30.00);
INSERT INTO "public"."item_stats" VALUES (411028, 'GrenadeShell', 1, 0, 65, 0.50, 95, 30.00);
INSERT INTO "public"."item_stats" VALUES (411004, 'RPG7Shell', 1, 0, 2100, 0.50, 95, 30.00);
INSERT INTO "public"."item_stats" VALUES (411003, 'RPG7Shell', 1, 0, 1500, 0.50, 95, 30.00);
INSERT INTO "public"."item_stats" VALUES (411016, 'RPG7Shell', 1, 0, 2100, 0.50, 95, 30.00);
INSERT INTO "public"."item_stats" VALUES (323007, 'BallockKnuckle', 0, 0, 35, 0.10, 50, 1.65);
INSERT INTO "public"."item_stats" VALUES (323001, 'BarefistKnuckle', 0, 0, 32, 0.10, 50, 1.40);
INSERT INTO "public"."item_stats" VALUES (323002, 'BlackKnuckle', 0, 0, 35, 0.10, 50, 1.50);
INSERT INTO "public"."item_stats" VALUES (323003, 'BrassKnuckle', 0, 0, 35, 0.10, 50, 1.50);
INSERT INTO "public"."item_stats" VALUES (323009, 'Garenaknuckle', 0, 0, 35, 0.10, 50, 1.50);
INSERT INTO "public"."item_stats" VALUES (323005, 'PumpkinKnuckle', 0, 0, 35, 0.10, 50, 1.50);
INSERT INTO "public"."item_stats" VALUES (323004, 'SilverKnuckle', 0, 0, 37, 0.10, 50, 1.50);
INSERT INTO "public"."item_stats" VALUES (323006, 'SpikedKnuckle', 0, 0, 35, 0.10, 60, 1.50);
INSERT INTO "public"."item_stats" VALUES (323010, 'Knuckle Holloween', 0, 0, 35, 0.10, 50, 1.50);
INSERT INTO "public"."item_stats" VALUES (110004, 'L86 LSW', 75, 300, 26, 0.07, 76, 120.00);
INSERT INTO "public"."item_stats" VALUES (110010, 'L86 LSW XMAS', 113, 450, 26, 0.07, 76, 120.00);
INSERT INTO "public"."item_stats" VALUES (110005, 'MK46 SteadyAim', 150, 300, 25, 0.08, 79, 120.00);
INSERT INTO "public"."item_stats" VALUES (110009, 'MK46 SteadyAim', 150, 200, 25, 0.08, 79, 120.00);
INSERT INTO "public"."item_stats" VALUES (110002, 'MK46 Silver', 195, 390, 25, 0.08, 79, 120.00);
INSERT INTO "public"."item_stats" VALUES (110001, 'MK46 SteadyAim', 150, 300, 25, 0.08, 79, 120.00);
INSERT INTO "public"."item_stats" VALUES (110003, 'RPD', 100, 300, 33, 0.10, 85, 160.00);
INSERT INTO "public"."item_stats" VALUES (110006, 'RPD', 100, 300, 33, 0.10, 85, 160.00);
INSERT INTO "public"."item_stats" VALUES (110008, 'RPD', 100, 300, 33, 0.10, 85, 160.00);
INSERT INTO "public"."item_stats" VALUES (110007, 'RPD Silver', 130, 390, 33, 0.10, 85, 160.00);
INSERT INTO "public"."item_stats" VALUES (110011, 'Ultimax-100', 100, 200, 28, 0.08, 85, 120.00);
INSERT INTO "public"."item_stats" VALUES (110012, 'Ultimax-100 Gold', 150, 300, 28, 0.08, 85, 120.00);
INSERT INTO "public"."item_stats" VALUES (110013, 'Ultimax-100 Madness', 150, 300, 28, 0.08, 85, 120.00);
INSERT INTO "public"."item_stats" VALUES (301041, 'Arabian sword', 0, 0, 88, 0.55, 56, 2.20);
INSERT INTO "public"."item_stats" VALUES (301049, 'Arabian sword2', 0, 0, 88, 0.55, 56, 2.20);
INSERT INTO "public"."item_stats" VALUES (301082, 'Arabian Sword Midnight', 0, 0, 88, 0.55, 56, 2.20);
INSERT INTO "public"."item_stats" VALUES (301064, 'BadmintonRacket', 0, 0, 88, 0.55, 56, 2.00);
INSERT INTO "public"."item_stats" VALUES (301018, 'BallisticKnife', 5, 5, 60, 0.80, 60, 1.50);
INSERT INTO "public"."item_stats" VALUES (301037, 'BallisticKnife GRS', 5, 5, 60, 0.80, 60, 1.50);
INSERT INTO "public"."item_stats" VALUES (301039, 'Ballistic', 5, 1, 60, 0.80, 60, 70.00);
INSERT INTO "public"."item_stats" VALUES (301020, 'Ballistic', 5, 1, 60, 0.80, 60, 70.00);
INSERT INTO "public"."item_stats" VALUES (301110, 'BallisticKnife Spy-Normal', 5, 5, 60, 0.80, 60, 1.50);
INSERT INTO "public"."item_stats" VALUES (301114, 'BallisticKnife Spy-Deluxe', 5, 5, 60, 0.80, 60, 1.50);
INSERT INTO "public"."item_stats" VALUES (301116, 'Ballistic Spy-Deluxe', 5, 1, 60, 0.80, 60, 70.00);
INSERT INTO "public"."item_stats" VALUES (301112, 'Ballistic Spy-Normal', 5, 1, 60, 0.80, 60, 70.00);
INSERT INTO "public"."item_stats" VALUES (301103, 'Bamboo-Runcing', 0, 0, 85, 0.60, 70, 3.00);
INSERT INTO "public"."item_stats" VALUES (301016, 'BoneKnife', 0, 0, 64, 0.40, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (301109, 'BoneKnife Camo-Soldier', 0, 0, 64, 0.40, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (301040, 'BoneKnife GRS', 0, 0, 64, 0.40, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (301075, 'BoneKnife GRS2', 0, 0, 64, 0.40, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (301102, 'BoneKnife PBNC2015', 0, 0, 64, 0.40, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (301122, 'Butterfly Knife', 0, 0, 86, 0.50, 56, 1.50);
INSERT INTO "public"."item_stats" VALUES (301024, 'CandyCane', 0, 0, 40, 0.20, 56, 2.00);
INSERT INTO "public"."item_stats" VALUES (301058, 'ChineseCleaver', 3, 3, 86, 1.00, 46, 1.70);
INSERT INTO "public"."item_stats" VALUES (301073, 'ChineseCleaver CNY-2015', 5, 5, 86, 1.00, 46, 1.70);
INSERT INTO "public"."item_stats" VALUES (301074, 'ChineseCleaver CNY-2015', 5, 5, 86, 1.00, 46, 70.00);
INSERT INTO "public"."item_stats" VALUES (301060, 'ChineseCleaver', 3, 3, 86, 1.00, 46, 70.00);
INSERT INTO "public"."item_stats" VALUES (301061, 'ChineseCleaver', 30, 30, 86, 1.00, 46, 1.70);
INSERT INTO "public"."item_stats" VALUES (301062, 'ChineseCleaver', 30, 30, 86, 1.00, 46, 70.00);
INSERT INTO "public"."item_stats" VALUES (301105, 'Cutlass Black-Pearl', 0, 0, 84, 1.60, 47, 2.00);
INSERT INTO "public"."item_stats" VALUES (301066, 'Death-Scythe', 0, 0, 92, 1.00, 65, 2.85);
INSERT INTO "public"."item_stats" VALUES (301017, 'FangBlade', 0, 0, 88, 0.55, 56, 2.20);
INSERT INTO "public"."item_stats" VALUES (301124, 'FangBlade Arena-Deluxe', 0, 0, 88, 0.55, 56, 2.20);
INSERT INTO "public"."item_stats" VALUES (301123, 'FangBlade Arena-Normal', 0, 0, 88, 0.55, 56, 2.20);
INSERT INTO "public"."item_stats" VALUES (301052, 'FangBlade Brazuca', 0, 0, 88, 0.55, 56, 2.20);
INSERT INTO "public"."item_stats" VALUES (301108, 'Fangblade Cobra', 0, 0, 88, 0.55, 56, 2.20);
INSERT INTO "public"."item_stats" VALUES (301051, 'Fang Blade GSL 2014', 0, 0, 88, 0.55, 56, 2.20);
INSERT INTO "public"."item_stats" VALUES (301057, 'FangBlade Inferno', 0, 0, 88, 0.55, 56, 2.20);
INSERT INTO "public"."item_stats" VALUES (301067, 'FangBlade Latin4', 0, 0, 88, 0.55, 56, 2.20);
INSERT INTO "public"."item_stats" VALUES (301113, 'FangBlade Latin5', 0, 0, 88, 0.55, 56, 2.20);
INSERT INTO "public"."item_stats" VALUES (301077, 'FangBlade NEWBORN 2015', 0, 0, 88, 0.55, 56, 2.20);
INSERT INTO "public"."item_stats" VALUES (301079, 'FangBlade Ongame', 0, 0, 88, 0.55, 56, 2.20);
INSERT INTO "public"."item_stats" VALUES (301050, 'FangBlade PBNC5', 0, 0, 88, 0.55, 56, 2.20);
INSERT INTO "public"."item_stats" VALUES (301078, 'FangBlade PBNC6', 0, 0, 88, 0.55, 56, 2.20);
INSERT INTO "public"."item_stats" VALUES (301094, 'FangBlade PBST2015', 0, 0, 88, 0.55, 56, 2.20);
INSERT INTO "public"."item_stats" VALUES (301127, 'FangBlade Sakura', 0, 0, 88, 0.55, 56, 2.20);
INSERT INTO "public"."item_stats" VALUES (301101, 'Fangblade PBNC2015', 0, 0, 88, 0.55, 56, 2.20);
INSERT INTO "public"."item_stats" VALUES (301025, 'Spetnatz Field Shovel', 2, 2, 108, 0.60, 46, 1.95);
INSERT INTO "public"."item_stats" VALUES (301063, 'Spetnatz Field Shovel', 2, 2, 108, 0.60, 46, 70.00);
INSERT INTO "public"."item_stats" VALUES (301080, 'Spetnatz Field Shovel Royal', 6, 6, 108, 0.60, 46, 1.95);
INSERT INTO "public"."item_stats" VALUES (301081, 'Spetnatz Field Shovel Royal', 6, 6, 108, 0.60, 46, 70.00);
INSERT INTO "public"."item_stats" VALUES (301053, 'FryingPan', 99, 99, 30, 1.00, 46, 1.70);
INSERT INTO "public"."item_stats" VALUES (301054, 'FryingPan', 99, 99, 30, 1.00, 46, 70.00);
INSERT INTO "public"."item_stats" VALUES (301014, 'GH5007', 0, 0, 72, 0.50, 47, 1.90);
INSERT INTO "public"."item_stats" VALUES (301095, 'GH5007 4Game', 0, 0, 72, 0.50, 47, 1.90);
INSERT INTO "public"."item_stats" VALUES (301096, 'GH5007 4Game-SE', 0, 0, 72, 0.50, 47, 1.90);
INSERT INTO "public"."item_stats" VALUES (301093, 'GH5007 Brazil', 0, 0, 72, 0.50, 47, 1.90);
INSERT INTO "public"."item_stats" VALUES (301070, 'GH5007 Cangaceiro', 0, 0, 72, 0.50, 47, 1.90);
INSERT INTO "public"."item_stats" VALUES (301119, 'GH5007 DFN', 0, 0, 72, 0.50, 47, 1.90);
INSERT INTO "public"."item_stats" VALUES (301043, 'GH5007 Gold', 0, 0, 72, 0.50, 47, 1.90);
INSERT INTO "public"."item_stats" VALUES (301044, 'GH5007 PBSC2013', 0, 0, 72, 0.50, 47, 1.90);
INSERT INTO "public"."item_stats" VALUES (301059, 'GH5007 PBSC2013 Non-Logo', 0, 0, 72, 0.50, 47, 1.90);
INSERT INTO "public"."item_stats" VALUES (301084, 'GH5007 Rose', 0, 0, 72, 0.50, 47, 1.90);
INSERT INTO "public"."item_stats" VALUES (301106, 'GH5007 VeraCruz', 0, 0, 72, 0.50, 47, 1.90);
INSERT INTO "public"."item_stats" VALUES (301071, 'Stick Goat', 4, 4, 108, 0.60, 46, 1.95);
INSERT INTO "public"."item_stats" VALUES (301072, 'Stick Goat', 3, 3, 108, 0.60, 46, 70.00);
INSERT INTO "public"."item_stats" VALUES (301098, 'HairDryer', 99, 99, 30, 1.00, 46, 1.70);
INSERT INTO "public"."item_stats" VALUES (301099, 'HairDryer', 1, 1, 30, 1.00, 46, 70.00);
INSERT INTO "public"."item_stats" VALUES (301031, 'Hak', 0, 0, 75, 0.90, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (301003, 'Hak', 0, 0, 75, 0.90, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (301029, 'Hak', 0, 0, 75, 0.90, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (301030, 'Hak', 0, 0, 75, 0.90, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (301045, 'Hak', 0, 0, 75, 0.90, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (301032, 'Hak', 0, 0, 75, 0.90, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (301010, 'Hak', 0, 0, 75, 0.90, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (301069, 'Ice Fork', 0, 0, 86, 0.50, 47, 2.20);
INSERT INTO "public"."item_stats" VALUES (301068, 'Icicles', 0, 0, 75, 0.25, 65, 2.20);
INSERT INTO "public"."item_stats" VALUES (301021, 'Keris', 0, 0, 86, 0.83, 65, 1.70);
INSERT INTO "public"."item_stats" VALUES (301065, 'Keris G E-Sports', 0, 0, 86, 0.83, 65, 1.70);
INSERT INTO "public"."item_stats" VALUES (301104, 'Keris PBIC2015', 0, 0, 88, 0.83, 65, 1.70);
INSERT INTO "public"."item_stats" VALUES (301023, 'Keris SE', 0, 0, 88, 0.83, 65, 1.70);
INSERT INTO "public"."item_stats" VALUES (301047, 'Keris XMAS', 0, 0, 88, 0.83, 65, 1.70);
INSERT INTO "public"."item_stats" VALUES (301004, 'Kukrii', 0, 0, 84, 0.60, 47, 2.00);
INSERT INTO "public"."item_stats" VALUES (301011, 'Kukrii', 0, 0, 84, 0.60, 47, 2.00);
INSERT INTO "public"."item_stats" VALUES (301026, 'Kukrii', 0, 0, 84, 0.60, 47, 2.00);
INSERT INTO "public"."item_stats" VALUES (301046, 'Kukri Turkey', 0, 0, 84, 0.60, 47, 2.00);
INSERT INTO "public"."item_stats" VALUES (301107, 'Kunai Dual', 0, 0, 65, 0.05, 43, 70.00);
INSERT INTO "public"."item_stats" VALUES (301001, 'M-7', 0, 0, 60, 0.40, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (301036, 'M-7', 0, 0, 60, 0.40, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (301117, 'M-7', 0, 0, 60, 0.40, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (301118, 'M-7', 0, 0, 60, 0.40, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (301009, 'M-7 Gold', 0, 0, 60, 0.40, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (301033, 'M-7', 0, 0, 60, 0.40, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (301034, 'M-7', 0, 0, 60, 0.40, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (301035, 'M-7', 0, 0, 60, 0.40, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (301002, 'M-9', 0, 0, 64, 0.40, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (301042, 'M-9 PBNC', 0, 0, 64, 0.40, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (301125, 'M-9 VeraCruz2016', 0, 0, 64, 0.40, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (301090, 'Arabian sword', 0, 0, 35, 0.55, 56, 2.20);
INSERT INTO "public"."item_stats" VALUES (301091, 'Death-Scythe', 0, 0, 70, 1.00, 65, 2.85);
INSERT INTO "public"."item_stats" VALUES (301088, 'FangBlade', 0, 0, 40, 0.55, 56, 2.20);
INSERT INTO "public"."item_stats" VALUES (301092, 'GH5007', 0, 0, 40, 0.50, 47, 1.90);
INSERT INTO "public"."item_stats" VALUES (301089, 'Keris', 0, 0, 35, 0.83, 65, 1.70);
INSERT INTO "public"."item_stats" VALUES (301086, 'Kukrii', 0, 0, 35, 0.60, 47, 2.00);
INSERT INTO "public"."item_stats" VALUES (301085, 'M-7', 0, 0, 30, 0.40, 43, 1.50);
INSERT INTO "public"."item_stats" VALUES (301007, 'MiniAxe', 2, 2, 60, 1.00, 46, 1.70);
INSERT INTO "public"."item_stats" VALUES (301012, 'MiniAxe', 2, 2, 60, 1.00, 46, 1.70);
INSERT INTO "public"."item_stats" VALUES (301006, 'MiniAxe', 1, 1, 60, 1.00, 46, 70.00);
INSERT INTO "public"."item_stats" VALUES (301013, 'MiniAxe', 1, 1, 60, 1.00, 46, 70.00);
INSERT INTO "public"."item_stats" VALUES (301028, 'MiniAxe', 1, 1, 60, 1.00, 46, 70.00);
INSERT INTO "public"."item_stats" VALUES (301008, 'MiniAxe', 2, 2, 60, 1.00, 46, 1.70);
INSERT INTO "public"."item_stats" VALUES (301027, 'MiniAxe', 2, 2, 60, 1.00, 46, 1.70);
INSERT INTO "public"."item_stats" VALUES (301120, 'Stick Monkey', 4, 4, 108, 0.60, 46, 1.95);
INSERT INTO "public"."item_stats" VALUES (301121, 'Stick Monkey', 3, 3, 108, 0.60, 46, 70.00);
INSERT INTO "public"."item_stats" VALUES (117001, 'M197', 300000, 900000, 30, 0.07, 79, 7000.00);
INSERT INTO "public"."item_stats" VALUES (202022, 'Colt45', 7, 28, 25, 0.20, 83, 55.00);
INSERT INTO "public"."item_stats" VALUES (202031, 'Colt45', 7, 28, 25, 0.20, 83, 55.00);
INSERT INTO "public"."item_stats" VALUES (202007, 'ColtPython', 7, 28, 47, 0.29, 79, 45.00);
INSERT INTO "public"."item_stats" VALUES (202080, 'ColtPython Arena-Deluxe', 7, 28, 47, 0.29, 79, 45.00);
INSERT INTO "public"."item_stats" VALUES (202079, 'ColtPython Arena-Normal', 7, 28, 47, 0.29, 79, 45.00);
INSERT INTO "public"."item_stats" VALUES (202060, 'ColtPython Brazil', 7, 28, 47, 0.29, 79, 45.00);
INSERT INTO "public"."item_stats" VALUES (202049, 'ColtPython Brazuca', 11, 44, 47, 0.29, 79, 45.00);
INSERT INTO "public"."item_stats" VALUES (202012, 'ColtPython', 7, 28, 47, 0.29, 79, 45.00);
INSERT INTO "public"."item_stats" VALUES (202017, 'ColtPython Gold', 11, 44, 47, 0.29, 79, 45.00);
INSERT INTO "public"."item_stats" VALUES (202018, 'ColtPython Gold', 14, 53, 47, 0.29, 79, 45.00);
INSERT INTO "public"."item_stats" VALUES (202010, 'ColtPython Gold', 7, 28, 47, 0.29, 79, 45.00);
INSERT INTO "public"."item_stats" VALUES (202076, 'ColtPython Latin5', 11, 44, 47, 0.29, 79, 45.00);
INSERT INTO "public"."item_stats" VALUES (202020, 'ColtPython', 7, 28, 47, 0.29, 79, 45.00);
INSERT INTO "public"."item_stats" VALUES (202067, 'ColtPython PBNC2015', 11, 44, 47, 0.29, 79, 45.00);
INSERT INTO "public"."item_stats" VALUES (202040, 'ColtPython PBNC5', 11, 44, 47, 0.29, 79, 45.00);
INSERT INTO "public"."item_stats" VALUES (202056, 'ColtPython PBNC6', 11, 44, 47, 0.29, 79, 45.00);
INSERT INTO "public"."item_stats" VALUES (202059, 'ColtPython Rose', 11, 44, 47, 0.29, 79, 45.00);
INSERT INTO "public"."item_stats" VALUES (202082, 'ColtPython Sakura', 11, 44, 47, 0.29, 79, 45.00);
INSERT INTO "public"."item_stats" VALUES (202058, 'ColtPython Summer', 11, 44, 47, 0.29, 79, 45.00);
INSERT INTO "public"."item_stats" VALUES (202052, 'ColtPython Toy', 11, 44, 47, 0.29, 79, 45.00);
INSERT INTO "public"."item_stats" VALUES (202072, 'ColtPython VeraCruz', 11, 44, 47, 0.29, 79, 45.00);
INSERT INTO "public"."item_stats" VALUES (202001, 'DesertEagle', 7, 28, 28, 0.29, 79, 45.00);
INSERT INTO "public"."item_stats" VALUES (202048, 'DesertEagle BR Camo', 11, 44, 28, 0.29, 79, 45.00);
INSERT INTO "public"."item_stats" VALUES (202030, 'DesertEagle', 7, 28, 28, 0.29, 79, 45.00);
INSERT INTO "public"."item_stats" VALUES (202032, 'DesertEagle GRS', 11, 44, 28, 0.29, 79, 45.00);
INSERT INTO "public"."item_stats" VALUES (202051, 'DesertEagle G E-Sports', 11, 44, 28, 0.29, 79, 45.00);
INSERT INTO "public"."item_stats" VALUES (202008, 'DesertEagle Gold', 11, 44, 28, 0.29, 79, 45.00);
INSERT INTO "public"."item_stats" VALUES (202064, 'DesertEagle Lebaran2015', 7, 35, 33, 0.29, 79, 45.00);
INSERT INTO "public"."item_stats" VALUES (202057, 'DesertEagle Ongame', 9, 36, 28, 0.29, 79, 45.00);
INSERT INTO "public"."item_stats" VALUES (202005, 'DesertEagle REF', 11, 44, 28, 0.29, 79, 45.00);
INSERT INTO "public"."item_stats" VALUES (202036, 'DesertEagle Reload', 7, 35, 33, 0.29, 79, 45.00);
INSERT INTO "public"."item_stats" VALUES (202011, 'Glock18', 17, 68, 17, 0.09, 55, 45.00);
INSERT INTO "public"."item_stats" VALUES (202021, 'Glock18', 20, 80, 17, 0.09, 55, 45.00);
INSERT INTO "public"."item_stats" VALUES (202062, 'Glock18 4Game', 17, 68, 17, 0.09, 55, 45.00);
INSERT INTO "public"."item_stats" VALUES (202063, 'Glock18 4Game-SE', 25, 100, 17, 0.09, 55, 45.00);
INSERT INTO "public"."item_stats" VALUES (202039, 'Glock18 Azerbaijan', 20, 80, 17, 0.09, 55, 45.00);
INSERT INTO "public"."item_stats" VALUES (202047, 'Glock18 EX BR Camo', 25, 100, 17, 0.09, 55, 45.00);
INSERT INTO "public"."item_stats" VALUES (202071, 'Glock18 Gold', 25, 100, 17, 0.09, 55, 45.00);
INSERT INTO "public"."item_stats" VALUES (202033, 'Glock18 PBNC', 25, 100, 17, 0.09, 55, 45.00);
INSERT INTO "public"."item_stats" VALUES (202061, 'Glock18 PBST2015', 20, 80, 17, 0.09, 55, 45.00);
INSERT INTO "public"."item_stats" VALUES (202037, 'Glock18 Ex Turkey', 20, 80, 17, 0.09, 55, 45.00);
INSERT INTO "public"."item_stats" VALUES (202025, 'HK45 Dual', 10, 30, 22, 0.40, 79, 45.00);
INSERT INTO "public"."item_stats" VALUES (202038, 'HK45 Dual Halloween', 10, 30, 22, 0.40, 79, 45.00);
INSERT INTO "public"."item_stats" VALUES (202023, 'IMI Uzi 9mm', 20, 80, 16, 0.08, 50, 60.00);
INSERT INTO "public"."item_stats" VALUES (202003, 'K5', 12, 48, 17, 0.22, 38, 45.00);
INSERT INTO "public"."item_stats" VALUES (202009, 'K5', 12, 48, 17, 0.22, 55, 45.00);
INSERT INTO "public"."item_stats" VALUES (202024, 'Kriss Vector SDP', 13, 39, 17, 0.07, 55, 40.00);
INSERT INTO "public"."item_stats" VALUES (202074, 'Kriss Vector SDP Camo-Soldier', 17, 51, 17, 0.07, 55, 40.00);
INSERT INTO "public"."item_stats" VALUES (202069, 'Kriss Vector SDP Dark-Days', 20, 60, 17, 0.07, 55, 40.00);
INSERT INTO "public"."item_stats" VALUES (202035, 'MK23 Reload', 12, 48, 23, 0.16, 64, 45.00);
INSERT INTO "public"."item_stats" VALUES (202075, 'MK23 Spy-Normal', 12, 48, 20, 0.16, 64, 45.00);
INSERT INTO "public"."item_stats" VALUES (202002, 'MK23', 12, 48, 20, 0.16, 64, 45.00);
INSERT INTO "public"."item_stats" VALUES (202019, 'MK23', 16, 64, 20, 0.16, 64, 45.00);
INSERT INTO "public"."item_stats" VALUES (202027, 'MK23 SILVER', 16, 64, 20, 0.16, 64, 45.00);
INSERT INTO "public"."item_stats" VALUES (202077, 'MK23 Spy-Deluxe', 16, 64, 20, 0.16, 64, 45.00);
INSERT INTO "public"."item_stats" VALUES (202006, 'P99', 12, 48, 17, 0.16, 55, 40.00);
INSERT INTO "public"."item_stats" VALUES (202073, 'Taurus 454SS Scope Cobra', 8, 40, 75, 0.10, 79, 55.00);
INSERT INTO "public"."item_stats" VALUES (202013, 'Taurus 454SS 2M', 5, 25, 64, 0.10, 79, 45.00);
INSERT INTO "public"."item_stats" VALUES (202014, 'Taurus 454SS 5M', 5, 25, 71, 0.10, 79, 45.00);
INSERT INTO "public"."item_stats" VALUES (202015, 'Taurus 454SS 8M', 5, 25, 75, 0.10, 79, 45.00);
INSERT INTO "public"."item_stats" VALUES (202016, 'Taurus 454SS Scope', 5, 25, 75, 0.10, 79, 50.00);
INSERT INTO "public"."item_stats" VALUES (202068, 'Taurus 454SS Scope Mech', 8, 40, 75, 0.10, 79, 50.00);
INSERT INTO "public"."item_stats" VALUES (202070, 'Taurus 454SS Scope PBIC2015', 8, 40, 75, 0.10, 79, 55.00);
INSERT INTO "public"."item_stats" VALUES (202034, 'Tarus 454SS Scope PBSC2013', 8, 40, 75, 0.10, 79, 55.00);
INSERT INTO "public"."item_stats" VALUES (202050, 'Tarus 454SS Scope PBSC2013 Non-Logo', 8, 40, 75, 0.10, 79, 55.00);
INSERT INTO "public"."item_stats" VALUES (202081, 'Taurus 454SS Scope VeraCruz2016', 8, 40, 75, 0.10, 79, 50.00);
INSERT INTO "public"."item_stats" VALUES (202029, 'GL 06', 1, 3, 50, 0.50, 95, 40.00);
INSERT INTO "public"."item_stats" VALUES (202054, 'GL 06 CNY-2015', 1, 5, 50, 0.50, 95, 40.00);
INSERT INTO "public"."item_stats" VALUES (202026, 'HK69', 1, 3, 42, 0.50, 95, 30.00);
INSERT INTO "public"."item_stats" VALUES (202028, 'M79', 1, 3, 25, 0.60, 95, 45.00);
INSERT INTO "public"."item_stats" VALUES (202053, 'MGL-Snow', 6, 24, 120, 3.00, 90, 70.00);
INSERT INTO "public"."item_stats" VALUES (116002, 'RPG7', 1, 3, 2100, 0.30, 100, 70.00);
INSERT INTO "public"."item_stats" VALUES (116003, 'RPG7', 1, 1, 1000, 0.30, 100, 70.00);
INSERT INTO "public"."item_stats" VALUES (116001, 'RPG7', 1, 1, 2100, 0.30, 100, 70.00);
INSERT INTO "public"."item_stats" VALUES (104096, 'AKS74U Reload', 30, 210, 24, 0.07, 85, 65.00);
INSERT INTO "public"."item_stats" VALUES (104033, 'AKS74U', 30, 210, 26, 0.09, 85, 60.00);
INSERT INTO "public"."item_stats" VALUES (104076, 'AKS74U', 30, 210, 26, 0.09, 85, 60.00);
INSERT INTO "public"."item_stats" VALUES (104193, 'GrenadeLauncher EVO-3', 30, 210, 23, 0.05, 57, 100.00);
INSERT INTO "public"."item_stats" VALUES (104194, 'GrenadeLauncher EVO-3 Gold', 45, 225, 23, 0.05, 57, 100.00);
INSERT INTO "public"."item_stats" VALUES (104006, 'K-1', 30, 120, 23, 0.08, 51, 70.00);
INSERT INTO "public"."item_stats" VALUES (104021, 'K-1 SE', 40, 280, 23, 0.08, 73, 70.00);
INSERT INTO "public"."item_stats" VALUES (104003, 'K-1', 30, 210, 23, 0.08, 73, 70.00);
INSERT INTO "public"."item_stats" VALUES (104013, 'KrissSuperV', 30, 210, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104101, 'KrissSuperV 4th Anniversary', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104102, 'KrissSuperV 4th Anniversary', 30, 210, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104223, 'KrissSuperV Basketball', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104224, 'KrissSuperV Basketball', 35, 210, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104052, 'KrissSuperV Batik', 30, 210, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104047, 'KrissSuperV Batik', 40, 280, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104053, 'KrissSuperV Batik', 30, 210, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104048, 'KrissSuperV Batik', 40, 280, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104039, 'KrissSuperV Black', 30, 210, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104040, 'KrissSuperV Black', 30, 210, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104090, 'KrissSuperV Black', 30, 210, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104091, 'KrissSuperV Black', 30, 210, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104139, 'KrissSuperV Brazuca', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104140, 'KrissSuperV Brazuca', 35, 210, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104172, 'KrissSuperV CNY-2015', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104173, 'KrissSuperV CNY-2015', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104142, 'KrissSuperV Champion', 30, 210, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104143, 'KrissSuperV Champion', 30, 210, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104170, 'KrissSuperV EvilCupid', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104171, 'KrissSuperV EvilCupid', 30, 210, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104005, 'KrissSuperV Cupid', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104018, 'KrissSuperV Cupid', 35, 210, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104031, 'KrissSuperV', 40, 280, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104245, 'KrissSuperV DFN', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104246, 'KrissSuperV DFN', 35, 210, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104212, 'KrissSuperV Dark-Days', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104213, 'KrissSuperV Dark-Days', 45, 315, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104012, 'KrissSuperV', 30, 210, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104030, 'KrissSuperV', 40, 280, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104050, 'KrissSuperV ESports', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104051, 'KrissSuperV ESports', 30, 210, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104065, 'KrissSuperV', 30, 210, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104073, 'KrissSuperV', 30, 210, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104019, 'KrissSuperV', 30, 210, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104083, 'KrissSuperV GRS', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104175, 'KrissSuperV GRS2', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104176, 'KrissSuperV GRS2', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104084, 'KrissSuperV GRS', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104093, 'KrissSuperV GRS EV', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104094, 'KrissSuperV GRS EV', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104087, 'KrissSuperV GSL', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104130, 'KrissSuperV GSL 2014', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104131, 'KrissSuperV GSL 2014', 45, 315, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104088, 'KrissSuperV GSL', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104155, 'KrissSuperV G E-Sports', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104156, 'KrissSuperV G E-Sports', 35, 210, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104026, 'KrissSuperV G', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104028, 'KrissSuperV G', 35, 210, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104237, 'KrissSuperV Halloween', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104238, 'KrissSuperV Halloween', 35, 210, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104196, 'KrissSuperV Harimau', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104197, 'KrissSuperV Harimau', 35, 210, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104060, 'KrissSuperV IC', 40, 280, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104061, 'KrissSuperV IC', 40, 280, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104126, 'KrissSuperV Inferno', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104127, 'KrissSuperV Inferno', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104209, 'KrissSuperV Mech', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104211, 'KrissSuperV Mech', 45, 315, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104132, 'KrissSuperV Midnight', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104133, 'KrissSuperV Midnight', 45, 315, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104149, 'KrissSuperV Midnight Non-Logo', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104150, 'KrissSuperV Midnight Non-Logo', 45, 315, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104253, 'KrissSuperV Monkey', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104254, 'KrissSuperV Monkey', 35, 210, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104178, 'KrissSuperV NEWBORN 2015', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104179, 'KrissSuperV NEWBORN 2015', 35, 210, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104242, 'KrissSuperV Obsidian', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104243, 'KrissSuperV Obsidian', 35, 210, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104185, 'Kriss S V Ongame', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104186, 'Kriss S V Ongame', 35, 210, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104103, 'KrissSuperV PBIC2013', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104104, 'KrissSuperV PBIC2013', 35, 210, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104216, 'KrissSuperV PBIC2015', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104217, 'KrissSuperV PBIC2015', 45, 315, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104205, 'KrissSuperV PBNC2015', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104206, 'KrissSuperV PBNC2015', 35, 210, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104183, 'KrissSuperV Silence PBNC6', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104184, 'KrissSuperV Silence PBNC6', 30, 210, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104153, 'KrissSuperV PBSC2014', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104154, 'KrissSuperV PBSC2014', 30, 210, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104207, 'KrissSuperV PBTC2015', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104208, 'KrissSuperV PBTC2015', 35, 210, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104079, 'Kriss S V PBTN', 30, 210, 22, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104080, 'Kriss S V PBTN', 40, 280, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104151, 'KrissSuperV PC-Cafe', 30, 210, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104152, 'KrissSuperV PC-Cafe', 30, 210, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104123, 'KrissSuperV Russia', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104124, 'KrissSuperV Russia', 35, 210, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104201, 'KrissSuperV Red', 45, 315, 22, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104202, 'KrissSuperV Red', 45, 315, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104188, 'KrissSuperV Redemption', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104189, 'KrissSuperV Redemption', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104108, 'KrissSuperV Silence', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104109, 'KrissSuperV Silence', 35, 210, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104115, 'KrissSuperV Sakura', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104044, 'KrissSuperV Sakura', 35, 210, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104221, 'KrissSuperV Sheep', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104222, 'KrissSuperV Sheep', 35, 210, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104235, 'Kriss S V Steam', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104236, 'Kriss S V Steam', 35, 210, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104191, 'KrissSuperV Summer', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104192, 'KrissSuperV Summer', 30, 210, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104121, 'KrissSuperV 1st-Garena', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104122, 'KrissSuperV 1st-Garena', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104157, 'KrissSuperV Toy', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104158, 'KrissSuperV Toy', 35, 210, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104110, 'KrissSuperV Turkey', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104111, 'KrissSuperV Turkey', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104054, 'Kriss Vector SV', 30, 210, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104055, 'Kriss Vector SV', 30, 210, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104144, 'KrissSuperV WOE', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104145, 'KrissSuperV WOE', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104168, 'KrissSuperV Xmas', 45, 315, 22, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104249, 'KrissSuperV Xmas2015', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104250, 'KrissSuperV Xmas2015', 30, 210, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104169, 'KrissSuperV Xmas', 45, 315, 21, 0.07, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104034, 'M4-CQBR-LV1', 30, 210, 23, 0.07, 76, 80.00);
INSERT INTO "public"."item_stats" VALUES (104070, 'M4-CQBR-LV1', 30, 210, 23, 0.07, 76, 80.00);
INSERT INTO "public"."item_stats" VALUES (104035, 'M4-CQBR-LV2', 30, 210, 23, 0.07, 76, 80.00);
INSERT INTO "public"."item_stats" VALUES (104071, 'M4-CQBR-LV2', 30, 210, 23, 0.07, 76, 80.00);
INSERT INTO "public"."item_stats" VALUES (104036, 'M4-CQBR-LV3', 30, 210, 23, 0.07, 76, 80.00);
INSERT INTO "public"."item_stats" VALUES (104072, 'M4-CQBR-LV3', 30, 210, 23, 0.07, 76, 80.00);
INSERT INTO "public"."item_stats" VALUES (104063, 'MP5K SERIF', 45, 320, 23, 0.07, 70, 45.00);
INSERT INTO "public"."item_stats" VALUES (104100, 'MP5K Reload', 30, 210, 21, 0.06, 70, 60.00);
INSERT INTO "public"."item_stats" VALUES (104007, 'MP5K SERIF', 45, 320, 23, 0.07, 70, 45.00);
INSERT INTO "public"."item_stats" VALUES (104024, 'MP5K SERIF', 45, 320, 23, 0.07, 70, 45.00);
INSERT INTO "public"."item_stats" VALUES (104001, 'MP5K', 30, 210, 22, 0.07, 70, 45.00);
INSERT INTO "public"."item_stats" VALUES (104014, 'MP5K Silver', 40, 280, 22, 0.07, 70, 45.00);
INSERT INTO "public"."item_stats" VALUES (104041, 'MP5K Silver', 40, 280, 22, 0.07, 70, 45.00);
INSERT INTO "public"."item_stats" VALUES (104067, 'MP5K Silver', 40, 280, 22, 0.07, 70, 45.00);
INSERT INTO "public"."item_stats" VALUES (104015, 'MP5K White', 30, 210, 22, 0.07, 70, 45.00);
INSERT INTO "public"."item_stats" VALUES (104038, 'MP7 Camo', 45, 315, 22, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104004, 'MP7 DotSight', 30, 210, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104045, 'MP7 DotSight', 40, 280, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104066, 'MP7 DotSight', 30, 210, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104081, 'MP7 GRS', 30, 210, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104105, 'MP7 GRS EV', 45, 315, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104056, 'MP7 NON EX', 30, 120, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104059, 'MP7 SE2', 35, 210, 22, 0.06, 80, 70.00);
INSERT INTO "public"."item_stats" VALUES (104022, 'MP7 SL', 40, 280, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104037, 'MP7 SL', 40, 280, 21, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104107, 'MP9 Ext', 30, 210, 20, 0.06, 55, 60.00);
INSERT INTO "public"."item_stats" VALUES (104161, 'MP9 Ext Gold', 45, 315, 20, 0.06, 55, 60.00);
INSERT INTO "public"."item_stats" VALUES (104164, 'MP9 Ext Xmas', 45, 315, 21, 0.06, 55, 60.00);
INSERT INTO "public"."item_stats" VALUES (104232, 'OA-93 Cobra', 45, 315, 22, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104233, 'OA-93 Cobra', 45, 315, 22, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104228, 'OA-93 Medical', 45, 315, 22, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104229, 'OA-93 Medical', 45, 315, 22, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104251, 'OA-93 Xmas2015', 45, 315, 22, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104252, 'OA-93 Xmas2015', 45, 315, 22, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104134, 'OA-93', 30, 210, 22, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104225, 'OA-93 Basketball', 45, 315, 22, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104226, 'OA-93 Basketball', 45, 315, 22, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104247, 'OA-93 DFN', 45, 315, 22, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104248, 'OA-93 DFN', 45, 315, 22, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104135, 'OA-93', 30, 210, 22, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104180, 'OA-93 GSL2015', 45, 315, 22, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104181, 'OA-93 GSL2015', 45, 315, 22, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104136, 'OA-93 Gold', 45, 315, 22, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104137, 'OA-93 Gold', 45, 315, 22, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104198, 'OA-93 Independence', 45, 315, 22, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104199, 'OA-93 Independence', 45, 315, 22, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104214, 'OA-93 PBNC2015 US', 45, 315, 22, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104215, 'OA-93 PBNC2015 US', 45, 315, 22, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104203, 'OA-93 PBST2015', 45, 315, 22, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104204, 'OA-93 PBST2015', 45, 315, 22, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104159, 'OA-93', 40, 280, 22, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104160, 'OA-93', 40, 280, 22, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104165, 'OA-93 Xmas', 45, 315, 23, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104166, 'OA-93 Xmas', 45, 315, 23, 0.06, 80, 60.00);
INSERT INTO "public"."item_stats" VALUES (104010, 'P90MC', 30, 150, 22, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (104027, 'P90MC Camo', 45, 225, 22, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (104234, 'P90 MC Camo-Soldier', 40, 200, 22, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (104032, 'P90MC', 40, 200, 22, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (104113, 'P90MC Latin3', 45, 225, 22, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (104148, 'P90 MC Latin3 Non-Logo', 45, 225, 22, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (104086, 'P90MC PBNC', 45, 225, 22, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (104240, 'P90 MC Spy-Normal', 30, 150, 22, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (104064, 'P90MC Camo', 45, 225, 22, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (104174, 'P90 MC Sheep', 45, 225, 22, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (104114, 'P90 BR-Camo', 75, 300, 24, 0.07, 85, 65.00);
INSERT INTO "public"."item_stats" VALUES (104227, 'P90 Ext Basketball', 75, 300, 24, 0.07, 85, 65.00);
INSERT INTO "public"."item_stats" VALUES (104011, 'P90 Ext', 50, 200, 24, 0.07, 85, 65.00);
INSERT INTO "public"."item_stats" VALUES (104029, 'P90 Ext', 65, 260, 24, 0.07, 85, 65.00);
INSERT INTO "public"."item_stats" VALUES (104141, 'P90 Ext 5th Anniversary', 75, 300, 24, 0.07, 85, 65.00);
INSERT INTO "public"."item_stats" VALUES (104138, 'P90 EXT Brazuca', 75, 300, 24, 0.07, 85, 65.00);
INSERT INTO "public"."item_stats" VALUES (104017, 'P90 EXT Cupid', 75, 300, 24, 0.07, 85, 65.00);
INSERT INTO "public"."item_stats" VALUES (104069, 'P90 Ext', 50, 200, 24, 0.07, 85, 65.00);
INSERT INTO "public"."item_stats" VALUES (104239, 'P90 Ext Halloween', 75, 300, 24, 0.07, 85, 65.00);
INSERT INTO "public"."item_stats" VALUES (104128, 'P90 Ext Inferno', 75, 300, 24, 0.07, 85, 65.00);
INSERT INTO "public"."item_stats" VALUES (104163, 'P90 Ext Latin4', 75, 300, 24, 0.07, 85, 65.00);
INSERT INTO "public"."item_stats" VALUES (104210, 'P90 Ext Mech', 75, 300, 24, 0.07, 85, 65.00);
INSERT INTO "public"."item_stats" VALUES (104230, 'P90 Ext Medical', 75, 300, 24, 0.07, 85, 65.00);
INSERT INTO "public"."item_stats" VALUES (104187, 'P90 Ext Ongame', 75, 300, 24, 0.07, 85, 65.00);
INSERT INTO "public"."item_stats" VALUES (104146, 'P90 Ext PBIC2014', 75, 300, 24, 0.07, 85, 65.00);
INSERT INTO "public"."item_stats" VALUES (104218, 'P90 Ext PBIC2015', 75, 300, 24, 0.07, 85, 65.00);
INSERT INTO "public"."item_stats" VALUES (104129, 'P90 Ext PBNC5', 75, 300, 24, 0.07, 85, 65.00);
INSERT INTO "public"."item_stats" VALUES (104190, 'P90 Ext Redemption', 75, 300, 24, 0.07, 85, 65.00);
INSERT INTO "public"."item_stats" VALUES (104182, 'P90 Ext Silence GSL2015', 75, 300, 24, 0.07, 85, 65.00);
INSERT INTO "public"."item_stats" VALUES (104089, 'P90 GSL', 75, 300, 24, 0.07, 85, 65.00);
INSERT INTO "public"."item_stats" VALUES (104075, 'P90 Gold', 75, 300, 24, 0.07, 85, 65.00);
INSERT INTO "public"."item_stats" VALUES (104220, 'P90 MC VeraCruz', 45, 225, 22, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (104112, 'P90MC BLOODY', 50, 200, 24, 0.07, 85, 65.00);
INSERT INTO "public"."item_stats" VALUES (104200, 'P90 MC Brazil', 40, 200, 22, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (104082, 'P90MC GRS', 45, 225, 22, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (104095, 'P90MC GRS EV', 45, 225, 22, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (104219, 'P90 MC Gold', 45, 225, 22, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (104241, 'P90 MC Latin5', 45, 225, 22, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (104195, 'P90 MC Rose', 45, 225, 22, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (104244, 'P90 MC Spy-Deluxe', 45, 225, 22, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (104255, 'P90 MC VeraCruz2016', 45, 225, 22, 0.07, 85, 100.00);
INSERT INTO "public"."item_stats" VALUES (104085, 'P90 NEWBORN', 75, 300, 24, 0.07, 85, 65.00);
INSERT INTO "public"."item_stats" VALUES (104125, 'P90 NEWBORN 2014', 75, 300, 24, 0.07, 85, 65.00);
INSERT INTO "public"."item_stats" VALUES (104177, 'P90 NEWBORN 2015', 75, 300, 24, 0.07, 85, 65.00);
INSERT INTO "public"."item_stats" VALUES (104078, 'P90 PBTN', 50, 200, 22, 0.07, 85, 65.00);
INSERT INTO "public"."item_stats" VALUES (104077, 'P90 Wh PBSC', 50, 250, 24, 0.07, 85, 65.00);
INSERT INTO "public"."item_stats" VALUES (104147, 'P90 Wh PBSC Non-Logo', 50, 250, 24, 0.07, 85, 65.00);
INSERT INTO "public"."item_stats" VALUES (104106, 'PP19-BIZON', 53, 212, 24, 0.07, 85, 65.00);
INSERT INTO "public"."item_stats" VALUES (104162, 'PP19-BIZON Gold', 80, 320, 24, 0.07, 85, 65.00);
INSERT INTO "public"."item_stats" VALUES (104167, 'PP19-BIZON Xmas', 80, 320, 25, 0.07, 85, 65.00);
INSERT INTO "public"."item_stats" VALUES (104043, 'Pindad SS1-R5 Carbine', 30, 120, 25, 0.08, 73, 70.00);
INSERT INTO "public"."item_stats" VALUES (104049, 'Pindad SS SS1-R5 Carbine Gold', 45, 180, 25, 0.08, 73, 70.00);
INSERT INTO "public"."item_stats" VALUES (104099, 'Pindad SS SS1-R5 Carbine Reload', 30, 150, 25, 0.07, 73, 70.00);
INSERT INTO "public"."item_stats" VALUES (104057, 'Spectre NON EX', 50, 120, 23, 0.07, 70, 45.00);
INSERT INTO "public"."item_stats" VALUES (104098, 'Spectre Reload', 50, 300, 22, 0.07, 70, 65.00);
INSERT INTO "public"."item_stats" VALUES (104009, 'Spectre SE', 50, 300, 22, 0.07, 70, 45.00);
INSERT INTO "public"."item_stats" VALUES (104020, 'Spectre Silver', 65, 390, 22, 0.07, 70, 45.00);
INSERT INTO "public"."item_stats" VALUES (104042, 'Spectre Silver', 65, 390, 23, 0.07, 70, 45.00);
INSERT INTO "public"."item_stats" VALUES (104074, 'Spectre Silver', 65, 390, 23, 0.07, 70, 45.00);
INSERT INTO "public"."item_stats" VALUES (104002, 'Spectre', 50, 300, 22, 0.07, 70, 45.00);
INSERT INTO "public"."item_stats" VALUES (104062, 'Spectre SE', 50, 300, 23, 0.07, 70, 45.00);
INSERT INTO "public"."item_stats" VALUES (104016, 'Spectre White', 50, 300, 22, 0.07, 70, 45.00);
INSERT INTO "public"."item_stats" VALUES (104025, 'Spectre SE', 65, 390, 22, 0.07, 70, 45.00);
INSERT INTO "public"."item_stats" VALUES (104058, 'UMP45 Black', 25, 200, 25, 0.09, 70, 50.00);
INSERT INTO "public"."item_stats" VALUES (104092, 'UMP45 Black', 25, 200, 25, 0.09, 70, 50.00);
INSERT INTO "public"."item_stats" VALUES (104008, 'UMP45', 25, 200, 25, 0.09, 70, 50.00);
INSERT INTO "public"."item_stats" VALUES (104046, 'UMP45', 33, 260, 25, 0.09, 70, 50.00);
INSERT INTO "public"."item_stats" VALUES (104097, 'UMP45 Reload', 25, 200, 25, 0.07, 70, 65.00);
INSERT INTO "public"."item_stats" VALUES (104023, 'UMP45 SL', 33, 264, 25, 0.09, 70, 50.00);
INSERT INTO "public"."item_stats" VALUES (104068, 'UMP45 SL', 33, 264, 25, 0.09, 70, 50.00);
INSERT INTO "public"."item_stats" VALUES (106001, '870MCS', 8, 32, 23, 1.00, 30, 65.00);
INSERT INTO "public"."item_stats" VALUES (106015, '870MCS', 8, 32, 23, 1.00, 30, 65.00);
INSERT INTO "public"."item_stats" VALUES (106002, '870MCS E', 8, 32, 23, 1.00, 30, 65.00);
INSERT INTO "public"."item_stats" VALUES (106007, '870MCS', 8, 32, 22, 1.00, 50, 65.00);
INSERT INTO "public"."item_stats" VALUES (106008, '870MCS SL', 10, 40, 23, 1.00, 50, 65.00);
INSERT INTO "public"."item_stats" VALUES (106014, '870MCS SL', 11, 44, 23, 1.00, 50, 65.00);
INSERT INTO "public"."item_stats" VALUES (106004, '870MCS W', 8, 32, 23, 1.00, 50, 65.00);
INSERT INTO "public"."item_stats" VALUES (106011, '870MCS W', 10, 40, 23, 1.00, 50, 65.00);
INSERT INTO "public"."item_stats" VALUES (106023, '870MCS W', 8, 32, 23, 1.00, 50, 65.00);
INSERT INTO "public"."item_stats" VALUES (106047, 'Cerberus Shotgun', 15, 45, 50, 1.10, 30, 65.00);
INSERT INTO "public"."item_stats" VALUES (106019, 'JackHammer', 8, 32, 19, 0.20, 25, 20.00);
INSERT INTO "public"."item_stats" VALUES (106020, 'Kel Tec KSG 15', 14, 32, 21, 1.00, 30, 65.00);
INSERT INTO "public"."item_stats" VALUES (106036, 'Kel Tec KSG 15 GSL 2014', 14, 32, 21, 1.00, 30, 65.00);
INSERT INTO "public"."item_stats" VALUES (106005, 'M1887', 8, 32, 23, 1.10, 30, 65.00);
INSERT INTO "public"."item_stats" VALUES (106010, 'M1887 SE', 8, 24, 23, 1.10, 30, 65.00);
INSERT INTO "public"."item_stats" VALUES (106026, 'M1887 GRS', 10, 40, 23, 1.10, 30, 65.00);
INSERT INTO "public"."item_stats" VALUES (106028, 'M1887 GRS EV', 10, 40, 23, 1.10, 30, 65.00);
INSERT INTO "public"."item_stats" VALUES (106034, 'M1887 GRS', 10, 40, 23, 1.10, 30, 65.00);
INSERT INTO "public"."item_stats" VALUES (106033, 'M1887 1st-Garena', 10, 40, 23, 1.10, 30, 65.00);
INSERT INTO "public"."item_stats" VALUES (106064, 'M1887 Arena-Deluxe', 8, 32, 23, 1.10, 30, 65.00);
INSERT INTO "public"."item_stats" VALUES (106063, 'M1887 Arena-Normal', 8, 32, 23, 1.10, 30, 65.00);
INSERT INTO "public"."item_stats" VALUES (106030, 'M1887 BLOODY', 10, 40, 23, 1.10, 30, 65.00);
INSERT INTO "public"."item_stats" VALUES (106037, 'M1887 Brazuca', 10, 40, 23, 1.10, 30, 65.00);
INSERT INTO "public"."item_stats" VALUES (106065, 'M1887 Cupid', 12, 48, 23, 1.10, 30, 65.00);
INSERT INTO "public"."item_stats" VALUES (106017, 'M1887', 10, 40, 23, 1.10, 30, 65.00);
INSERT INTO "public"."item_stats" VALUES (106049, 'M1887 GSL2015', 10, 40, 23, 1.10, 30, 65.00);
INSERT INTO "public"."item_stats" VALUES (106059, 'M1887 Gold', 12, 48, 23, 1.10, 30, 65.00);
INSERT INTO "public"."item_stats" VALUES (106041, 'M1887 Lion-Heart', 10, 40, 23, 1.10, 30, 65.00);
INSERT INTO "public"."item_stats" VALUES (106056, 'M1887 Mech', 10, 40, 23, 1.10, 30, 65.00);
INSERT INTO "public"."item_stats" VALUES (106060, 'M1887 Medical', 12, 48, 23, 1.10, 30, 65.00);
INSERT INTO "public"."item_stats" VALUES (106062, 'M1887 Obsidian', 12, 48, 23, 1.10, 30, 65.00);
INSERT INTO "public"."item_stats" VALUES (106038, 'M1887 PBIC2014', 10, 42, 23, 1.10, 30, 65.00);
INSERT INTO "public"."item_stats" VALUES (106058, 'M1887 PBIC2015', 10, 40, 23, 1.10, 30, 65.00);
INSERT INTO "public"."item_stats" VALUES (106027, 'M1887 PBNC', 10, 40, 23, 1.10, 30, 65.00);
INSERT INTO "public"."item_stats" VALUES (106053, 'M1887 PBNC2015', 10, 40, 23, 1.10, 30, 65.00);
INSERT INTO "public"."item_stats" VALUES (106035, 'M1887 PBNC5', 10, 40, 23, 1.10, 30, 65.00);
INSERT INTO "public"."item_stats" VALUES (106055, 'M1887 PBTC2015', 10, 40, 23, 1.10, 30, 65.00);
INSERT INTO "public"."item_stats" VALUES (106021, 'M1887 SL', 10, 40, 23, 1.10, 30, 65.00);
INSERT INTO "public"."item_stats" VALUES (106061, 'M1887 Steam', 12, 48, 23, 1.10, 30, 65.00);
INSERT INTO "public"."item_stats" VALUES (106052, 'M1887 Summer', 10, 40, 23, 1.10, 30, 65.00);
INSERT INTO "public"."item_stats" VALUES (106043, 'Remington ETA', 8, 32, 15, 0.72, 3, 65.00);
INSERT INTO "public"."item_stats" VALUES (106044, 'Remington ETA Gold', 12, 48, 15, 0.72, 3, 65.00);
INSERT INTO "public"."item_stats" VALUES (106003, 'SPAS15', 6, 30, 25, 0.75, 50, 65.00);
INSERT INTO "public"."item_stats" VALUES (106012, 'SPAS15', 8, 40, 25, 0.75, 50, 65.00);
INSERT INTO "public"."item_stats" VALUES (106022, 'SPAS15', 6, 30, 25, 0.75, 50, 65.00);
INSERT INTO "public"."item_stats" VALUES (106032, 'SPAS15 Elite', 9, 45, 50, 0.71, 50, 100.00);
INSERT INTO "public"."item_stats" VALUES (106018, 'SPAS15 MSC', 10, 40, 19, 0.70, 30, 90.00);
INSERT INTO "public"."item_stats" VALUES (106057, 'SPAS15 MSC PBNC2015 US', 15, 80, 19, 0.70, 30, 90.00);
INSERT INTO "public"."item_stats" VALUES (106054, 'SPAS15 PBNC2015', 10, 50, 25, 0.75, 50, 65.00);
INSERT INTO "public"."item_stats" VALUES (106050, 'SPAS15 PBNC6', 10, 50, 50, 0.71, 50, 100.00);
INSERT INTO "public"."item_stats" VALUES (106029, 'SPAS 15 PBSC2013', 10, 50, 25, 0.75, 50, 65.00);
INSERT INTO "public"."item_stats" VALUES (106040, 'SPAS15 PBSC2013 Non-Logo', 10, 50, 25, 0.75, 50, 65.00);
INSERT INTO "public"."item_stats" VALUES (106006, 'SPAS15 Silver', 8, 40, 25, 0.75, 50, 65.00);
INSERT INTO "public"."item_stats" VALUES (106016, 'SPAS15 Silver', 8, 40, 25, 0.75, 50, 65.00);
INSERT INTO "public"."item_stats" VALUES (106024, 'SPAS15 Silver', 8, 40, 25, 0.75, 50, 65.00);
INSERT INTO "public"."item_stats" VALUES (106009, 'SPAS15 Silver', 6, 30, 25, 0.75, 30, 65.00);
INSERT INTO "public"."item_stats" VALUES (230001, 'SuperShorty870', 6, 24, 10, 0.95, 0, 30.00);
INSERT INTO "public"."item_stats" VALUES (106039, 'UTS-15', 14, 56, 19, 0.70, 10, 60.00);
INSERT INTO "public"."item_stats" VALUES (106046, 'UTS-15', 18, 72, 19, 0.70, 10, 60.00);
INSERT INTO "public"."item_stats" VALUES (106048, 'UTS-15 Gold', 21, 84, 19, 0.70, 10, 60.00);
INSERT INTO "public"."item_stats" VALUES (106051, 'WaterGun', 6, 20000, 14, 0.35, 25, 65.00);
INSERT INTO "public"."item_stats" VALUES (106042, 'Zombie Slayer', 12, 48, 22, 0.88, 10, 70.00);
INSERT INTO "public"."item_stats" VALUES (105032, 'Barrett M82A1', 10, 30, 200, 0.66, 150, 200.00);
INSERT INTO "public"."item_stats" VALUES (105118, 'Cheytac M200 Dark-Days', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105030, 'Cheytac', 5, 30, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105112, 'Cheytac M200 4Game', 5, 30, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105113, 'Cheytac M200 4Game-SE', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105142, 'Cheytac M200 Arena-Deluxe', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105141, 'Cheytac M200 Arena-Normal', 5, 30, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105057, 'Cheytac M200 BLOODY', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105110, 'Cheytac M200 Brazil', 6, 36, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105083, 'Cheytac M200 Brazuca', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105097, 'Cheytac M200 Cangaceiro', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105084, 'Cheytac M200 Champion', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105099, 'Cheytac M200 EvilCupid', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105147, 'Cheytac M200 Cupid', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105137, 'Cheytac M200 DFN', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105052, 'Cheytac GRS', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105100, 'Cheytac M200 GRS2', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105058, 'Cheytac GRS EV', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105055, 'Cheytac GSL', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105102, 'Cheytac M200 GSL2015', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105091, 'Cheytac M200 G E-Sports', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105121, 'Cheytac M200 Gold', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105131, 'Cheytac M200 Halloween', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105079, 'Cheytac M200 Inferno', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105096, 'Cheytac M200 Latin4', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105134, 'Cheytac M200 Latin5', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105108, 'Cheytac M200 LionFlame', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105126, 'Cheytac M200 Medical', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105090, 'Cheytac M200 Merdeka', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105140, 'Cheytac M200 Monkey', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105135, 'Cheytac M200 Obsidian', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105104, 'Cheytac M200 Ongame', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105087, 'Cheytac M200 PBIC2014', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105120, 'Cheytac M200 PBIC2015', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105114, 'Cheytac M200 PBNC2015', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105080, 'Cheytac M200 PBNC5', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105103, 'Cheytac M200 PBNC6', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105111, 'Cheytac M200 PBST2015', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105115, 'Cheytac M200 PBTC2015', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105073, 'Cheytac M200 Russia', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105105, 'Cheytac M200 Redemption', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105148, 'Cheytac M200 Sakura', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105124, 'Cheytac M200 Sheep', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105144, 'Cheytac M200 Silence', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105130, 'Cheytac M200 Steam', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105071, 'Cheytac M200 1st-Garena', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105063, 'Cheytac M200 Turkey', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105122, 'Cheytac M200 VeraCruz', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105143, 'Cheytac M200 VeraCruz2016', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105086, 'Cheytac M200 WOE', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105138, 'Cheytac M200 Xmas2015', 7, 42, 95, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105034, 'Dsr 1', 5, 30, 84, 0.35, 100, 180.00);
INSERT INTO "public"."item_stats" VALUES (105098, 'Dsr 1', 7, 42, 84, 0.35, 100, 180.00);
INSERT INTO "public"."item_stats" VALUES (105095, 'Dsr 1 Gold', 8, 48, 84, 0.35, 100, 180.00);
INSERT INTO "public"."item_stats" VALUES (105133, 'DSR 1 Spy-Normal', 5, 30, 84, 0.35, 100, 180.00);
INSERT INTO "public"."item_stats" VALUES (105136, 'DSR 1 Spy-Deluxe', 8, 48, 84, 0.35, 100, 180.00);
INSERT INTO "public"."item_stats" VALUES (105002, 'HK-PSG1', 5, 40, 81, 0.60, 100, 180.00);
INSERT INTO "public"."item_stats" VALUES (105024, 'HK-PSG1 Gold', 8, 64, 81, 0.60, 100, 180.00);
INSERT INTO "public"."item_stats" VALUES (105059, 'HK-PSG1 Reload', 5, 40, 84, 0.60, 100, 180.00);
INSERT INTO "public"."item_stats" VALUES (105007, 'HK-PSG1 S', 8, 64, 81, 0.60, 100, 180.00);
INSERT INTO "public"."item_stats" VALUES (105016, 'HK-PSG1 S', 7, 56, 81, 0.60, 100, 180.00);
INSERT INTO "public"."item_stats" VALUES (105038, 'HK-PSG1 S', 8, 64, 81, 0.60, 100, 180.00);
INSERT INTO "public"."item_stats" VALUES (105009, 'HK-PSG1 Silver', 7, 56, 81, 0.60, 100, 180.00);
INSERT INTO "public"."item_stats" VALUES (105042, 'HK-PSG1 Silver', 7, 56, 81, 0.60, 100, 180.00);
INSERT INTO "public"."item_stats" VALUES (105005, 'L115A1', 5, 30, 85, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105017, 'L115A1', 7, 42, 85, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105065, 'L115A1 BR-Camo', 8, 48, 85, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105125, 'L115A1 Basketball', 10, 48, 85, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105026, 'L115A1 Black', 5, 30, 85, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105056, 'L115A1 Black', 5, 30, 85, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105089, 'L115A1 PC-Cafe', 5, 30, 85, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105127, 'L115A1 Cobra', 10, 48, 85, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105033, 'L115A1 ESports', 5, 30, 85, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105041, 'L115A1', 5, 30, 85, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105081, 'L115A1 GSL 2014', 10, 30, 85, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105015, 'L115A1 G', 10, 48, 85, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105109, 'L115A1 Harimau', 10, 48, 85, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105064, 'L115A1 Latin3', 10, 30, 85, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105088, 'L115A1 Latin3 Non-Logo', 10, 30, 85, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105117, 'L115A1 Mech', 8, 48, 85, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105101, 'L115A1 NEWBORN 2015', 10, 48, 85, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105053, 'L115A1 PBNC', 8, 48, 85, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105050, 'L115A1 PBTN', 10, 30, 86, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105036, 'L115A1 SE', 8, 48, 85, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105106, 'L115A1 Summer', 10, 48, 85, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105092, 'L115A1 Toy', 10, 48, 85, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105018, 'M4-SPR-LV1', 20, 60, 36, 0.20, 76, 160.00);
INSERT INTO "public"."item_stats" VALUES (105044, 'M4-SPR-LV1', 20, 60, 36, 0.20, 76, 160.00);
INSERT INTO "public"."item_stats" VALUES (105019, 'M4-SPR-LV2', 20, 60, 36, 0.20, 76, 160.00);
INSERT INTO "public"."item_stats" VALUES (105045, 'M4-SPR-LV2', 20, 60, 36, 0.20, 76, 160.00);
INSERT INTO "public"."item_stats" VALUES (105020, 'M4-SPR-LV3', 20, 60, 36, 0.20, 76, 160.00);
INSERT INTO "public"."item_stats" VALUES (105046, 'M4-SPR-LV3', 20, 60, 36, 0.20, 76, 160.00);
INSERT INTO "public"."item_stats" VALUES (105145, 'PGM-Hecate2', 7, 42, 97, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105146, 'PGM-Hecate2 Gold', 10, 60, 97, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105021, 'RangeMaster338', 5, 30, 86, 0.34, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105128, 'RngMaster 338 Camo-Soldier', 7, 42, 86, 0.34, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105060, 'RangeMaster338', 5, 30, 86, 0.34, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105022, 'RangeMaster762', 10, 30, 80, 0.32, 100, 180.00);
INSERT INTO "public"."item_stats" VALUES (105023, 'RangeMaster762Stby', 10, 30, 77, 0.30, 100, 180.00);
INSERT INTO "public"."item_stats" VALUES (105062, 'RngMaster 762 Stby Reload', 10, 30, 80, 0.30, 100, 180.00);
INSERT INTO "public"."item_stats" VALUES (105061, 'RngMaster 762 Reload', 10, 30, 82, 0.32, 100, 180.00);
INSERT INTO "public"."item_stats" VALUES (105003, 'SSG69', 5, 30, 76, 0.30, 100, 180.00);
INSERT INTO "public"."item_stats" VALUES (105004, 'SSG69 Camo', 8, 48, 76, 0.30, 100, 180.00);
INSERT INTO "public"."item_stats" VALUES (105025, 'SSG69', 5, 30, 76, 0.30, 100, 180.00);
INSERT INTO "public"."item_stats" VALUES (105008, 'SSG69 Silver', 7, 42, 76, 0.30, 100, 180.00);
INSERT INTO "public"."item_stats" VALUES (105027, 'SSG69 Silver', 7, 42, 76, 0.30, 100, 180.00);
INSERT INTO "public"."item_stats" VALUES (105043, 'SSG69 Silver', 7, 42, 76, 0.30, 100, 180.00);
INSERT INTO "public"."item_stats" VALUES (105001, 'SVD-Dragunov', 10, 30, 78, 0.60, 100, 160.00);
INSERT INTO "public"."item_stats" VALUES (105028, 'SVD-Dragunov', 10, 30, 78, 0.60, 100, 160.00);
INSERT INTO "public"."item_stats" VALUES (105076, 'SVD-Dragunov Elite', 15, 45, 85, 0.50, 100, 160.00);
INSERT INTO "public"."item_stats" VALUES (105014, 'SVD-Dragunov SE', 15, 45, 78, 0.60, 100, 160.00);
INSERT INTO "public"."item_stats" VALUES (105039, 'SVD-Dragunov SE', 15, 45, 78, 0.60, 100, 160.00);
INSERT INTO "public"."item_stats" VALUES (105012, 'SVD-Dragunov KingCobra Gold', 15, 45, 78, 0.60, 100, 160.00);
INSERT INTO "public"."item_stats" VALUES (105049, 'SVD-Dragunov KingCobra Gold', 20, 60, 78, 0.60, 100, 160.00);
INSERT INTO "public"."item_stats" VALUES (105011, 'SVD-Dragunov KingCobra Silver', 15, 45, 78, 0.60, 100, 160.00);
INSERT INTO "public"."item_stats" VALUES (105047, 'SVD-Dragunov Red', 13, 36, 80, 0.60, 100, 160.00);
INSERT INTO "public"."item_stats" VALUES (105107, 'SVD-Dragunov Rose', 15, 45, 78, 0.60, 100, 160.00);
INSERT INTO "public"."item_stats" VALUES (105006, 'SVD-Dragunov SE', 15, 45, 78, 0.60, 100, 160.00);
INSERT INTO "public"."item_stats" VALUES (105010, 'SVD-Dragunov Silver', 13, 39, 78, 0.60, 100, 160.00);
INSERT INTO "public"."item_stats" VALUES (105040, 'SVD-Dragunov Silver', 13, 39, 78, 0.60, 100, 160.00);
INSERT INTO "public"."item_stats" VALUES (105085, 'SVD-Dragunov WOE', 15, 45, 78, 0.60, 100, 160.00);
INSERT INTO "public"."item_stats" VALUES (105035, 'SVU', 10, 40, 76, 0.47, 100, 120.00);
INSERT INTO "public"."item_stats" VALUES (105077, 'SVU Elite', 15, 60, 81, 0.47, 100, 120.00);
INSERT INTO "public"."item_stats" VALUES (105094, 'SVU Gold', 15, 60, 76, 0.47, 100, 120.00);
INSERT INTO "public"."item_stats" VALUES (105116, 'SVU PBTC2015', 15, 60, 76, 0.47, 100, 120.00);
INSERT INTO "public"."item_stats" VALUES (105054, 'SVU SE', 15, 60, 76, 0.47, 100, 120.00);
INSERT INTO "public"."item_stats" VALUES (105123, 'Tactilite T2', 5, 30, 97, 0.33, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105132, 'Taclite-T2 Gold', 7, 42, 97, 0.33, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105139, 'Taclite-T2 Xmas2015', 7, 42, 97, 0.33, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105029, 'VSK94', 10, 40, 45, 0.30, 100, 120.00);
INSERT INTO "public"."item_stats" VALUES (105048, 'VSK94', 10, 40, 45, 0.30, 100, 120.00);
INSERT INTO "public"."item_stats" VALUES (105078, 'VSK94 Elite', 15, 60, 50, 0.29, 100, 130.00);
INSERT INTO "public"."item_stats" VALUES (105093, 'VSK94 Gold', 15, 60, 45, 0.30, 100, 120.00);
INSERT INTO "public"."item_stats" VALUES (105072, 'Walther wa2000', 10, 30, 80, 0.60, 100, 160.00);
INSERT INTO "public"."item_stats" VALUES (105074, 'Walther wa2000 Gold', 15, 45, 80, 0.60, 100, 160.00);
INSERT INTO "public"."item_stats" VALUES (105031, 'M70', 7, 35, 83, 0.30, 100, 210.00);
INSERT INTO "public"."item_stats" VALUES (105068, 'XM2010', 5, 30, 82, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (105119, 'XM2010 PBNC2015 US', 7, 42, 82, 0.35, 100, 200.00);
INSERT INTO "public"."item_stats" VALUES (407002, 'C5', 1, 1, 60, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (407044, 'C5 CNY-2015', 1, 1, 60, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (407003, 'C5', 1, 1, 60, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (407006, 'C5', 1, 1, 60, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (407009, 'CANDYGRENADE', 1, 1, 90, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (407005, 'ChocolateGrenade', 2, 2, 40, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (407012, 'Decoy Bomb', 1, 1, 25, 1.00, 100, 30.00);
INSERT INTO "public"."item_stats" VALUES (407010, 'Fanoos Grenade', 1, 1, 90, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (407016, 'Football Bomb', 1, 1, 25, 1.00, 100, 30.00);
INSERT INTO "public"."item_stats" VALUES (407001, 'K-400', 1, 1, 90, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (407015, 'K-400 Easter', 1, 1, 90, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (407025, 'K-400 Goat', 1, 1, 90, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (407004, 'K-413', 2, 2, 40, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (407047, 'K-413 4Game', 2, 2, 40, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (407048, 'K-413 4Game-SE', 2, 2, 40, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (407045, 'K-413 Chocolate', 2, 2, 40, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (407024, 'K-413', 2, 2, 40, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (407007, 'K-413 Gold', 2, 2, 40, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (407020, 'K-413 PC Cafe', 2, 2, 40, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (407046, 'K-413 Redemption', 2, 2, 40, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (407017, 'K-413', 2, 2, 40, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (407019, 'K-413', 2, 2, 40, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (407014, 'K-479', 1, 1, 35, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (407008, 'Ketupat Grenade', 1, 1, 90, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (407013, 'M14 Mine', 1, 1, 35, 1.00, 0, 30.00);
INSERT INTO "public"."item_stats" VALUES (407018, 'M14 Mine', 1, 1, 35, 1.00, 0, 30.00);
INSERT INTO "public"."item_stats" VALUES (407023, 'M18 A1 Claymore', 1, 1, 65, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (407011, 'Maamoul Grenade', 1, 1, 90, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (407026, 'Meat-Bomb', 1, 1, 500, 1.00, 94, 20.00);
INSERT INTO "public"."item_stats" VALUES (407022, 'Bomb SepaktakrawBall', 1, 1, 90, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (407021, 'bomb Shuttlecock', 2, 2, 40, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (407049, 'Snowman Grenade', 1, 1, 90, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (528003, 'Chocolate Kit', 1, 1, 40, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (508002, 'FlashBang', 1, 1, 0, 1.00, 100, 30.00);
INSERT INTO "public"."item_stats" VALUES (508004, 'FlashBang Plus', 1, 1, 0, 1.00, 100, 30.00);
INSERT INTO "public"."item_stats" VALUES (528002, 'Halloween Medical Kit', 1, 1, 40, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (528001, 'Medical Kit', 1, 1, 40, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (528007, 'Medical Kit Easter', 1, 1, 40, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (528009, 'Medical Kit Kurma', 1, 1, 50, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (528004, 'Medical Kit Lotus', 1, 1, 40, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (528008, 'Medical Kit Lotus2', 1, 1, 40, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (528005, 'Medical Kit Opor-Ayam', 1, 1, 40, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (528012, 'Medical Kit PBNC2015', 1, 1, 40, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (528006, 'MedicalKit PBNC5', 1, 1, 40, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (528010, 'MedicalKit PBNC6', 1, 1, 40, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (528011, 'Medical Kit Pigeon', 1, 1, 40, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (508001, 'SmokeGrenade', 1, 1, 0, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (508003, 'Smoke Plus', 1, 1, 0, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (527001, 'SmokeGrenade WP', 1, 1, 1, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (527003, 'WP Smoke Plus', 1, 1, 2, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (527005, 'WP Smoke Plus', 1, 1, 2, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (527002, 'SmokeGrenade WP', 1, 1, 1, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (527004, 'SmokeGrenade WP', 1, 1, 1, 1.00, 94, 30.00);
INSERT INTO "public"."item_stats" VALUES (412003, 'BombTrigger', 1, 1, 90, 1.00, 95, 30.00);
INSERT INTO "public"."item_stats" VALUES (412002, 'BombTrigger', 1, 1, 90, 1.00, 95, 30.00);
INSERT INTO "public"."item_stats" VALUES (103040, 'AUG-A3 D.', 40, 200, 26, 0.07, 85, 100.00);

-- ----------------------------
-- Table structure for logs_auto_ban
-- ----------------------------
DROP TABLE IF EXISTS "public"."logs_auto_ban";
CREATE TABLE "public"."logs_auto_ban" (
  "object_id" int8 NOT NULL DEFAULT nextval('auto_ban_seq'::regclass),
  "player_id" int8 NOT NULL DEFAULT 0,
  "login" varchar(255) COLLATE "pg_catalog"."default",
  "player_name" varchar(255) COLLATE "pg_catalog"."default",
  "type" varchar(255) COLLATE "pg_catalog"."default",
  "time" varchar(255) COLLATE "pg_catalog"."default",
  "ip" varchar(255) COLLATE "pg_catalog"."default",
  "hack_type" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of logs_auto_ban
-- ----------------------------

-- ----------------------------
-- Table structure for logs_nick_history
-- ----------------------------
DROP TABLE IF EXISTS "public"."logs_nick_history";
CREATE TABLE "public"."logs_nick_history" (
  "player_id" int8 NOT NULL DEFAULT 0,
  "from_nick" varchar(255) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "to_nick" varchar(255) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "change_date" int8 NOT NULL DEFAULT 0,
  "motive" varchar(255) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying
)
;

-- ----------------------------
-- Records of logs_nick_history
-- ----------------------------
INSERT INTO "public"."logs_nick_history" VALUES (161, '', 'Legend', 2107310905, 'First nick choosed');
INSERT INTO "public"."logs_nick_history" VALUES (162, '', 'Dev', 2108040936, 'First nick choosed');
INSERT INTO "public"."logs_nick_history" VALUES (163, '', 'Dev2', 2108041711, 'First nick choosed');

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS "public"."permissions";
CREATE TABLE "public"."permissions" (
  "id" int4 NOT NULL,
  "permission" varchar(255) COLLATE "pg_catalog"."default",
  "description" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO "public"."permissions" VALUES (1, 'observer_enabled', 'Enable observer check box in rooms');
INSERT INTO "public"."permissions" VALUES (2, 'commandscommand', 'Allow to use :commands %page% command');
INSERT INTO "public"."permissions" VALUES (3, 'giftcommand', 'Allow to use :gift %userId% %type% %value% command');
INSERT INTO "public"."permissions" VALUES (4, 'updatecommand', 'Allow to use :update %what% command');
INSERT INTO "public"."permissions" VALUES (5, 'testcommand', 'Just for speed-up dev phase');

-- ----------------------------
-- Table structure for permissions_levels
-- ----------------------------
DROP TABLE IF EXISTS "public"."permissions_levels";
CREATE TABLE "public"."permissions_levels" (
  "id" int4 NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default",
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "fake_rank" int4
)
;

-- ----------------------------
-- Records of permissions_levels
-- ----------------------------
INSERT INTO "public"."permissions_levels" VALUES (6, 'GameMaster', 'Access level for gamemaster', 53);
INSERT INTO "public"."permissions_levels" VALUES (5, 'Moderator', 'Access level for moderator', 54);
INSERT INTO "public"."permissions_levels" VALUES (4, 'Trial Moderator', 'Access level for trial moderator', 54);
INSERT INTO "public"."permissions_levels" VALUES (3, 'Streamer', 'Access level for youtube / twitch streamer', -1);
INSERT INTO "public"."permissions_levels" VALUES (2, 'Vip Gold', 'Access level for advanced vip', -1);
INSERT INTO "public"."permissions_levels" VALUES (1, 'Vip Silver', 'Access level for basic vip', -1);
INSERT INTO "public"."permissions_levels" VALUES (0, 'User', 'Access level for normal users', -1);

-- ----------------------------
-- Table structure for permissions_rights
-- ----------------------------
DROP TABLE IF EXISTS "public"."permissions_rights";
CREATE TABLE "public"."permissions_rights" (
  "level_id" int4 NOT NULL,
  "permission_id" int4
)
;

-- ----------------------------
-- Records of permissions_rights
-- ----------------------------
INSERT INTO "public"."permissions_rights" VALUES (3, 1);
INSERT INTO "public"."permissions_rights" VALUES (5, 1);
INSERT INTO "public"."permissions_rights" VALUES (4, 2);
INSERT INTO "public"."permissions_rights" VALUES (5, 2);
INSERT INTO "public"."permissions_rights" VALUES (6, 2);
INSERT INTO "public"."permissions_rights" VALUES (4, 3);
INSERT INTO "public"."permissions_rights" VALUES (5, 3);
INSERT INTO "public"."permissions_rights" VALUES (6, 4);
INSERT INTO "public"."permissions_rights" VALUES (6, 1);
INSERT INTO "public"."permissions_rights" VALUES (6, 3);
INSERT INTO "public"."permissions_rights" VALUES (6, 5);

-- ----------------------------
-- Table structure for player_bonus
-- ----------------------------
DROP TABLE IF EXISTS "public"."player_bonus";
CREATE TABLE "public"."player_bonus" (
  "player_id" int8 NOT NULL DEFAULT 0,
  "bonuses" int4 NOT NULL DEFAULT 0,
  "sightcolor" int4 NOT NULL DEFAULT 4,
  "freepass" int4 NOT NULL DEFAULT 0,
  "fakerank" int4 NOT NULL DEFAULT 55,
  "fakenick" varchar(255) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "muzzle" int4 NOT NULL DEFAULT 0
)
;

-- ----------------------------
-- Records of player_bonus
-- ----------------------------

-- ----------------------------
-- Table structure for player_characters
-- ----------------------------
DROP TABLE IF EXISTS "public"."player_characters";
CREATE TABLE "public"."player_characters" (
  "object_id" int8 NOT NULL DEFAULT nextval('player_characters_id_seq'::regclass),
  "player_id" int8 NOT NULL DEFAULT 0,
  "id" int4 NOT NULL DEFAULT 0,
  "slot" int4 NOT NULL DEFAULT 0,
  "name" varchar(33) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "createdate" int8 NOT NULL DEFAULT 1010000,
  "playtime" int8 NOT NULL DEFAULT 0
)
;

-- ----------------------------
-- Records of player_characters
-- ----------------------------

-- ----------------------------
-- Table structure for player_configs
-- ----------------------------
DROP TABLE IF EXISTS "public"."player_configs";
CREATE TABLE "public"."player_configs" (
  "owner_id" int8 NOT NULL DEFAULT 0,
  "config" int4 NOT NULL DEFAULT 55,
  "sangue" int4 NOT NULL DEFAULT 1,
  "mira" int4 NOT NULL DEFAULT 0,
  "mao" int4 NOT NULL DEFAULT 0,
  "audio1" int4 NOT NULL DEFAULT 100,
  "audio2" int4 NOT NULL DEFAULT 60,
  "audio_enable" int4 NOT NULL DEFAULT 6,
  "sensibilidade" int4 NOT NULL DEFAULT 50,
  "visao" int4 NOT NULL DEFAULT 70,
  "mouse_invertido" int4 NOT NULL DEFAULT 0,
  "msgconvite" int4 NOT NULL DEFAULT 0,
  "chatsussurro" int4 NOT NULL DEFAULT 0,
  "macro" int4 NOT NULL DEFAULT 31,
  "macro_1" varchar COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "macro_2" varchar COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "macro_3" varchar COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "macro_4" varchar COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "macro_5" varchar COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "keys" bytea NOT NULL DEFAULT '\x'::bytea
)
;

-- ----------------------------
-- Records of player_configs
-- ----------------------------

-- ----------------------------
-- Table structure for player_dailyrecord
-- ----------------------------
DROP TABLE IF EXISTS "public"."player_dailyrecord";
CREATE TABLE "public"."player_dailyrecord" (
  "player_id" int8 NOT NULL,
  "total" int4 NOT NULL DEFAULT 0,
  "wins" int4 NOT NULL DEFAULT 0,
  "loses" int4 NOT NULL DEFAULT 0,
  "draws" int4 NOT NULL DEFAULT 0,
  "kills" int4 NOT NULL DEFAULT 0,
  "deaths" int4 NOT NULL DEFAULT 0,
  "headshots" int4 NOT NULL DEFAULT 0,
  "point" int4 NOT NULL DEFAULT 0,
  "exp" int4 NOT NULL DEFAULT 0,
  "playtime" int4 NOT NULL DEFAULT 0
)
;

-- ----------------------------
-- Records of player_dailyrecord
-- ----------------------------

-- ----------------------------
-- Table structure for player_events
-- ----------------------------
DROP TABLE IF EXISTS "public"."player_events";
CREATE TABLE "public"."player_events" (
  "player_id" int8 NOT NULL DEFAULT 0,
  "last_visit_event_id" int4 NOT NULL DEFAULT 0,
  "last_visit_sequence1" int4 NOT NULL DEFAULT 0,
  "last_visit_sequence2" int4 NOT NULL DEFAULT 0,
  "next_visit_date" int4 NOT NULL DEFAULT 0,
  "last_xmas_reward_date" int8 NOT NULL DEFAULT 0,
  "last_playtime_date" int8 NOT NULL DEFAULT 0,
  "last_playtime_value" int4 NOT NULL DEFAULT 0,
  "last_playtime_finish" int4 NOT NULL DEFAULT 0,
  "last_login_date" int8 NOT NULL DEFAULT 0,
  "last_quest_date" int8 NOT NULL DEFAULT 0,
  "last_quest_finish" int4 NOT NULL DEFAULT 0
)
;

-- ----------------------------
-- Records of player_events
-- ----------------------------

-- ----------------------------
-- Table structure for player_friends
-- ----------------------------
DROP TABLE IF EXISTS "public"."player_friends";
CREATE TABLE "public"."player_friends" (
  "owner_id" int8 NOT NULL DEFAULT 0,
  "friend_id" int8 NOT NULL DEFAULT 0,
  "state" int4 NOT NULL DEFAULT 0,
  "removed" bool NOT NULL DEFAULT false
)
;

-- ----------------------------
-- Records of player_friends
-- ----------------------------

-- ----------------------------
-- Table structure for player_items
-- ----------------------------
DROP TABLE IF EXISTS "public"."player_items";
CREATE TABLE "public"."player_items" (
  "object_id" int8 NOT NULL DEFAULT nextval('items_id_seq'::regclass),
  "owner_id" int8 NOT NULL DEFAULT 0,
  "item_id" int4 NOT NULL DEFAULT 0,
  "item_name" varchar COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "count" int8 NOT NULL DEFAULT 0,
  "category" int4 NOT NULL DEFAULT 0,
  "equip" int4 NOT NULL DEFAULT 0
)
;

-- ----------------------------
-- Records of player_items
-- ----------------------------

-- ----------------------------
-- Table structure for player_messages
-- ----------------------------
DROP TABLE IF EXISTS "public"."player_messages";
CREATE TABLE "public"."player_messages" (
  "object_id" int4 NOT NULL DEFAULT nextval('message_id_seq'::regclass),
  "owner_id" int8 NOT NULL DEFAULT 0,
  "sender_id" int8 NOT NULL DEFAULT 0,
  "clan_id" int4 NOT NULL DEFAULT 0,
  "sender_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "text" varchar(255) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "type" int4 NOT NULL DEFAULT 0,
  "state" int4 NOT NULL DEFAULT 1,
  "expire" int8 NOT NULL DEFAULT 0,
  "cb" int4 NOT NULL DEFAULT 0
)
;

-- ----------------------------
-- Records of player_messages
-- ----------------------------

-- ----------------------------
-- Table structure for player_missions
-- ----------------------------
DROP TABLE IF EXISTS "public"."player_missions";
CREATE TABLE "public"."player_missions" (
  "owner_id" int8 NOT NULL DEFAULT 0,
  "actual_mission" int4 NOT NULL DEFAULT 0,
  "card1" int4 NOT NULL DEFAULT 0,
  "card2" int4 NOT NULL DEFAULT 0,
  "card3" int4 NOT NULL DEFAULT 0,
  "card4" int4 NOT NULL DEFAULT 0,
  "mission1" bytea NOT NULL DEFAULT '\x'::bytea,
  "mission2" bytea NOT NULL DEFAULT '\x'::bytea,
  "mission3" bytea NOT NULL DEFAULT '\x'::bytea,
  "mission4" bytea NOT NULL DEFAULT '\x'::bytea
)
;

-- ----------------------------
-- Records of player_missions
-- ----------------------------

-- ----------------------------
-- Table structure for player_quickstart
-- ----------------------------
DROP TABLE IF EXISTS "public"."player_quickstart";
CREATE TABLE "public"."player_quickstart" (
  "owner_id" int8 NOT NULL,
  "map_0" int4 DEFAULT 0,
  "rule_0" int4 DEFAULT 0,
  "stage_0" int4 DEFAULT 0,
  "type_0" int4 DEFAULT 0,
  "map_1" int4 DEFAULT 0,
  "rule_1" int4 DEFAULT 0,
  "stage_1" int4 DEFAULT 0,
  "type_1" int4 DEFAULT 0,
  "map_2" int4 DEFAULT 0,
  "rule_2" int4 DEFAULT 0,
  "stage_2" int4 DEFAULT 0,
  "type_2" int4 DEFAULT 0
)
;

-- ----------------------------
-- Records of player_quickstart
-- ----------------------------

-- ----------------------------
-- Table structure for player_titles
-- ----------------------------
DROP TABLE IF EXISTS "public"."player_titles";
CREATE TABLE "public"."player_titles" (
  "owner_id" int8 NOT NULL DEFAULT 0,
  "titleequiped1" int4 NOT NULL DEFAULT 0,
  "titleequiped2" int4 NOT NULL DEFAULT 0,
  "titleequiped3" int4 NOT NULL DEFAULT 0,
  "titleflags" int8 NOT NULL DEFAULT 0,
  "titleslots" int4 NOT NULL DEFAULT 1
)
;

-- ----------------------------
-- Records of player_titles
-- ----------------------------

-- ----------------------------
-- Table structure for players
-- ----------------------------
DROP TABLE IF EXISTS "public"."players";
CREATE TABLE "public"."players" (
  "login" varchar COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "password" varchar COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "player_id" int8 NOT NULL DEFAULT nextval('account_id_seq'::regclass),
  "player_name" varchar COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "name_color" int4 NOT NULL DEFAULT 0,
  "clan_id" int4 NOT NULL DEFAULT 0,
  "rank" int4 NOT NULL DEFAULT 0,
  "gp" int4 NOT NULL DEFAULT 5000000,
  "exp" int4 NOT NULL DEFAULT 0,
  "pc_cafe" int4 NOT NULL DEFAULT 0,
  "fights" int4 NOT NULL DEFAULT 0,
  "fights_win" int4 NOT NULL DEFAULT 0,
  "fights_lost" int4 NOT NULL DEFAULT 0,
  "kills_count" int4 NOT NULL DEFAULT 0,
  "deaths_count" int4 NOT NULL DEFAULT 0,
  "headshots_count" int4 NOT NULL DEFAULT 0,
  "escapes" int4 NOT NULL DEFAULT 0,
  "access_level" int4 NOT NULL DEFAULT 0,
  "lastip" varchar(32) COLLATE "pg_catalog"."default" NOT NULL DEFAULT 0,
  "email" varchar COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "last_rankup_date" int8 NOT NULL DEFAULT 1010000,
  "money" int4 NOT NULL DEFAULT 5000000,
  "online" bool NOT NULL DEFAULT false,
  "weapon_primary" int4 NOT NULL DEFAULT 104006,
  "weapon_secondary" int4 NOT NULL DEFAULT 202003,
  "weapon_melee" int4 NOT NULL DEFAULT 301001,
  "weapon_thrown_normal" int4 NOT NULL DEFAULT 407001,
  "weapon_thrown_special" int4 NOT NULL DEFAULT 508001,
  "char_red" int4 NOT NULL DEFAULT 601001,
  "char_blue" int4 NOT NULL DEFAULT 602002,
  "char_helmet" int4 NOT NULL DEFAULT 1000800000,
  "char_dino" int4 NOT NULL DEFAULT 1500511,
  "char_beret" int4 NOT NULL DEFAULT 0,
  "brooch" int4 NOT NULL DEFAULT 0,
  "insignia" int4 NOT NULL DEFAULT 0,
  "medal" int4 NOT NULL DEFAULT 0,
  "blue_order" int4 NOT NULL DEFAULT 0,
  "mission_id1" int4 NOT NULL DEFAULT 1,
  "clanaccess" int4 NOT NULL DEFAULT 0,
  "clandate" int4 NOT NULL DEFAULT 0,
  "effects" int8 NOT NULL DEFAULT 0,
  "fights_draw" int4 NOT NULL DEFAULT 0,
  "mission_id2" int4 NOT NULL DEFAULT 0,
  "mission_id3" int4 NOT NULL DEFAULT 0,
  "totalkills_count" int4 NOT NULL DEFAULT 0,
  "totalfights_count" int4 NOT NULL DEFAULT 0,
  "status" int8 NOT NULL DEFAULT 4294967295::bigint,
  "last_login" int8 NOT NULL DEFAULT 0,
  "clan_game_pt" int4 NOT NULL DEFAULT 0,
  "clan_wins_pt" int4 NOT NULL DEFAULT 0,
  "last_mac" macaddr NOT NULL DEFAULT '00:00:00:00:00:00'::macaddr,
  "ban_obj_id" int8 NOT NULL DEFAULT 0,
  "token" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "hwid" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "coin" int4 NOT NULL DEFAULT 0,
  "age" int4 NOT NULL DEFAULT 0,
  "ranked_point" int4 NOT NULL DEFAULT 0,
  "assist" int4 NOT NULL DEFAULT 0,
  "face" int4 NOT NULL DEFAULT 1000700000,
  "jacket" int4 NOT NULL DEFAULT 1000900000,
  "poket" int4 NOT NULL DEFAULT 1001000000,
  "glove" int4 NOT NULL DEFAULT 1001100000,
  "belt" int4 NOT NULL DEFAULT 1001200000,
  "holster" int4 NOT NULL DEFAULT 1001300000,
  "skin" int4 NOT NULL DEFAULT 1001400000
)
;

-- ----------------------------
-- Records of players
-- ----------------------------

-- ----------------------------
-- Table structure for server_cards
-- ----------------------------
DROP TABLE IF EXISTS "public"."server_cards";
CREATE TABLE "public"."server_cards" (
  "mission_id" int4 NOT NULL DEFAULT 0,
  "price" int4 NOT NULL DEFAULT 0,
  "enable" bool NOT NULL DEFAULT false
)
;

-- ----------------------------
-- Records of server_cards
-- ----------------------------
INSERT INTO "public"."server_cards" VALUES (1, 0, 't');
INSERT INTO "public"."server_cards" VALUES (5, 0, 't');
INSERT INTO "public"."server_cards" VALUES (6, 0, 't');
INSERT INTO "public"."server_cards" VALUES (7, 0, 't');

-- ----------------------------
-- Table structure for server_cards_awards
-- ----------------------------
DROP TABLE IF EXISTS "public"."server_cards_awards";
CREATE TABLE "public"."server_cards_awards" (
  "id" int4 NOT NULL,
  "blue_order" int4,
  "exp" int4,
  "point" int4
)
;

-- ----------------------------
-- Records of server_cards_awards
-- ----------------------------
INSERT INTO "public"."server_cards_awards" VALUES (1, 0, 0, 2000);
INSERT INTO "public"."server_cards_awards" VALUES (2, 0, 0, 0);
INSERT INTO "public"."server_cards_awards" VALUES (3, 0, 0, 0);
INSERT INTO "public"."server_cards_awards" VALUES (5, 1, 500, 0);
INSERT INTO "public"."server_cards_awards" VALUES (6, 1, 500, 0);
INSERT INTO "public"."server_cards_awards" VALUES (7, 1, 500, 0);
INSERT INTO "public"."server_cards_awards" VALUES (8, 1, 700, 0);
INSERT INTO "public"."server_cards_awards" VALUES (9, 1, 1000, 0);
INSERT INTO "public"."server_cards_awards" VALUES (10, 1, 2000, 0);
INSERT INTO "public"."server_cards_awards" VALUES (11, 1, 3000, 0);
INSERT INTO "public"."server_cards_awards" VALUES (12, 1, 4000, 0);
INSERT INTO "public"."server_cards_awards" VALUES (14, 0, 0, 0);
INSERT INTO "public"."server_cards_awards" VALUES (15, 0, 0, 0);
INSERT INTO "public"."server_cards_awards" VALUES (16, 0, 0, 0);
INSERT INTO "public"."server_cards_awards" VALUES (17, 0, 0, 0);

-- ----------------------------
-- Table structure for server_clan_ranks
-- ----------------------------
DROP TABLE IF EXISTS "public"."server_clan_ranks";
CREATE TABLE "public"."server_clan_ranks" (
  "id" int4 NOT NULL,
  "next_level" int4,
  "all_exp" int4
)
;

-- ----------------------------
-- Records of server_clan_ranks
-- ----------------------------
INSERT INTO "public"."server_clan_ranks" VALUES (0, 24000, 0);
INSERT INTO "public"."server_clan_ranks" VALUES (1, 40000, 24000);
INSERT INTO "public"."server_clan_ranks" VALUES (2, 48000, 64000);
INSERT INTO "public"."server_clan_ranks" VALUES (3, 56000, 112000);
INSERT INTO "public"."server_clan_ranks" VALUES (4, 72000, 168000);
INSERT INTO "public"."server_clan_ranks" VALUES (5, 80000, 240000);
INSERT INTO "public"."server_clan_ranks" VALUES (6, 120000, 320000);
INSERT INTO "public"."server_clan_ranks" VALUES (7, 160000, 440000);
INSERT INTO "public"."server_clan_ranks" VALUES (8, 120000, 600000);
INSERT INTO "public"."server_clan_ranks" VALUES (9, 200000, 720000);
INSERT INTO "public"."server_clan_ranks" VALUES (10, 240000, 920000);
INSERT INTO "public"."server_clan_ranks" VALUES (11, 280000, 1160000);
INSERT INTO "public"."server_clan_ranks" VALUES (12, 320000, 1440000);
INSERT INTO "public"."server_clan_ranks" VALUES (13, 360000, 1760000);
INSERT INTO "public"."server_clan_ranks" VALUES (14, 360000, 2120000);
INSERT INTO "public"."server_clan_ranks" VALUES (15, 400000, 2480000);
INSERT INTO "public"."server_clan_ranks" VALUES (16, 480000, 2880000);
INSERT INTO "public"."server_clan_ranks" VALUES (17, 560000, 3360000);
INSERT INTO "public"."server_clan_ranks" VALUES (18, 640000, 3920000);
INSERT INTO "public"."server_clan_ranks" VALUES (19, 720000, 4560000);
INSERT INTO "public"."server_clan_ranks" VALUES (20, 560000, 5280000);
INSERT INTO "public"."server_clan_ranks" VALUES (21, 640000, 5840000);
INSERT INTO "public"."server_clan_ranks" VALUES (22, 720000, 6480000);
INSERT INTO "public"."server_clan_ranks" VALUES (23, 800000, 7200000);
INSERT INTO "public"."server_clan_ranks" VALUES (24, 880000, 8000000);
INSERT INTO "public"."server_clan_ranks" VALUES (25, 960000, 8880000);
INSERT INTO "public"."server_clan_ranks" VALUES (26, 1870000, 9840000);
INSERT INTO "public"."server_clan_ranks" VALUES (27, 1120000, 11710000);
INSERT INTO "public"."server_clan_ranks" VALUES (28, 1200000, 12830000);
INSERT INTO "public"."server_clan_ranks" VALUES (29, 1280000, 14030000);
INSERT INTO "public"."server_clan_ranks" VALUES (30, 1600000, 15310000);
INSERT INTO "public"."server_clan_ranks" VALUES (31, 1620000, 16910000);
INSERT INTO "public"."server_clan_ranks" VALUES (32, 1440000, 18530000);
INSERT INTO "public"."server_clan_ranks" VALUES (33, 2560000, 19970000);
INSERT INTO "public"."server_clan_ranks" VALUES (34, 2880000, 22530000);
INSERT INTO "public"."server_clan_ranks" VALUES (35, 3200000, 25410000);
INSERT INTO "public"."server_clan_ranks" VALUES (36, 3520000, 28610000);
INSERT INTO "public"."server_clan_ranks" VALUES (37, 3840000, 32130000);
INSERT INTO "public"."server_clan_ranks" VALUES (38, 4160000, 35970000);
INSERT INTO "public"."server_clan_ranks" VALUES (39, 4480000, 40130000);
INSERT INTO "public"."server_clan_ranks" VALUES (40, 4800000, 44610000);
INSERT INTO "public"."server_clan_ranks" VALUES (41, 5120000, 49410000);
INSERT INTO "public"."server_clan_ranks" VALUES (42, 5440000, 54530000);
INSERT INTO "public"."server_clan_ranks" VALUES (43, 5760000, 59970000);
INSERT INTO "public"."server_clan_ranks" VALUES (44, 6080000, 65730000);
INSERT INTO "public"."server_clan_ranks" VALUES (45, 6800000, 71810000);
INSERT INTO "public"."server_clan_ranks" VALUES (46, 7200000, 78610000);
INSERT INTO "public"."server_clan_ranks" VALUES (47, 7600000, 85810000);
INSERT INTO "public"."server_clan_ranks" VALUES (48, 9200000, 93410000);

-- ----------------------------
-- Table structure for server_effect_flags
-- ----------------------------
DROP TABLE IF EXISTS "public"."server_effect_flags";
CREATE TABLE "public"."server_effect_flags" (
  "item_id" int4 NOT NULL,
  "effect_flag" int8 NOT NULL
)
;

-- ----------------------------
-- Records of server_effect_flags
-- ----------------------------
INSERT INTO "public"."server_effect_flags" VALUES (1600007, 1048576);
INSERT INTO "public"."server_effect_flags" VALUES (1600008, 262144);
INSERT INTO "public"."server_effect_flags" VALUES (1600017, 131072);
INSERT INTO "public"."server_effect_flags" VALUES (1600026, 32768);
INSERT INTO "public"."server_effect_flags" VALUES (1600027, 16384);
INSERT INTO "public"."server_effect_flags" VALUES (1600028, 8192);
INSERT INTO "public"."server_effect_flags" VALUES (1600029, 4096);
INSERT INTO "public"."server_effect_flags" VALUES (1600030, 2048);
INSERT INTO "public"."server_effect_flags" VALUES (1600031, 1024);
INSERT INTO "public"."server_effect_flags" VALUES (1600032, 512);
INSERT INTO "public"."server_effect_flags" VALUES (1600033, 65536);
INSERT INTO "public"."server_effect_flags" VALUES (1600034, 256);
INSERT INTO "public"."server_effect_flags" VALUES (1600035, 128);
INSERT INTO "public"."server_effect_flags" VALUES (1600036, 64);
INSERT INTO "public"."server_effect_flags" VALUES (1600040, 32);
INSERT INTO "public"."server_effect_flags" VALUES (1600044, 16);
INSERT INTO "public"."server_effect_flags" VALUES (1600064, 2097152);
INSERT INTO "public"."server_effect_flags" VALUES (1600065, 1);
INSERT INTO "public"."server_effect_flags" VALUES (1600077, 524288);
INSERT INTO "public"."server_effect_flags" VALUES (1600078, 8);
INSERT INTO "public"."server_effect_flags" VALUES (1600079, 4);
INSERT INTO "public"."server_effect_flags" VALUES (1600080, 4194304);
INSERT INTO "public"."server_effect_flags" VALUES (1600185, 8388608);
INSERT INTO "public"."server_effect_flags" VALUES (1600191, 67108864);

-- ----------------------------
-- Table structure for server_events_login
-- ----------------------------
DROP TABLE IF EXISTS "public"."server_events_login";
CREATE TABLE "public"."server_events_login" (
  "start_date" int8 NOT NULL DEFAULT 0,
  "end_date" int8 NOT NULL DEFAULT 0,
  "reward_id" int4 NOT NULL DEFAULT 0,
  "reward_count" int4 NOT NULL DEFAULT 0,
  "reward_name" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of server_events_login
-- ----------------------------

-- ----------------------------
-- Table structure for server_events_mapbonus
-- ----------------------------
DROP TABLE IF EXISTS "public"."server_events_mapbonus";
CREATE TABLE "public"."server_events_mapbonus" (
  "start_date" int8 NOT NULL DEFAULT 0,
  "end_date" int8 NOT NULL DEFAULT 0,
  "map_id" int4 NOT NULL DEFAULT 0,
  "stage_type" int4 NOT NULL DEFAULT 0,
  "percent_xp" int4 NOT NULL DEFAULT 0,
  "percent_gp" int4 NOT NULL DEFAULT 0
)
;

-- ----------------------------
-- Records of server_events_mapbonus
-- ----------------------------

-- ----------------------------
-- Table structure for server_events_playtime
-- ----------------------------
DROP TABLE IF EXISTS "public"."server_events_playtime";
CREATE TABLE "public"."server_events_playtime" (
  "start_date" int8 NOT NULL DEFAULT 0,
  "end_date" int8 NOT NULL DEFAULT 0,
  "title" varchar(30) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "seconds_target" int8 NOT NULL DEFAULT 1000,
  "good_reward1" int4 NOT NULL DEFAULT 0,
  "good_reward2" int4 NOT NULL DEFAULT 0,
  "good_count1" int4 NOT NULL DEFAULT 0,
  "good_count2" int4 NOT NULL DEFAULT 0
)
;

-- ----------------------------
-- Records of server_events_playtime
-- ----------------------------

-- ----------------------------
-- Table structure for server_events_quest
-- ----------------------------
DROP TABLE IF EXISTS "public"."server_events_quest";
CREATE TABLE "public"."server_events_quest" (
  "start_date" int8 NOT NULL DEFAULT 0,
  "end_date" int8 NOT NULL DEFAULT 0
)
;

-- ----------------------------
-- Records of server_events_quest
-- ----------------------------

-- ----------------------------
-- Table structure for server_events_rankup
-- ----------------------------
DROP TABLE IF EXISTS "public"."server_events_rankup";
CREATE TABLE "public"."server_events_rankup" (
  "start_date" int8 NOT NULL DEFAULT 0,
  "end_date" int8 NOT NULL DEFAULT 0,
  "percent_xp" int4 NOT NULL DEFAULT 0,
  "percent_gp" int4 NOT NULL DEFAULT 0
)
;

-- ----------------------------
-- Records of server_events_rankup
-- ----------------------------

-- ----------------------------
-- Table structure for server_events_visit
-- ----------------------------
DROP TABLE IF EXISTS "public"."server_events_visit";
CREATE TABLE "public"."server_events_visit" (
  "event_id" int4 NOT NULL DEFAULT nextval('check_event_seq'::regclass),
  "start_date" int8 NOT NULL DEFAULT 0,
  "end_date" int8 NOT NULL DEFAULT 0,
  "title" varchar(59) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "checks" int4 NOT NULL DEFAULT 7,
  "goods1" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "counts1" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "goods2" varchar COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "counts2" varchar COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying
)
;

-- ----------------------------
-- Records of server_events_visit
-- ----------------------------

-- ----------------------------
-- Table structure for server_events_xmas
-- ----------------------------
DROP TABLE IF EXISTS "public"."server_events_xmas";
CREATE TABLE "public"."server_events_xmas" (
  "start_date" int8 NOT NULL DEFAULT 0,
  "end_date" int8 NOT NULL DEFAULT 0
)
;

-- ----------------------------
-- Records of server_events_xmas
-- ----------------------------

-- ----------------------------
-- Table structure for server_inventory_template
-- ----------------------------
DROP TABLE IF EXISTS "public"."server_inventory_template";
CREATE TABLE "public"."server_inventory_template" (
  "acquisition" int4 NOT NULL,
  "item_id" int4 NOT NULL,
  "item_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "item_count" int4 NOT NULL,
  "item_equip" int4 NOT NULL
)
;

-- ----------------------------
-- Records of server_inventory_template
-- ----------------------------
INSERT INTO "public"."server_inventory_template" VALUES (0, 104006, 'K-1', 1, 3);
INSERT INTO "public"."server_inventory_template" VALUES (0, 105003, 'SSG-69', 1, 3);
INSERT INTO "public"."server_inventory_template" VALUES (0, 202003, 'K-5', 1, 3);
INSERT INTO "public"."server_inventory_template" VALUES (0, 301001, 'M-7', 1, 3);
INSERT INTO "public"."server_inventory_template" VALUES (0, 407001, 'K-400', 1, 3);
INSERT INTO "public"."server_inventory_template" VALUES (0, 508001, 'Smoke', 1, 3);
INSERT INTO "public"."server_inventory_template" VALUES (0, 1500511, 'Raptor', 1, 3);
INSERT INTO "public"."server_inventory_template" VALUES (0, 1500512, 'String', 1, 3);
INSERT INTO "public"."server_inventory_template" VALUES (0, 1500513, 'Acid', 1, 3);
INSERT INTO "public"."server_inventory_template" VALUES (0, 1000700000, 'Character Face', 1, 3);
INSERT INTO "public"."server_inventory_template" VALUES (0, 1000800000, 'Character Head', 1, 3);
INSERT INTO "public"."server_inventory_template" VALUES (0, 1000900000, 'Character Jacket', 1, 3);
INSERT INTO "public"."server_inventory_template" VALUES (0, 1001000000, 'Character Poket', 1, 3);
INSERT INTO "public"."server_inventory_template" VALUES (0, 1001100000, 'Character Glove', 1, 3);
INSERT INTO "public"."server_inventory_template" VALUES (0, 1001200000, 'Character Belt', 1, 3);
INSERT INTO "public"."server_inventory_template" VALUES (0, 1001300000, 'Character Holster', 1, 3);
INSERT INTO "public"."server_inventory_template" VALUES (0, 1001400000, 'Character Skin', 1, 3);
INSERT INTO "public"."server_inventory_template" VALUES (2, 601001, 'Red Bulls', 1, 3);
INSERT INTO "public"."server_inventory_template" VALUES (2, 602002, 'Acid Pol', 1, 3);
INSERT INTO "public"."server_inventory_template" VALUES (0, 103004, 'K-2', 1, 3);

-- ----------------------------
-- Table structure for server_rank_awards
-- ----------------------------
DROP TABLE IF EXISTS "public"."server_rank_awards";
CREATE TABLE "public"."server_rank_awards" (
  "rank_id" int4 NOT NULL,
  "item_id" int4 NOT NULL,
  "item_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "item_count" int4 NOT NULL,
  "item_equip" int4 NOT NULL
)
;

-- ----------------------------
-- Records of server_rank_awards
-- ----------------------------
INSERT INTO "public"."server_rank_awards" VALUES (0, 103005, 'F2000_Ext. (100 Qty)', 50, 1);
INSERT INTO "public"."server_rank_awards" VALUES (0, 315001, 'Dual_Knife (100 Qty)', 50, 1);
INSERT INTO "public"."server_rank_awards" VALUES (1, 105026, 'L115A1_Black (1 Day)', 86400, 1);
INSERT INTO "public"."server_rank_awards" VALUES (1, 105068, 'XM-2010 (100 Qty)', 50, 1);
INSERT INTO "public"."server_rank_awards" VALUES (2, 105012, 'Dragunov_CG. (1 Day)', 86400, 1);
INSERT INTO "public"."server_rank_awards" VALUES (2, 601010, 'Rica (100 Qty)', 50, 1);
INSERT INTO "public"."server_rank_awards" VALUES (3, 105119, 'XM-2010_Prime (1 Day)', 86400, 1);
INSERT INTO "public"."server_rank_awards" VALUES (3, 103236, 'K2C (100 Qty)', 50, 1);
INSERT INTO "public"."server_rank_awards" VALUES (4, 104004, 'MP7_Ext. (100 Qty)', 50, 1);
INSERT INTO "public"."server_rank_awards" VALUES (4, 508002, 'FlashBang (100 Qty)', 50, 1);
INSERT INTO "public"."server_rank_awards" VALUES (5, 104001, 'MP5K_Ext. (100 Qty)', 50, 1);
INSERT INTO "public"."server_rank_awards" VALUES (5, 103174, 'XM8 (100 Qty)', 50, 1);
INSERT INTO "public"."server_rank_awards" VALUES (6, 103167, 'AN-94_G. (1 Day)', 86400, 1);
INSERT INTO "public"."server_rank_awards" VALUES (6, 104161, 'MP9_Ext._G. (1 Day)', 86400, 1);
INSERT INTO "public"."server_rank_awards" VALUES (7, 105001, 'Dragunov (100 Qty)', 50, 1);
INSERT INTO "public"."server_rank_awards" VALUES (7, 104003, 'K-1_Ext. (100 Qty)', 50, 1);
INSERT INTO "public"."server_rank_awards" VALUES (8, 106020, 'Kel-Tec_KSG-15 (1 Day)', 86400, 1);
INSERT INTO "public"."server_rank_awards" VALUES (8, 105094, 'SVU_G. (1 Day)', 86400, 1);
INSERT INTO "public"."server_rank_awards" VALUES (9, 103102, 'HK-417 (100 Qty)', 50, 1);
INSERT INTO "public"."server_rank_awards" VALUES (9, 301014, 'GH5007 (1 Day)', 86400, 1);
INSERT INTO "public"."server_rank_awards" VALUES (10, 508002, 'FlashBang (100 Qty)', 50, 1);
INSERT INTO "public"."server_rank_awards" VALUES (10, 104008, 'UMP46_Ext. (100 Qty)', 50, 1);
INSERT INTO "public"."server_rank_awards" VALUES (11, 213003, 'P99&Hak_D (1 Day)', 86400, 1);
INSERT INTO "public"."server_rank_awards" VALUES (11, 104029, 'P90_Ext._D (1 Day)', 86400, 1);
INSERT INTO "public"."server_rank_awards" VALUES (12, 104004, 'MP7_Ext. (100 Qty)', 50, 1);
INSERT INTO "public"."server_rank_awards" VALUES (12, 105159, 'AS-50_G. (1 Day)', 86400, 1);
INSERT INTO "public"."server_rank_awards" VALUES (13, 407004, 'K-413 (100 Qty)', 50, 1);
INSERT INTO "public"."server_rank_awards" VALUES (13, 508007, 'Yellow_Smoke_Grenade (1 Day)', 86400, 1);
INSERT INTO "public"."server_rank_awards" VALUES (14, 103123, 'TAR-21 (1 Day)', 86400, 1);
INSERT INTO "public"."server_rank_awards" VALUES (14, 105094, 'SVU_G. (1 Day)', 86400, 1);
INSERT INTO "public"."server_rank_awards" VALUES (15, 104001, 'MP5K_Ext.', 50, 1);
INSERT INTO "public"."server_rank_awards" VALUES (15, 301017, 'Fang_Blade (1 Day)', 86400, 1);
INSERT INTO "public"."server_rank_awards" VALUES (16, 104352, 'MX4 (100 Qty)', 50, 1);
INSERT INTO "public"."server_rank_awards" VALUES (16, 105119, 'XM-2010_Prime (1 Day)', 86400, 1);
INSERT INTO "public"."server_rank_awards" VALUES (17, 103169, 'TAR-21_G. (7 Days)', 604800, 1);
INSERT INTO "public"."server_rank_awards" VALUES (17, 103246, 'AK-12 (30 Days)', 2592000, 1);
INSERT INTO "public"."server_rank_awards" VALUES (18, 301018, 'BallisticKnife (7 Days)', 604800, 1);
INSERT INTO "public"."server_rank_awards" VALUES (18, 103169, 'TAR-21_G. (30 Days)', 2592000, 1);
INSERT INTO "public"."server_rank_awards" VALUES (19, 106018, 'SPAS-15_MSC (30 Days)', 2592000, 1);
INSERT INTO "public"."server_rank_awards" VALUES (19, 105006, 'Dragunov_G. (7 Days)', 604800, 1);
INSERT INTO "public"."server_rank_awards" VALUES (20, 301018, 'BallisticKnife (7 Days)', 604800, 1);
INSERT INTO "public"."server_rank_awards" VALUES (20, 103166, 'SC-2010_D (7 Days)', 604800, 1);
INSERT INTO "public"."server_rank_awards" VALUES (21, 103095, 'SCAR-L_Recon (30 Days)', 2592000, 1);
INSERT INTO "public"."server_rank_awards" VALUES (21, 800033, 'Mask_Red_Cross +2 dmg 5% (30 Days)', 2592000, 1);
INSERT INTO "public"."server_rank_awards" VALUES (22, 105015, 'L115A1_G. (30 Days)', 2592000, 1);
INSERT INTO "public"."server_rank_awards" VALUES (22, 1707119, 'Points 150%', 1, 1);
INSERT INTO "public"."server_rank_awards" VALUES (23, 105017, 'L115A1_D (7 Days)', 604800, 1);
INSERT INTO "public"."server_rank_awards" VALUES (23, 301083, 'Nunchaku (30 Days)', 2592000, 1);
INSERT INTO "public"."server_rank_awards" VALUES (24, 103177, 'XM8_G. (30 Days)', 2592000, 1);
INSERT INTO "public"."server_rank_awards" VALUES (24, 103041, 'AK_SOPMOD_CG (30 Days)', 2592000, 1);
INSERT INTO "public"."server_rank_awards" VALUES (25, 2700007, 'Red Star Beret (7 Days)', 604800, 1);
INSERT INTO "public"."server_rank_awards" VALUES (25, 301018, 'BallisticKnife (30 Days)', 2592000, 1);
INSERT INTO "public"."server_rank_awards" VALUES (26, 1707119, 'Points 150%', 1, 1);
INSERT INTO "public"."server_rank_awards" VALUES (26, 800036, 'Mask_Target +2 recoil control (7 Days)', 604800, 1);
INSERT INTO "public"."server_rank_awards" VALUES (27, 601020, 'Reinforced D-Fox (30 Days)', 2592000, 1);
INSERT INTO "public"."server_rank_awards" VALUES (27, 407063, 'K-413_Ice (30 Days)', 2592000, 1);
INSERT INTO "public"."server_rank_awards" VALUES (28, 800024, 'Mask_Green_Jungle +2 (30 Days)', 2592000, 1);
INSERT INTO "public"."server_rank_awards" VALUES (28, 105010, 'Dragunov_SL. (30 Days)', 2592000, 1);
INSERT INTO "public"."server_rank_awards" VALUES (29, 103057, 'Vz._52 (30 Days)', 2592000, 1);
INSERT INTO "public"."server_rank_awards" VALUES (29, 1730003, 'Exp 150%', 1, 1);
INSERT INTO "public"."server_rank_awards" VALUES (30, 106012, 'SPAS-15_D (30 Days)', 2592000, 1);
INSERT INTO "public"."server_rank_awards" VALUES (30, 103057, 'Vz._52 (30 Days)', 2592000, 1);
INSERT INTO "public"."server_rank_awards" VALUES (31, 104075, 'P90_G (30 Days)', 2592000, 1);
INSERT INTO "public"."server_rank_awards" VALUES (31, 105026, 'L115A1_Black (7 Days)', 604800, 1);
INSERT INTO "public"."server_rank_awards" VALUES (32, 104159, 'OA-93_D (30 Days)', 2592000, 1);
INSERT INTO "public"."server_rank_awards" VALUES (32, 105159, 'AS-50_G. (30 Days)', 2592000, 1);
INSERT INTO "public"."server_rank_awards" VALUES (33, 508005, 'Pink_Smoke_Grenade (7 Days)', 604800, 1);
INSERT INTO "public"."server_rank_awards" VALUES (33, 104032, 'P90_M.C_D (7 Days)', 604800, 1);
INSERT INTO "public"."server_rank_awards" VALUES (34, 800033, 'Mask_Red_Cross +2 dmg 5% (30 Days)', 2592000, 1);
INSERT INTO "public"."server_rank_awards" VALUES (34, 105123, 'Tactilite-T2 (30 Days)', 2592000, 1);
INSERT INTO "public"."server_rank_awards" VALUES (35, 105012, 'Dragunov_CG. (7 Days)', 604800, 1);
INSERT INTO "public"."server_rank_awards" VALUES (35, 105093, 'VSK94_G. (7 Days)', 604800, 1);
INSERT INTO "public"."server_rank_awards" VALUES (36, 1800052, 'Change_Clan_Mark', 1, 1);
INSERT INTO "public"."server_rank_awards" VALUES (36, 105095, 'DSR-1_G. (30 Days)', 2592000, 1);
INSERT INTO "public"."server_rank_awards" VALUES (37, 104162, 'PP-19_Bizon_G. (30 Days)', 2592000, 1);
INSERT INTO "public"."server_rank_awards" VALUES (37, 105011, 'Dragunov_CS. (30 Days)', 2592000, 1);
INSERT INTO "public"."server_rank_awards" VALUES (38, 508006, 'Blue_Smoke_Grenade (30 Days)', 2592000, 1);
INSERT INTO "public"."server_rank_awards" VALUES (38, 106048, 'UTS-15_G. (7 Days)', 604800, 1);
INSERT INTO "public"."server_rank_awards" VALUES (39, 103285, 'Groza_G. (30 Days)', 2592000, 1);
INSERT INTO "public"."server_rank_awards" VALUES (39, 1701027, 'Quick Reload Weapon 1d', 1, 1);
INSERT INTO "public"."server_rank_awards" VALUES (40, 103177, 'XM8_G. (7 Days)', 604800, 1);
INSERT INTO "public"."server_rank_awards" VALUES (40, 301043, 'GH5007_G (30 Days)', 2592000, 1);
INSERT INTO "public"."server_rank_awards" VALUES (41, 106090, 'M1887_Beyond (7 Days)', 604800, 1);
INSERT INTO "public"."server_rank_awards" VALUES (41, 800025, 'Mask_Yellow_Desert +2 (7 Days)', 604800, 1);
INSERT INTO "public"."server_rank_awards" VALUES (42, 527001, 'WP_Smoke (30 Days)', 2592000, 1);
INSERT INTO "public"."server_rank_awards" VALUES (42, 407007, 'K-413_G (7 Days)', 604800, 1);
INSERT INTO "public"."server_rank_awards" VALUES (43, 1730119, 'Points 150%', 1, 1);
INSERT INTO "public"."server_rank_awards" VALUES (43, 800024, 'Mask_Green_Jungle +2 (7 Days)', 604800, 1);
INSERT INTO "public"."server_rank_awards" VALUES (44, 301014, 'GH5007 (7 Days)', 604800, 1);
INSERT INTO "public"."server_rank_awards" VALUES (44, 214004, 'Dual_D-Eagle_G (7 Days)', 604800, 1);
INSERT INTO "public"."server_rank_awards" VALUES (45, 214005, 'Dual_Handgun_D (7 Days)', 604800, 1);
INSERT INTO "public"."server_rank_awards" VALUES (45, 1730026, 'Quick Change Weapon 30', 1, 1);
INSERT INTO "public"."server_rank_awards" VALUES (46, 104075, 'P90_G (30 Days)', 2592000, 1);
INSERT INTO "public"."server_rank_awards" VALUES (46, 106047, 'Cerberus (7 Days)', 604800, 1);
INSERT INTO "public"."server_rank_awards" VALUES (47, 105145, 'PGM_Hecate2 (30 Days)', 2592000, 1);
INSERT INTO "public"."server_rank_awards" VALUES (47, 105159, 'AS-50_G. (7 Days)', 604800, 1);
INSERT INTO "public"."server_rank_awards" VALUES (48, 301018, 'BallisticKnife (7 Days)', 604800, 1);
INSERT INTO "public"."server_rank_awards" VALUES (48, 105017, 'L115A1_D (30 Days)', 2592000, 1);
INSERT INTO "public"."server_rank_awards" VALUES (49, 105095, 'DSR-1_G. (7 Days)', 604800, 1);
INSERT INTO "public"."server_rank_awards" VALUES (49, 103167, 'AN-94_G. (30 Days)', 2592000, 1);
INSERT INTO "public"."server_rank_awards" VALUES (50, 104219, 'P90_M.C_G. (30 Days)', 2592000, 1);
INSERT INTO "public"."server_rank_awards" VALUES (50, 214005, 'Dual_Handgun_D (7 Days)', 604800, 1);
INSERT INTO "public"."server_rank_awards" VALUES (51, 800022, 'Mask_Black +1 (7 Days)', 604800, 1);
INSERT INTO "public"."server_rank_awards" VALUES (51, 2700005, 'Beret_Cavalry (30 Days)', 2592000, 1);
INSERT INTO "public"."server_rank_awards" VALUES (52, 105159, 'AS-50_G. (30 Days)', 2592000, 1);
INSERT INTO "public"."server_rank_awards" VALUES (52, 104039, 'Kriss_S.V_Black (30 Days)', 2592000, 1);
INSERT INTO "public"."server_rank_awards" VALUES (53, 105030, 'Cheytac_M200 (7 Days)', 604800, 1);
INSERT INTO "public"."server_rank_awards" VALUES (53, 800036, 'Mask_Target +2 recoil control (30 Days)', 2592000, 1);
INSERT INTO "public"."server_rank_awards" VALUES (54, 105010, 'Dragunov_SL. (30 Days)', 2592000, 1);
INSERT INTO "public"."server_rank_awards" VALUES (54, 106012, 'SPAS-15_D (30 Days)', 2592000, 1);
INSERT INTO "public"."server_rank_awards" VALUES (55, 103221, 'AK_SOPMOD_G. (30 Days)', 2592000, 1);
INSERT INTO "public"."server_rank_awards" VALUES (55, 601022, 'Reinforced Viper Red (30 Days)', 2592000, 1);

-- ----------------------------
-- Table structure for server_ranks
-- ----------------------------
DROP TABLE IF EXISTS "public"."server_ranks";
CREATE TABLE "public"."server_ranks" (
  "id" int4 NOT NULL,
  "next_level" int4,
  "point_up" int4,
  "all_exp" int4
)
;

-- ----------------------------
-- Records of server_ranks
-- ----------------------------
INSERT INTO "public"."server_ranks" VALUES (0, 2000, 0, 0);
INSERT INTO "public"."server_ranks" VALUES (1, 3000, 1000, 2000);
INSERT INTO "public"."server_ranks" VALUES (2, 4000, 2000, 5000);
INSERT INTO "public"."server_ranks" VALUES (3, 5000, 4000, 9000);
INSERT INTO "public"."server_ranks" VALUES (4, 7000, 6000, 14000);
INSERT INTO "public"."server_ranks" VALUES (5, 9000, 8000, 21000);
INSERT INTO "public"."server_ranks" VALUES (6, 11000, 8000, 30000);
INSERT INTO "public"."server_ranks" VALUES (7, 13500, 8000, 41000);
INSERT INTO "public"."server_ranks" VALUES (8, 16000, 10000, 54500);
INSERT INTO "public"."server_ranks" VALUES (9, 18500, 10000, 70500);
INSERT INTO "public"."server_ranks" VALUES (10, 21000, 10000, 89000);
INSERT INTO "public"."server_ranks" VALUES (11, 24000, 10000, 110000);
INSERT INTO "public"."server_ranks" VALUES (12, 27000, 12000, 134000);
INSERT INTO "public"."server_ranks" VALUES (13, 30000, 12000, 161000);
INSERT INTO "public"."server_ranks" VALUES (14, 33000, 12000, 191000);
INSERT INTO "public"."server_ranks" VALUES (15, 36000, 12000, 224000);
INSERT INTO "public"."server_ranks" VALUES (16, 41000, 12000, 260000);
INSERT INTO "public"."server_ranks" VALUES (17, 46000, 14000, 301000);
INSERT INTO "public"."server_ranks" VALUES (18, 51000, 14000, 347000);
INSERT INTO "public"."server_ranks" VALUES (19, 56000, 14000, 398000);
INSERT INTO "public"."server_ranks" VALUES (20, 62000, 14000, 454000);
INSERT INTO "public"."server_ranks" VALUES (21, 68000, 16000, 516000);
INSERT INTO "public"."server_ranks" VALUES (22, 74000, 16000, 584000);
INSERT INTO "public"."server_ranks" VALUES (23, 80000, 16000, 658000);
INSERT INTO "public"."server_ranks" VALUES (24, 86000, 16000, 738000);
INSERT INTO "public"."server_ranks" VALUES (25, 93000, 16000, 824000);
INSERT INTO "public"."server_ranks" VALUES (26, 100000, 18000, 917000);
INSERT INTO "public"."server_ranks" VALUES (27, 107000, 18000, 1017000);
INSERT INTO "public"."server_ranks" VALUES (28, 114000, 18000, 1124000);
INSERT INTO "public"."server_ranks" VALUES (29, 121000, 18000, 1238000);
INSERT INTO "public"."server_ranks" VALUES (30, 151000, 18000, 1359000);
INSERT INTO "public"."server_ranks" VALUES (31, 181000, 20000, 1510000);
INSERT INTO "public"."server_ranks" VALUES (32, 211000, 20000, 1691000);
INSERT INTO "public"."server_ranks" VALUES (33, 241000, 20000, 1902000);
INSERT INTO "public"."server_ranks" VALUES (34, 271000, 20000, 2143000);
INSERT INTO "public"."server_ranks" VALUES (35, 311000, 20000, 2414000);
INSERT INTO "public"."server_ranks" VALUES (36, 351000, 22000, 2725000);
INSERT INTO "public"."server_ranks" VALUES (37, 391000, 22000, 3076000);
INSERT INTO "public"."server_ranks" VALUES (38, 413000, 22000, 3467000);
INSERT INTO "public"."server_ranks" VALUES (39, 471000, 22000, 3898000);
INSERT INTO "public"."server_ranks" VALUES (40, 521000, 22000, 4369000);
INSERT INTO "public"."server_ranks" VALUES (41, 571000, 24000, 4890000);
INSERT INTO "public"."server_ranks" VALUES (42, 621000, 24000, 5461000);
INSERT INTO "public"."server_ranks" VALUES (43, 671000, 24000, 6082000);
INSERT INTO "public"."server_ranks" VALUES (44, 721000, 24000, 6753000);
INSERT INTO "public"."server_ranks" VALUES (45, 781000, 24000, 7474000);
INSERT INTO "public"."server_ranks" VALUES (46, 851000, 28000, 8255000);
INSERT INTO "public"."server_ranks" VALUES (47, 931000, 32000, 9106000);
INSERT INTO "public"."server_ranks" VALUES (48, 1021000, 36000, 10037000);
INSERT INTO "public"."server_ranks" VALUES (49, 1121000, 40000, 11058000);
INSERT INTO "public"."server_ranks" VALUES (50, 100000000, 60000, 12179000);
INSERT INTO "public"."server_ranks" VALUES (51, -1, 0, 0);
INSERT INTO "public"."server_ranks" VALUES (52, 0, 0, 0);
INSERT INTO "public"."server_ranks" VALUES (53, 0, 0, 0);
INSERT INTO "public"."server_ranks" VALUES (54, 0, 0, 0);
INSERT INTO "public"."server_ranks" VALUES (55, 0, 0, 0);
INSERT INTO "public"."server_ranks" VALUES (61, 200000000, 60000, 22179000);

-- ----------------------------
-- Table structure for server_settings
-- ----------------------------
DROP TABLE IF EXISTS "public"."server_settings";
CREATE TABLE "public"."server_settings" (
  "config_id" int4 NOT NULL DEFAULT 0,
  "only_gm" bool NOT NULL DEFAULT false,
  "enable_missions" bool NOT NULL DEFAULT true,
  "userfilelist" varchar(32) COLLATE "pg_catalog"."default" NOT NULL DEFAULT 0,
  "version" varchar(8) COLLATE "pg_catalog"."default" NOT NULL DEFAULT 0,
  "enable_gift" bool NOT NULL DEFAULT false,
  "exit_url" varchar(255) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "chat_color" int8 NOT NULL DEFAULT 0,
  "announce_color" int8 NOT NULL DEFAULT 0,
  "chat" varchar COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "announce" varchar COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "enable_clan" bool,
  "enable_greenblood" bool
)
;

-- ----------------------------
-- Records of server_settings
-- ----------------------------
INSERT INTO "public"."server_settings" VALUES (1, 'f', 't', '-1', '3.24', 't', 'http://127.0.0.1', 16711680, 16776960, 'Chat message can be changed from database!', 'Announce can be changed from database!', 't', 'f');

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."account_id_seq"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."accounts_id_seq"', 10, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."auto_ban_seq"', 10, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."ban_seq"', 10, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."channels_id_seq"', 10, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."check_event_seq"', 11, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."clan_seq"', 23, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."clans_id_seq"', 10, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."contas_seq"', 10, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."gameservers_id_seq"', 10, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."gift_id_seq"', 10, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."ipsystem_id_seq"', 10, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."items_id_seq"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."jogador_amigo_seq"', 10, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."jogador_inventario_seq"', 10, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."jogador_mensagem_seq"', 10, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."loja_seq"', 10, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."message_id_seq"', 46, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."player_characters_id_seq"', 312, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."player_eqipment_id_seq"', 10, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."player_friends_player_account_id_seq"', 10, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."player_topups_seq"', 10, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."players_id_seq"', 10, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."storage_seq"', 10, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."templates_id_seq"', 10, false);

-- ----------------------------
-- Primary Key structure for table clans
-- ----------------------------
ALTER TABLE "public"."clans" ADD CONSTRAINT "clan_data_pkey" PRIMARY KEY ("clan_id");

-- ----------------------------
-- Primary Key structure for table item_goods
-- ----------------------------
ALTER TABLE "public"."item_goods" ADD CONSTRAINT "item_goods_pkey" PRIMARY KEY ("item_id");

-- ----------------------------
-- Primary Key structure for table item_goods_effects
-- ----------------------------
ALTER TABLE "public"."item_goods_effects" ADD CONSTRAINT "item_goods_effects_pkey" PRIMARY KEY ("effect_id");

-- ----------------------------
-- Primary Key structure for table item_goods_sets
-- ----------------------------
ALTER TABLE "public"."item_goods_sets" ADD CONSTRAINT "item_goods_sets_pkey" PRIMARY KEY ("set_id");

-- ----------------------------
-- Primary Key structure for table item_goods_sets_items
-- ----------------------------
ALTER TABLE "public"."item_goods_sets_items" ADD CONSTRAINT "item_goods_sets_items_pkey" PRIMARY KEY ("set_id", "item_id");

-- ----------------------------
-- Primary Key structure for table item_repair
-- ----------------------------
ALTER TABLE "public"."item_repair" ADD CONSTRAINT "shop_item_repair_pkey" PRIMARY KEY ("item_id");

-- ----------------------------
-- Primary Key structure for table item_stats
-- ----------------------------
ALTER TABLE "public"."item_stats" ADD CONSTRAINT "items_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table permissions
-- ----------------------------
ALTER TABLE "public"."permissions" ADD CONSTRAINT "permissions_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table permissions_levels
-- ----------------------------
ALTER TABLE "public"."permissions_levels" ADD CONSTRAINT "permissions_levels_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table player_characters
-- ----------------------------
ALTER TABLE "public"."player_characters" ADD CONSTRAINT "player_characters_pkey" PRIMARY KEY ("object_id");

-- ----------------------------
-- Primary Key structure for table player_configs
-- ----------------------------
ALTER TABLE "public"."player_configs" ADD CONSTRAINT "player_configs_pkey" PRIMARY KEY ("owner_id");

-- ----------------------------
-- Primary Key structure for table player_quickstart
-- ----------------------------
ALTER TABLE "public"."player_quickstart" ADD CONSTRAINT "player_quickstart_pkey" PRIMARY KEY ("owner_id");

-- ----------------------------
-- Indexes structure for table players
-- ----------------------------
CREATE UNIQUE INDEX "player_id" ON "public"."players" USING btree (
  "player_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table players
-- ----------------------------
ALTER TABLE "public"."players" ADD CONSTRAINT "accounts_pkey" PRIMARY KEY ("player_id") WITH (fillfactor=23);

-- ----------------------------
-- Primary Key structure for table server_cards_awards
-- ----------------------------
ALTER TABLE "public"."server_cards_awards" ADD CONSTRAINT "server_cards_awards_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table server_clan_ranks
-- ----------------------------
ALTER TABLE "public"."server_clan_ranks" ADD CONSTRAINT "server_clan_ranks_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table server_ranks
-- ----------------------------
ALTER TABLE "public"."server_ranks" ADD CONSTRAINT "server_ranks_pkey" PRIMARY KEY ("id");
