-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 17 jan 2020 om 10:36
-- Serverversie: 10.4.6-MariaDB
-- PHP-versie: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `osrp`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `achievements`
--

CREATE TABLE `achievements` (
  `uid` int(10) DEFAULT NULL,
  `achievement` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `actordb`
--

CREATE TABLE `actordb` (
  `ID` int(11) NOT NULL,
  `ActorName` text NOT NULL,
  `ActorVirtual` int(11) NOT NULL,
  `ActorX` float NOT NULL,
  `ActorA` float NOT NULL,
  `ActorY` float NOT NULL,
  `ActorZ` float NOT NULL,
  `Skin` int(11) NOT NULL,
  `AActive` int(11) NOT NULL,
  `Text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `admins`
--

CREATE TABLE `admins` (
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `aName` varchar(255) NOT NULL,
  `aLevel` int(11) NOT NULL,
  `totalReports` int(11) NOT NULL,
  `monthlyReports` int(11) NOT NULL,
  `weeklyReports` int(11) NOT NULL,
  `monthlyReset` int(11) NOT NULL,
  `weeklyReset` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `arrestpoints`
--

CREATE TABLE `arrestpoints` (
  `id` int(2) NOT NULL,
  `PosX` float(10,5) NOT NULL DEFAULT 0.00000,
  `PosY` float(10,5) NOT NULL DEFAULT 0.00000,
  `PosZ` float(10,5) NOT NULL DEFAULT 0.00000,
  `VW` int(5) NOT NULL DEFAULT 0,
  `Int` int(5) NOT NULL DEFAULT 0,
  `Type` int(1) NOT NULL DEFAULT 0,
  `jailVW` int(5) NOT NULL DEFAULT 0,
  `jailInt` int(5) NOT NULL DEFAULT 0,
  `jailpos1x` float(10,5) NOT NULL DEFAULT 0.00000,
  `jailpos1y` float(10,5) NOT NULL DEFAULT 0.00000,
  `jailpos1z` float(10,5) NOT NULL DEFAULT 0.00000,
  `jailpos2x` float(10,5) NOT NULL DEFAULT 0.00000,
  `jailpos2y` float(10,5) NOT NULL DEFAULT 0.00000,
  `jailpos2z` float(10,5) NOT NULL DEFAULT 0.00000
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `auctions`
--

CREATE TABLE `auctions` (
  `id` int(11) NOT NULL,
  `BiddingFor` varchar(64) NOT NULL DEFAULT '(none)',
  `InProgress` int(11) NOT NULL DEFAULT 0,
  `Bid` int(11) NOT NULL DEFAULT 0,
  `Bidder` int(11) NOT NULL DEFAULT 0,
  `Expires` int(11) NOT NULL DEFAULT 0,
  `Wining` varchar(24) NOT NULL DEFAULT '(none)',
  `Increment` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `backpack`
--

CREATE TABLE `backpack` (
  `pid` int(11) NOT NULL,
  `type` int(2) NOT NULL,
  `store1` int(2) DEFAULT NULL,
  `store2` int(2) DEFAULT NULL,
  `food` int(11) NOT NULL DEFAULT 0,
  `food2` int(11) NOT NULL DEFAULT 0,
  `mats` int(11) NOT NULL DEFAULT 0,
  `pot` int(5) DEFAULT 0,
  `crack` int(5) DEFAULT 0,
  `heroine` int(5) DEFAULT 0,
  `weap1` varchar(50) DEFAULT NULL,
  `weap2` varchar(50) DEFAULT NULL,
  `weap3` varchar(50) DEFAULT NULL,
  `weap4` varchar(50) DEFAULT NULL,
  `weap5` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `bans`
--

CREATE TABLE `bans` (
  `id` int(10) NOT NULL,
  `username` varchar(24) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `bannedby` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `reason` varchar(128) DEFAULT NULL,
  `permanent` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `businesses`
--

CREATE TABLE `businesses` (
  `id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT 0,
  `owner` varchar(24) DEFAULT 'Nobody',
  `type` tinyint(2) DEFAULT 0,
  `price` int(10) DEFAULT 0,
  `entryfee` int(10) DEFAULT 0,
  `locked` tinyint(1) DEFAULT 0,
  `timestamp` int(10) DEFAULT 0,
  `pos_x` float DEFAULT 0,
  `pos_y` float DEFAULT 0,
  `pos_z` float DEFAULT 0,
  `pos_a` float DEFAULT 0,
  `int_x` float DEFAULT 0,
  `int_y` float DEFAULT 0,
  `int_z` float DEFAULT 0,
  `int_a` float DEFAULT 0,
  `interior` tinyint(2) DEFAULT 0,
  `world` int(10) DEFAULT 0,
  `outsideint` tinyint(2) DEFAULT 0,
  `outsidevw` int(10) DEFAULT 0,
  `cash` int(10) DEFAULT 0,
  `products` int(10) DEFAULT 500,
  `materials` int(10) DEFAULT 0,
  `color` int(10) DEFAULT -256,
  `description` varchar(128) DEFAULT 'None',
  `cVehicleX` float DEFAULT 0,
  `cVehicleY` float DEFAULT 0,
  `cVehicleZ` float DEFAULT 0,
  `cVehicleA` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `changes`
--

CREATE TABLE `changes` (
  `slot` tinyint(2) DEFAULT NULL,
  `text` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `charges`
--

CREATE TABLE `charges` (
  `id` int(10) NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `chargedby` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `reason` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `clothing`
--

CREATE TABLE `clothing` (
  `id` int(10) NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `modelid` smallint(5) DEFAULT NULL,
  `boneid` tinyint(2) DEFAULT NULL,
  `attached` tinyint(1) DEFAULT NULL,
  `pos_x` float DEFAULT NULL,
  `pos_y` float DEFAULT NULL,
  `pos_z` float DEFAULT NULL,
  `rot_x` float DEFAULT NULL,
  `rot_y` float DEFAULT NULL,
  `rot_z` float DEFAULT NULL,
  `scale_x` float DEFAULT NULL,
  `scale_y` float DEFAULT NULL,
  `scale_z` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `crates`
--

CREATE TABLE `crates` (
  `id` int(11) NOT NULL,
  `Active` int(11) NOT NULL DEFAULT 0,
  `CrateX` float NOT NULL DEFAULT 0,
  `CrateY` float NOT NULL DEFAULT 0,
  `CrateZ` float NOT NULL DEFAULT 0,
  `GunQuantity` int(11) NOT NULL DEFAULT 50,
  `InVehicle` int(11) NOT NULL DEFAULT 0,
  `Int` int(11) NOT NULL DEFAULT 0,
  `VW` int(11) NOT NULL DEFAULT 0,
  `PlacedBy` varchar(24) NOT NULL DEFAULT 'Unknown'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `crews`
--

CREATE TABLE `crews` (
  `id` tinyint(2) DEFAULT NULL,
  `crewid` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `criminals`
--

CREATE TABLE `criminals` (
  `ID` int(11) NOT NULL,
  `player` varchar(24) NOT NULL,
  `officer` varchar(24) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `crime` text NOT NULL,
  `served` int(11) NOT NULL,
  `minutes` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `divisions`
--

CREATE TABLE `divisions` (
  `id` tinyint(2) DEFAULT NULL,
  `divisionid` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `entrances`
--

CREATE TABLE `entrances` (
  `id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT 0,
  `owner` varchar(24) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `iconid` smallint(5) DEFAULT 1239,
  `locked` tinyint(1) DEFAULT 0,
  `radius` float DEFAULT 3,
  `pos_x` float DEFAULT 0,
  `pos_y` float DEFAULT 0,
  `pos_z` float DEFAULT 0,
  `pos_a` float DEFAULT 0,
  `int_x` float DEFAULT 0,
  `int_y` float DEFAULT 0,
  `int_z` float DEFAULT 0,
  `int_a` float DEFAULT 0,
  `interior` tinyint(2) DEFAULT 0,
  `world` int(10) DEFAULT 0,
  `outsideint` tinyint(2) DEFAULT 0,
  `outsidevw` int(10) DEFAULT 0,
  `adminlevel` tinyint(2) DEFAULT 0,
  `factiontype` tinyint(2) DEFAULT 0,
  `vip` tinyint(2) DEFAULT 0,
  `vehicles` tinyint(1) DEFAULT 0,
  `freeze` tinyint(1) DEFAULT 0,
  `password` varchar(64) DEFAULT 'None',
  `label` tinyint(1) DEFAULT 1,
  `mapicon` tinyint(3) NOT NULL DEFAULT 0,
  `gang` tinyint(2) DEFAULT -1,
  `type` tinyint(2) DEFAULT 0,
  `color` int(10) DEFAULT -256
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `factionlockers`
--

CREATE TABLE `factionlockers` (
  `id` int(10) NOT NULL,
  `factionid` tinyint(2) DEFAULT NULL,
  `pos_x` float DEFAULT 0,
  `pos_y` float DEFAULT 0,
  `pos_z` float DEFAULT 0,
  `interior` tinyint(2) DEFAULT 0,
  `world` int(10) DEFAULT 0,
  `iconid` smallint(5) DEFAULT 1239,
  `label` tinyint(1) DEFAULT 1,
  `weapon_kevlar` tinyint(1) DEFAULT 1,
  `weapon_medkit` tinyint(1) DEFAULT 1,
  `weapon_nitestick` varchar(1) DEFAULT '0',
  `weapon_mace` tinyint(1) DEFAULT 0,
  `weapon_deagle` tinyint(1) DEFAULT 1,
  `weapon_shotgun` tinyint(1) DEFAULT 1,
  `weapon_mp5` tinyint(1) DEFAULT 1,
  `weapon_m4` tinyint(1) DEFAULT 1,
  `weapon_spas12` tinyint(1) DEFAULT 1,
  `weapon_sniper` tinyint(1) DEFAULT 1,
  `weapon_camera` tinyint(1) DEFAULT 0,
  `weapon_fire_extinguisher` tinyint(1) DEFAULT 0,
  `weapon_painkillers` tinyint(1) DEFAULT 0,
  `price_kevlar` smallint(5) DEFAULT 100,
  `price_medkit` smallint(5) DEFAULT 50,
  `price_nitestick` smallint(5) DEFAULT 0,
  `price_mace` smallint(5) DEFAULT 0,
  `price_deagle` smallint(5) DEFAULT 850,
  `price_shotgun` smallint(5) DEFAULT 1000,
  `price_mp5` smallint(5) DEFAULT 1500,
  `price_m4` smallint(5) DEFAULT 2500,
  `price_spas12` smallint(5) DEFAULT 3500,
  `price_sniper` smallint(5) DEFAULT 5000,
  `price_camera` smallint(5) DEFAULT 0,
  `price_fire_extinguisher` smallint(5) DEFAULT 0,
  `price_painkillers` smallint(5) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `factionpay`
--

CREATE TABLE `factionpay` (
  `id` tinyint(2) DEFAULT NULL,
  `rank` tinyint(2) DEFAULT NULL,
  `amount` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `factionranks`
--

CREATE TABLE `factionranks` (
  `id` tinyint(2) DEFAULT NULL,
  `rank` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `factions`
--

CREATE TABLE `factions` (
  `id` tinyint(2) DEFAULT NULL,
  `name` varchar(48) DEFAULT NULL,
  `leader` varchar(24) DEFAULT 'No-one',
  `type` tinyint(2) DEFAULT 0,
  `color` int(10) DEFAULT -1,
  `rankcount` tinyint(2) DEFAULT 6,
  `lockerx` float DEFAULT 0,
  `lockery` float DEFAULT 0,
  `lockerz` float DEFAULT 0,
  `lockerinterior` tinyint(2) DEFAULT 0,
  `lockerworld` int(10) DEFAULT 0,
  `turftokens` int(10) DEFAULT NULL,
  `shortname` varchar(64) DEFAULT NULL,
  `motd` varchar(128) DEFAULT NULL,
  `budget` int(8) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `factionskins`
--

CREATE TABLE `factionskins` (
  `id` tinyint(2) DEFAULT NULL,
  `slot` tinyint(2) DEFAULT NULL,
  `skinid` smallint(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `flags`
--

CREATE TABLE `flags` (
  `id` int(10) NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `flaggedby` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `furniture`
--

CREATE TABLE `furniture` (
  `id` int(10) NOT NULL,
  `houseid` int(10) DEFAULT NULL,
  `modelid` smallint(5) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `pos_x` float DEFAULT NULL,
  `pos_y` float DEFAULT NULL,
  `pos_z` float DEFAULT NULL,
  `rot_x` float DEFAULT NULL,
  `rot_y` float DEFAULT NULL,
  `rot_z` float DEFAULT NULL,
  `interior` tinyint(2) DEFAULT NULL,
  `world` int(10) DEFAULT NULL,
  `door_opened` tinyint(1) DEFAULT 0,
  `door_locked` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gangranks`
--

CREATE TABLE `gangranks` (
  `id` tinyint(2) DEFAULT NULL,
  `rank` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gangs`
--

CREATE TABLE `gangs` (
  `id` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT 'None',
  `motd` varchar(128) DEFAULT 'None',
  `leader` varchar(24) DEFAULT 'No-one',
  `color` int(10) DEFAULT -256,
  `strikes` tinyint(1) DEFAULT 0,
  `level` tinyint(2) DEFAULT 1,
  `points` int(10) DEFAULT 0,
  `turftokens` int(10) DEFAULT 0,
  `stash_x` float DEFAULT 0,
  `stash_y` float DEFAULT 0,
  `stash_z` float DEFAULT 0,
  `stashinterior` tinyint(2) DEFAULT 0,
  `stashworld` int(10) DEFAULT 0,
  `cash` int(10) DEFAULT 0,
  `materials` int(10) DEFAULT 0,
  `weed` int(10) DEFAULT 0,
  `cocaine` int(10) DEFAULT 0,
  `meth` int(10) DEFAULT 0,
  `painkillers` int(10) DEFAULT 0,
  `pistolammo` int(10) DEFAULT 0,
  `shotgunammo` int(10) DEFAULT 0,
  `smgammo` int(10) DEFAULT 0,
  `arammo` int(10) DEFAULT 0,
  `rifleammo` int(10) DEFAULT 0,
  `hpammo` int(10) DEFAULT 0,
  `poisonammo` int(10) DEFAULT 0,
  `fmjammo` int(10) DEFAULT 0,
  `weapon_9mm` int(10) DEFAULT 0,
  `weapon_sdpistol` int(10) DEFAULT 0,
  `weapon_deagle` int(10) DEFAULT 0,
  `weapon_shotgun` int(10) DEFAULT 0,
  `weapon_spas12` int(10) DEFAULT 0,
  `weapon_sawnoff` int(10) DEFAULT 0,
  `weapon_tec9` int(10) DEFAULT 0,
  `weapon_uzi` int(10) DEFAULT 0,
  `weapon_mp5` int(10) DEFAULT 0,
  `weapon_ak47` int(10) DEFAULT 0,
  `weapon_m4` int(10) DEFAULT 0,
  `weapon_rifle` int(10) DEFAULT 0,
  `weapon_sniper` int(10) DEFAULT 0,
  `weapon_molotov` int(10) DEFAULT 0,
  `armsdealer` tinyint(1) DEFAULT 0,
  `drugdealer` tinyint(1) DEFAULT 0,
  `arms_x` float DEFAULT 0,
  `arms_y` float DEFAULT 0,
  `arms_z` float DEFAULT 0,
  `arms_a` float DEFAULT 0,
  `drug_x` float DEFAULT 0,
  `drug_y` float DEFAULT 0,
  `drug_z` float DEFAULT 0,
  `drug_a` float DEFAULT 0,
  `armsworld` int(10) DEFAULT 0,
  `drugworld` int(10) DEFAULT 0,
  `drugweed` int(10) DEFAULT 0,
  `drugcocaine` int(10) DEFAULT 0,
  `drugmeth` int(10) DEFAULT 0,
  `armsmaterials` int(10) DEFAULT 0,
  `armsprice_1` int(10) DEFAULT 0,
  `armsprice_2` int(10) DEFAULT 0,
  `armsprice_3` int(10) DEFAULT 0,
  `armsprice_4` int(10) DEFAULT 0,
  `armsprice_5` int(10) DEFAULT 0,
  `armsprice_6` int(10) DEFAULT 0,
  `armsprice_7` int(10) DEFAULT 0,
  `armsprice_8` int(10) DEFAULT 0,
  `armsprice_9` int(10) NOT NULL DEFAULT 0,
  `armsprice_10` int(10) NOT NULL DEFAULT 0,
  `armsprice_11` int(10) NOT NULL DEFAULT 0,
  `armsprice_12` tinyint(2) NOT NULL DEFAULT 0,
  `weed_price` int(10) DEFAULT 0,
  `cocaine_price` int(10) DEFAULT 0,
  `meth_price` int(10) DEFAULT 0,
  `matlevel` tinyint(3) NOT NULL DEFAULT 0,
  `gunlevel` tinyint(3) NOT NULL DEFAULT 0,
  `alliance` tinyint(4) NOT NULL DEFAULT -1,
  `rivals` tinyint(4) DEFAULT -1,
  `war1` tinyint(2) NOT NULL DEFAULT 0,
  `war2` tinyint(2) NOT NULL DEFAULT 0,
  `war3` tinyint(2) NOT NULL DEFAULT 0,
  `rank_9mm` tinyint(2) NOT NULL DEFAULT 1,
  `rank_sdpistol` tinyint(2) NOT NULL DEFAULT 1,
  `rank_deagle` tinyint(2) NOT NULL DEFAULT 2,
  `rank_shotgun` tinyint(2) NOT NULL DEFAULT 1,
  `rank_spas12` tinyint(2) NOT NULL DEFAULT 4,
  `rank_sawnoff` tinyint(2) NOT NULL DEFAULT 4,
  `rank_tec9` tinyint(2) NOT NULL DEFAULT 1,
  `rank_uzi` tinyint(2) NOT NULL DEFAULT 1,
  `rank_mp5` tinyint(2) NOT NULL DEFAULT 2,
  `rank_ak47` tinyint(2) NOT NULL DEFAULT 3,
  `rank_m4` tinyint(2) NOT NULL DEFAULT 4,
  `rank_rifle` tinyint(2) NOT NULL DEFAULT 2,
  `rank_sniper` tinyint(2) NOT NULL DEFAULT 5,
  `rank_molotov` tinyint(2) NOT NULL DEFAULT 5,
  `rank_vest` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gangskins`
--

CREATE TABLE `gangskins` (
  `id` tinyint(2) DEFAULT NULL,
  `slot` tinyint(2) DEFAULT NULL,
  `skinid` smallint(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gangsold`
--

CREATE TABLE `gangsold` (
  `id` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT 'None',
  `motd` varchar(128) DEFAULT 'None',
  `leader` varchar(24) DEFAULT 'No-one',
  `color` int(10) DEFAULT -256,
  `strikes` tinyint(1) DEFAULT 0,
  `level` tinyint(2) DEFAULT 1,
  `points` int(10) DEFAULT 0,
  `turftokens` int(10) DEFAULT 0,
  `stash_x` float DEFAULT 0,
  `stash_y` float DEFAULT 0,
  `stash_z` float DEFAULT 0,
  `stashinterior` tinyint(2) DEFAULT 0,
  `stashworld` int(10) DEFAULT 0,
  `cash` int(10) DEFAULT 0,
  `materials` int(10) DEFAULT 0,
  `weed` int(10) DEFAULT 0,
  `cocaine` int(10) DEFAULT 0,
  `meth` int(10) DEFAULT 0,
  `painkillers` int(10) DEFAULT 0,
  `pistolammo` int(10) DEFAULT 0,
  `shotgunammo` int(10) DEFAULT 0,
  `smgammo` int(10) DEFAULT 0,
  `arammo` int(10) DEFAULT 0,
  `rifleammo` int(10) DEFAULT 0,
  `hpammo` int(10) DEFAULT 0,
  `poisonammo` int(10) DEFAULT 0,
  `fmjammo` int(10) DEFAULT 0,
  `weapon_9mm` int(10) DEFAULT 0,
  `weapon_sdpistol` int(10) DEFAULT 0,
  `weapon_deagle` int(10) DEFAULT 0,
  `weapon_shotgun` int(10) DEFAULT 0,
  `weapon_spas12` int(10) DEFAULT 0,
  `weapon_sawnoff` int(10) DEFAULT 0,
  `weapon_tec9` int(10) DEFAULT 0,
  `weapon_uzi` int(10) DEFAULT 0,
  `weapon_mp5` int(10) DEFAULT 0,
  `weapon_ak47` int(10) DEFAULT 0,
  `weapon_m4` int(10) DEFAULT 0,
  `weapon_rifle` int(10) DEFAULT 0,
  `weapon_sniper` int(10) DEFAULT 0,
  `weapon_molotov` int(10) DEFAULT 0,
  `armsdealer` tinyint(1) DEFAULT 0,
  `drugdealer` tinyint(1) DEFAULT 0,
  `arms_x` float DEFAULT 0,
  `arms_y` float DEFAULT 0,
  `arms_z` float DEFAULT 0,
  `arms_a` float DEFAULT 0,
  `drug_x` float DEFAULT 0,
  `drug_y` float DEFAULT 0,
  `drug_z` float DEFAULT 0,
  `drug_a` float DEFAULT 0,
  `armsworld` int(10) DEFAULT 0,
  `drugworld` int(10) DEFAULT 0,
  `drugweed` int(10) DEFAULT 0,
  `drugcocaine` int(10) DEFAULT 0,
  `drugmeth` int(10) DEFAULT 0,
  `armsmaterials` int(10) DEFAULT 0,
  `armsprice_1` int(10) DEFAULT 0,
  `armsprice_2` int(10) DEFAULT 0,
  `armsprice_3` int(10) DEFAULT 0,
  `armsprice_4` int(10) DEFAULT 0,
  `armsprice_5` int(10) DEFAULT 0,
  `armsprice_6` int(10) DEFAULT 0,
  `armsprice_7` int(10) DEFAULT 0,
  `armsprice_8` int(10) DEFAULT 0,
  `armsprice_9` int(10) NOT NULL DEFAULT 0,
  `armsprice_10` int(10) NOT NULL DEFAULT 0,
  `armsprice_11` int(10) NOT NULL DEFAULT 0,
  `armsprice_12` tinyint(2) NOT NULL DEFAULT 0,
  `weed_price` int(10) DEFAULT 0,
  `cocaine_price` int(10) DEFAULT 0,
  `meth_price` int(10) DEFAULT 0,
  `matlevel` tinyint(3) NOT NULL DEFAULT 0,
  `gunlevel` tinyint(3) NOT NULL DEFAULT 0,
  `alliance` tinyint(4) NOT NULL DEFAULT -1,
  `war1` tinyint(2) NOT NULL DEFAULT 0,
  `war2` tinyint(2) NOT NULL DEFAULT 0,
  `war3` tinyint(2) NOT NULL DEFAULT 0,
  `rank_9mm` tinyint(2) NOT NULL DEFAULT 1,
  `rank_sdpistol` tinyint(2) NOT NULL DEFAULT 1,
  `rank_deagle` tinyint(2) NOT NULL DEFAULT 2,
  `rank_shotgun` tinyint(2) NOT NULL DEFAULT 1,
  `rank_spas12` tinyint(2) NOT NULL DEFAULT 4,
  `rank_sawnoff` tinyint(2) NOT NULL DEFAULT 4,
  `rank_tec9` tinyint(2) NOT NULL DEFAULT 1,
  `rank_uzi` tinyint(2) NOT NULL DEFAULT 1,
  `rank_mp5` tinyint(2) NOT NULL DEFAULT 2,
  `rank_ak47` tinyint(2) NOT NULL DEFAULT 3,
  `rank_m4` tinyint(2) NOT NULL DEFAULT 4,
  `rank_rifle` tinyint(2) NOT NULL DEFAULT 2,
  `rank_sniper` tinyint(2) NOT NULL DEFAULT 5,
  `rank_molotov` tinyint(2) NOT NULL DEFAULT 5,
  `rank_vest` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gangtags`
--

CREATE TABLE `gangtags` (
  `gangid` int(11) NOT NULL,
  `text` text NOT NULL,
  `fontid` int(11) NOT NULL,
  `pname` text NOT NULL,
  `color` int(11) NOT NULL,
  `x` float(11,4) NOT NULL DEFAULT 0.0000,
  `y` float(11,4) NOT NULL DEFAULT 0.0000,
  `z` float(11,4) NOT NULL DEFAULT 0.0000,
  `rx` float(11,4) NOT NULL DEFAULT 0.0000,
  `ry` float(11,4) NOT NULL DEFAULT 0.0000,
  `rz` float(11,4) NOT NULL DEFAULT 0.0000,
  `ID` int(11) NOT NULL,
  `pdbid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `garages`
--

CREATE TABLE `garages` (
  `id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT 0,
  `owner` varchar(24) DEFAULT NULL,
  `type` tinyint(1) DEFAULT 0,
  `price` int(10) DEFAULT 0,
  `locked` tinyint(1) DEFAULT 0,
  `freeze` tinyint(1) NOT NULL DEFAULT 0,
  `timestamp` int(10) DEFAULT 0,
  `pos_x` float DEFAULT 0,
  `pos_y` float DEFAULT 0,
  `pos_z` float DEFAULT 0,
  `pos_a` float DEFAULT 0,
  `exit_x` float DEFAULT 0,
  `exit_y` float DEFAULT 0,
  `exit_z` float DEFAULT 0,
  `exit_a` float DEFAULT 0,
  `world` int(10) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gates`
--

CREATE TABLE `gates` (
  `ID` int(11) NOT NULL,
  `HID` int(11) NOT NULL DEFAULT -1,
  `Speed` float NOT NULL DEFAULT 10,
  `Range` float NOT NULL DEFAULT 10,
  `Model` int(11) NOT NULL DEFAULT 18631,
  `VW` int(11) NOT NULL DEFAULT 0,
  `Int` int(11) NOT NULL DEFAULT 0,
  `Pass` varchar(24) NOT NULL DEFAULT '',
  `PosX` float NOT NULL DEFAULT 0,
  `PosY` float NOT NULL DEFAULT 0,
  `PosZ` float NOT NULL DEFAULT 0,
  `RotX` float NOT NULL DEFAULT 0,
  `RotY` float NOT NULL DEFAULT 0,
  `RotZ` float NOT NULL DEFAULT 0,
  `PosXM` float NOT NULL DEFAULT 0,
  `PosYM` float NOT NULL DEFAULT 0,
  `PosZM` float NOT NULL DEFAULT 0,
  `RotXM` float NOT NULL DEFAULT 0,
  `RotYM` float NOT NULL DEFAULT 0,
  `RotZM` float NOT NULL DEFAULT 0,
  `Allegiance` int(11) NOT NULL DEFAULT 0,
  `GroupType` int(11) NOT NULL DEFAULT 0,
  `GroupID` int(2) NOT NULL DEFAULT -1,
  `GangID` int(2) NOT NULL DEFAULT -1,
  `RenderHQ` int(11) NOT NULL DEFAULT 1,
  `Timer` int(1) NOT NULL DEFAULT 0,
  `Automate` int(11) NOT NULL,
  `Locked` int(11) NOT NULL,
  `TIndex` int(11) NOT NULL,
  `TModel` int(11) NOT NULL,
  `TColor` int(11) NOT NULL,
  `Facility` int(11) NOT NULL,
  `TTXD` varchar(32) NOT NULL,
  `TTexture` varchar(42) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `graffiti`
--

CREATE TABLE `graffiti` (
  `graffitiID` int(12) NOT NULL,
  `graffitiX` float DEFAULT 0,
  `graffitiY` float DEFAULT 0,
  `graffitiZ` float DEFAULT 0,
  `graffitiAngle` float DEFAULT 0,
  `graffitiColor` int(12) DEFAULT 0,
  `graffitiText` varchar(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gunracks`
--

CREATE TABLE `gunracks` (
  `rackID` int(12) NOT NULL,
  `rackHouse` int(12) DEFAULT 0,
  `rackX` float DEFAULT 0,
  `rackY` float DEFAULT 0,
  `rackZ` float DEFAULT 0,
  `rackA` float DEFAULT 0,
  `rackInterior` int(12) DEFAULT 0,
  `rackWorld` int(12) DEFAULT 0,
  `rackWeapon1` int(12) DEFAULT 0,
  `rackAmmo1` int(12) DEFAULT 0,
  `rackWeapon2` int(12) DEFAULT 0,
  `rackAmmo2` int(12) DEFAULT 0,
  `rackWeapon3` int(12) DEFAULT 0,
  `rackAmmo3` int(12) DEFAULT 0,
  `rackWeapon4` int(12) DEFAULT 0,
  `rackAmmo4` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `houses`
--

CREATE TABLE `houses` (
  `id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT 0,
  `owner` varchar(24) DEFAULT 'Nobody',
  `type` tinyint(2) DEFAULT 0,
  `price` int(10) DEFAULT 0,
  `rentprice` int(10) DEFAULT 0,
  `level` tinyint(2) DEFAULT 1,
  `locked` tinyint(1) DEFAULT 0,
  `timestamp` int(10) DEFAULT 0,
  `pos_x` float DEFAULT 0,
  `pos_y` float DEFAULT 0,
  `pos_z` float DEFAULT 0,
  `pos_a` float DEFAULT 0,
  `int_x` float DEFAULT 0,
  `int_y` float DEFAULT 0,
  `int_z` float DEFAULT 0,
  `int_a` float DEFAULT 0,
  `interior` tinyint(2) DEFAULT 0,
  `world` int(10) DEFAULT 0,
  `outsideint` int(10) DEFAULT 0,
  `outsidevw` int(10) DEFAULT 0,
  `cash` int(10) DEFAULT 0,
  `materials` int(10) DEFAULT 0,
  `weed` int(10) DEFAULT 0,
  `cocaine` int(10) DEFAULT 0,
  `meth` int(10) DEFAULT 0,
  `painkillers` int(10) DEFAULT 0,
  `weapon_1` tinyint(2) DEFAULT 0,
  `weapon_2` tinyint(2) DEFAULT 0,
  `weapon_3` tinyint(2) DEFAULT 0,
  `weapon_4` tinyint(2) DEFAULT 0,
  `weapon_5` tinyint(2) DEFAULT 0,
  `weapon_6` tinyint(2) DEFAULT 0,
  `weapon_7` tinyint(2) DEFAULT 0,
  `weapon_8` tinyint(2) DEFAULT 0,
  `weapon_9` tinyint(2) DEFAULT 0,
  `weapon_10` tinyint(2) DEFAULT 0,
  `ammo_1` smallint(5) DEFAULT 0,
  `ammo_2` smallint(5) DEFAULT 0,
  `ammo_3` smallint(5) DEFAULT 0,
  `ammo_4` smallint(5) DEFAULT 0,
  `ammo_5` smallint(5) DEFAULT 0,
  `ammo_6` tinyint(2) DEFAULT 0,
  `ammo_7` tinyint(2) DEFAULT 0,
  `ammo_8` tinyint(2) DEFAULT 0,
  `ammo_9` tinyint(2) DEFAULT 0,
  `ammo_10` tinyint(2) DEFAULT 0,
  `pistolammo` smallint(5) DEFAULT 0,
  `shotgunammo` smallint(5) DEFAULT 0,
  `smgammo` smallint(5) DEFAULT 0,
  `arammo` smallint(5) DEFAULT 0,
  `rifleammo` smallint(5) DEFAULT 0,
  `hpammo` smallint(5) DEFAULT 0,
  `poisonammo` smallint(5) DEFAULT 0,
  `fmjammo` smallint(5) DEFAULT 0,
  `delivery` tinyint(2) DEFAULT 1,
  `lights` tinyint(1) DEFAULT 1,
  `alarm` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `impoundlots`
--

CREATE TABLE `impoundlots` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `kills`
--

CREATE TABLE `kills` (
  `id` int(10) NOT NULL,
  `killer_uid` int(10) DEFAULT NULL,
  `target_uid` int(10) DEFAULT NULL,
  `killer` varchar(24) DEFAULT NULL,
  `target` varchar(24) DEFAULT NULL,
  `reason` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `landobjects`
--

CREATE TABLE `landobjects` (
  `id` int(10) NOT NULL,
  `landid` int(10) DEFAULT NULL,
  `modelid` smallint(5) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `pos_x` float DEFAULT NULL,
  `pos_y` float DEFAULT NULL,
  `pos_z` float DEFAULT NULL,
  `rot_x` float DEFAULT NULL,
  `rot_y` float DEFAULT NULL,
  `rot_z` float DEFAULT NULL,
  `door_opened` tinyint(1) DEFAULT 0,
  `door_locked` tinyint(1) DEFAULT 0,
  `move_x` float DEFAULT 0,
  `move_y` float DEFAULT 0,
  `move_z` float DEFAULT 0,
  `move_rx` float DEFAULT 0,
  `move_ry` float DEFAULT 0,
  `move_rz` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lands`
--

CREATE TABLE `lands` (
  `id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT 0,
  `owner` varchar(24) DEFAULT 'Nobody',
  `price` int(10) DEFAULT 0,
  `min_x` float DEFAULT 0,
  `min_y` float DEFAULT 0,
  `max_x` float DEFAULT 0,
  `max_y` float DEFAULT 0,
  `heightx` float DEFAULT 0,
  `heightz` float NOT NULL DEFAULT 0,
  `heighty` float NOT NULL DEFAULT 0,
  `level` tinyint(2) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `locations`
--

CREATE TABLE `locations` (
  `id` int(4) NOT NULL,
  `name` varchar(64) NOT NULL,
  `pos_x` float NOT NULL,
  `pos_y` float NOT NULL,
  `pos_z` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `log_admin`
--

CREATE TABLE `log_admin` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Gegevens worden geëxporteerd voor tabel `log_admin`
--

INSERT INTO `log_admin` (`id`, `date`, `description`) VALUES
(1, '2020-01-17 04:53:02', 'Angelo_Musitano (uid: 1) has made Angelo_Musitano (uid: 1) a dynamic admin.');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `log_bans`
--

CREATE TABLE `log_bans` (
  `id` int(10) NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `log_cheat`
--

CREATE TABLE `log_cheat` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `log_command`
--

CREATE TABLE `log_command` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Gegevens worden geëxporteerd voor tabel `log_command`
--

INSERT INTO `log_command` (`id`, `date`, `description`) VALUES
(1, '2020-01-17 04:50:00', '[zcmd] [Angelo_Musitano](uid: 1):aduty .'),
(2, '2020-01-17 04:51:33', '[zcmd] [Angelo_Musitano](uid: 1):givegun .'),
(3, '2020-01-17 04:51:35', '[zcmd] [Angelo_Musitano](uid: 1):givegun Angelo 24.'),
(4, '2020-01-17 04:51:38', '[zcmd] [Angelo_Musitano](uid: 1):setstat .'),
(5, '2020-01-17 04:51:39', '[zcmd] [Angelo_Musitano](uid: 1):a ..'),
(6, '2020-01-17 04:51:41', '[zcmd] [Angelo_Musitano](uid: 1):setstaff ange.'),
(7, '2020-01-17 04:52:51', '[zcmd] [Angelo_Musitano](uid: 1):setstaff .'),
(8, '2020-01-17 04:53:01', '[zcmd] [Angelo_Musitano](uid: 1):setstaff angelo dynamicadmin.'),
(9, '2020-01-17 04:53:02', '[zcmd] [Angelo_Musitano](uid: 1):setstaff angelo dynamicadmin 1.'),
(10, '2020-01-17 04:53:07', '[zcmd] [Angelo_Musitano](uid: 1):setstats Angelo hours 6666.'),
(11, '2020-01-17 04:53:11', '[zcmd] [Angelo_Musitano](uid: 1):setstat Angelo hours 666.'),
(12, '2020-01-17 04:53:14', '[zcmd] [Angelo_Musitano](uid: 1):givegun Ange 24.'),
(13, '2020-01-17 04:53:15', '[zcmd] [Angelo_Musitano](uid: 1):givegun Ange 25.'),
(14, '2020-01-17 04:53:16', '[zcmd] [Angelo_Musitano](uid: 1):givegun Ange 24.'),
(15, '2020-01-17 04:53:17', '[zcmd] [Angelo_Musitano](uid: 1):givegun Ange 21.'),
(16, '2020-01-17 04:53:18', '[zcmd] [Angelo_Musitano](uid: 1):givegun Ange 27.'),
(17, '2020-01-17 04:53:19', '[zcmd] [Angelo_Musitano](uid: 1):givegun Ange 29.'),
(18, '2020-01-17 04:53:20', '[zcmd] [Angelo_Musitano](uid: 1):givegun Ange 25.'),
(19, '2020-01-17 04:53:21', '[zcmd] [Angelo_Musitano](uid: 1):givegun Ange 26.'),
(20, '2020-01-17 04:53:22', '[zcmd] [Angelo_Musitano](uid: 1):givegun Ange 20.'),
(21, '2020-01-17 04:53:23', '[zcmd] [Angelo_Musitano](uid: 1):givegun Ange 35.'),
(22, '2020-01-17 04:53:24', '[zcmd] [Angelo_Musitano](uid: 1):givegun Ange 34.'),
(23, '2020-01-17 04:53:25', '[zcmd] [Angelo_Musitano](uid: 1):givegun Ange 32.'),
(24, '2020-01-17 04:53:26', '[zcmd] [Angelo_Musitano](uid: 1):givegun Ange 31.'),
(25, '2020-01-17 04:53:27', '[zcmd] [Angelo_Musitano](uid: 1):givegun Ange 37.'),
(26, '2020-01-17 04:53:28', '[zcmd] [Angelo_Musitano](uid: 1):givegun Ange 36.'),
(27, '2020-01-17 04:53:29', '[zcmd] [Angelo_Musitano](uid: 1):givegun Ange 39.'),
(28, '2020-01-17 04:53:30', '[zcmd] [Angelo_Musitano](uid: 1):givegun Ange 38.'),
(29, '2020-01-17 04:53:30', '[zcmd] [Angelo_Musitano](uid: 1):givegun Ange 37.'),
(30, '2020-01-17 04:53:32', '[zcmd] [Angelo_Musitano](uid: 1):givegun Ange 36.'),
(31, '2020-01-17 04:53:33', '[zcmd] [Angelo_Musitano](uid: 1):givegun Ange 364.'),
(32, '2020-01-17 04:53:35', '[zcmd] [Angelo_Musitano](uid: 1):givegun Ange 34.'),
(33, '2020-01-17 04:53:36', '[zcmd] [Angelo_Musitano](uid: 1):givegun Ange 40.'),
(34, '2020-01-17 04:53:37', '[zcmd] [Angelo_Musitano](uid: 1):givegun Ange 41.'),
(35, '2020-01-17 04:53:38', '[zcmd] [Angelo_Musitano](uid: 1):givegun Ange 42.'),
(36, '2020-01-17 04:53:39', '[zcmd] [Angelo_Musitano](uid: 1):givegun Ange 43.'),
(37, '2020-01-17 04:53:40', '[zcmd] [Angelo_Musitano](uid: 1):givegun Ange 32.'),
(38, '2020-01-17 04:53:41', '[zcmd] [Angelo_Musitano](uid: 1):givegun Ange 31.'),
(39, '2020-01-17 04:53:42', '[zcmd] [Angelo_Musitano](uid: 1):givegun Ange 1.'),
(40, '2020-01-17 04:53:43', '[zcmd] [Angelo_Musitano](uid: 1):givegun Ange 2.'),
(41, '2020-01-17 04:53:45', '[zcmd] [Angelo_Musitano](uid: 1):givegun Ange 5.'),
(42, '2020-01-17 04:53:46', '[zcmd] [Angelo_Musitano](uid: 1):givegun Ange 3.'),
(43, '2020-01-17 04:53:47', '[zcmd] [Angelo_Musitano](uid: 1):givegun Ange 2.'),
(44, '2020-01-17 04:53:48', '[zcmd] [Angelo_Musitano](uid: 1):givegun Ange 6.'),
(45, '2020-01-17 04:53:49', '[zcmd] [Angelo_Musitano](uid: 1):givegun Ange 8.'),
(46, '2020-01-17 04:53:50', '[zcmd] [Angelo_Musitano](uid: 1):givegun Ange 4.'),
(47, '2020-01-17 04:53:52', '[zcmd] [Angelo_Musitano](uid: 1):givegun Ange 7.'),
(48, '2020-01-17 04:53:53', '[zcmd] [Angelo_Musitano](uid: 1):givegun Ange 9.'),
(49, '2020-01-17 04:53:55', '[zcmd] [Angelo_Musitano](uid: 1):givegun Ange 3.');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `log_contracts`
--

CREATE TABLE `log_contracts` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `log_cp`
--

CREATE TABLE `log_cp` (
  `id` int(11) NOT NULL,
  `executer` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `log_dicebet`
--

CREATE TABLE `log_dicebet` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `log_faction`
--

CREATE TABLE `log_faction` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `log_gang`
--

CREATE TABLE `log_gang` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `log_give`
--

CREATE TABLE `log_give` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `log_givecookie`
--

CREATE TABLE `log_givecookie` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `log_givegun`
--

CREATE TABLE `log_givegun` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Gegevens worden geëxporteerd voor tabel `log_givegun`
--

INSERT INTO `log_givegun` (`id`, `date`, `description`) VALUES
(1, '2020-01-17 04:53:14', 'Angelo_Musitano (uid: 1) gives a Desert Eagle to Angelo_Musitano (uid: 1)'),
(2, '2020-01-17 04:53:15', 'Angelo_Musitano (uid: 1) gives a Shotgun to Angelo_Musitano (uid: 1)'),
(3, '2020-01-17 04:53:16', 'Angelo_Musitano (uid: 1) gives a Desert Eagle to Angelo_Musitano (uid: 1)'),
(4, '2020-01-17 04:53:17', 'Angelo_Musitano (uid: 1) gives a Jetpack to Angelo_Musitano (uid: 1)'),
(5, '2020-01-17 04:53:18', 'Angelo_Musitano (uid: 1) gives a Combat Shotgun to Angelo_Musitano (uid: 1)'),
(6, '2020-01-17 04:53:19', 'Angelo_Musitano (uid: 1) gives a MP5 to Angelo_Musitano (uid: 1)'),
(7, '2020-01-17 04:53:20', 'Angelo_Musitano (uid: 1) gives a Shotgun to Angelo_Musitano (uid: 1)'),
(8, '2020-01-17 04:53:21', 'Angelo_Musitano (uid: 1) gives a Sawn-off Shotgun to Angelo_Musitano (uid: 1)'),
(9, '2020-01-17 04:53:22', 'Angelo_Musitano (uid: 1) gives a Hydra Flare to Angelo_Musitano (uid: 1)'),
(10, '2020-01-17 04:53:23', 'Angelo_Musitano (uid: 1) gives a Rocket Launcher to Angelo_Musitano (uid: 1)'),
(11, '2020-01-17 04:53:24', 'Angelo_Musitano (uid: 1) gives a Sniper Rifle to Angelo_Musitano (uid: 1)'),
(12, '2020-01-17 04:53:25', 'Angelo_Musitano (uid: 1) gives a TEC9 to Angelo_Musitano (uid: 1)'),
(13, '2020-01-17 04:53:26', 'Angelo_Musitano (uid: 1) gives a M4 to Angelo_Musitano (uid: 1)'),
(14, '2020-01-17 04:53:27', 'Angelo_Musitano (uid: 1) gives a Flamethrower to Angelo_Musitano (uid: 1)'),
(15, '2020-01-17 04:53:28', 'Angelo_Musitano (uid: 1) gives a Heat Seaker to Angelo_Musitano (uid: 1)'),
(16, '2020-01-17 04:53:29', 'Angelo_Musitano (uid: 1) gives a Satchel Explosives to Angelo_Musitano (uid: 1)'),
(17, '2020-01-17 04:53:30', 'Angelo_Musitano (uid: 1) gives a Minigun to Angelo_Musitano (uid: 1)'),
(18, '2020-01-17 04:53:30', 'Angelo_Musitano (uid: 1) gives a Flamethrower to Angelo_Musitano (uid: 1)'),
(19, '2020-01-17 04:53:32', 'Angelo_Musitano (uid: 1) gives a Heat Seaker to Angelo_Musitano (uid: 1)'),
(20, '2020-01-17 04:53:35', 'Angelo_Musitano (uid: 1) gives a Sniper Rifle to Angelo_Musitano (uid: 1)'),
(21, '2020-01-17 04:53:36', 'Angelo_Musitano (uid: 1) gives a Bomb to Angelo_Musitano (uid: 1)'),
(22, '2020-01-17 04:53:37', 'Angelo_Musitano (uid: 1) gives a Spray Can to Angelo_Musitano (uid: 1)'),
(23, '2020-01-17 04:53:38', 'Angelo_Musitano (uid: 1) gives a Fire Extinguisher to Angelo_Musitano (uid: 1)'),
(24, '2020-01-17 04:53:39', 'Angelo_Musitano (uid: 1) gives a Camera to Angelo_Musitano (uid: 1)'),
(25, '2020-01-17 04:53:40', 'Angelo_Musitano (uid: 1) gives a TEC9 to Angelo_Musitano (uid: 1)'),
(26, '2020-01-17 04:53:41', 'Angelo_Musitano (uid: 1) gives a M4 to Angelo_Musitano (uid: 1)'),
(27, '2020-01-17 04:53:42', 'Angelo_Musitano (uid: 1) gives a Brass Knuckles to Angelo_Musitano (uid: 1)'),
(28, '2020-01-17 04:53:43', 'Angelo_Musitano (uid: 1) gives a Golf Club to Angelo_Musitano (uid: 1)'),
(29, '2020-01-17 04:53:45', 'Angelo_Musitano (uid: 1) gives a Baseball Bat to Angelo_Musitano (uid: 1)'),
(30, '2020-01-17 04:53:46', 'Angelo_Musitano (uid: 1) gives a Nite Stick to Angelo_Musitano (uid: 1)'),
(31, '2020-01-17 04:53:47', 'Angelo_Musitano (uid: 1) gives a Golf Club to Angelo_Musitano (uid: 1)'),
(32, '2020-01-17 04:53:48', 'Angelo_Musitano (uid: 1) gives a Shovel to Angelo_Musitano (uid: 1)'),
(33, '2020-01-17 04:53:49', 'Angelo_Musitano (uid: 1) gives a Katana to Angelo_Musitano (uid: 1)'),
(34, '2020-01-17 04:53:50', 'Angelo_Musitano (uid: 1) gives a Knife to Angelo_Musitano (uid: 1)'),
(35, '2020-01-17 04:53:52', 'Angelo_Musitano (uid: 1) gives a Pool Cue to Angelo_Musitano (uid: 1)'),
(36, '2020-01-17 04:53:53', 'Angelo_Musitano (uid: 1) gives a Chainsaw to Angelo_Musitano (uid: 1)'),
(37, '2020-01-17 04:53:55', 'Angelo_Musitano (uid: 1) gives a Nite Stick to Angelo_Musitano (uid: 1)');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `log_givemoney`
--

CREATE TABLE `log_givemoney` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `log_makeadmin`
--

CREATE TABLE `log_makeadmin` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `log_makehelper`
--

CREATE TABLE `log_makehelper` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `log_namechanges`
--

CREATE TABLE `log_namechanges` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `log_namehistory`
--

CREATE TABLE `log_namehistory` (
  `id` int(10) NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `oldname` varchar(24) DEFAULT NULL,
  `newname` varchar(24) DEFAULT NULL,
  `changedby` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `log_property`
--

CREATE TABLE `log_property` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `log_punishments`
--

CREATE TABLE `log_punishments` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `log_referrals`
--

CREATE TABLE `log_referrals` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `log_setstat`
--

CREATE TABLE `log_setstat` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Gegevens worden geëxporteerd voor tabel `log_setstat`
--

INSERT INTO `log_setstat` (`id`, `date`, `description`) VALUES
(1, '2020-01-17 04:53:11', 'Angelo_Musitano (uid: 1) set Angelo_Musitano\'s (uid: 1) hours to 666');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `log_vip`
--

CREATE TABLE `log_vip` (
  `id` int(10) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `postedby` varchar(200) COLLATE latin1_spanish_ci NOT NULL,
  `news` text COLLATE latin1_spanish_ci NOT NULL,
  `subject` varchar(200) COLLATE latin1_spanish_ci NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `phonebook`
--

CREATE TABLE `phonebook` (
  `name` varchar(24) DEFAULT NULL,
  `number` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `playerbackpack`
--

CREATE TABLE `playerbackpack` (
  `ID` int(11) NOT NULL,
  `BackpackCreated` int(11) NOT NULL DEFAULT 0,
  `BackpackOwner` int(11) NOT NULL DEFAULT -1,
  `BackpackOwnerName` varchar(24) NOT NULL DEFAULT 'Vacant',
  `BackpackSize` int(11) NOT NULL DEFAULT 0,
  `Attached` int(11) NOT NULL DEFAULT 0,
  `PosX` float NOT NULL DEFAULT 0,
  `PosY` float NOT NULL DEFAULT 0,
  `PosZ` float NOT NULL DEFAULT 0,
  `VirtualWorld` int(11) NOT NULL DEFAULT -1,
  `InteriorWorld` int(11) NOT NULL DEFAULT -1,
  `Cash` int(11) NOT NULL DEFAULT 0,
  `Crack` int(11) NOT NULL DEFAULT 0,
  `Pot` int(11) NOT NULL DEFAULT 0,
  `Mats` int(11) NOT NULL DEFAULT 0,
  `Gun0` int(11) NOT NULL DEFAULT 0,
  `Gun1` int(11) NOT NULL DEFAULT 0,
  `Gun2` int(11) NOT NULL DEFAULT 0,
  `Gun3` int(11) NOT NULL DEFAULT 0,
  `Gun4` int(11) NOT NULL DEFAULT 0,
  `Gun5` int(11) NOT NULL DEFAULT 0,
  `Gun6` int(11) NOT NULL DEFAULT 0,
  `Gun7` int(11) NOT NULL DEFAULT 0,
  `Gun8` int(11) NOT NULL DEFAULT 0,
  `Gun9` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `points`
--

CREATE TABLE `points` (
  `id` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `capturedby` varchar(24) DEFAULT 'No-one',
  `capturedgang` tinyint(2) DEFAULT -1,
  `type` tinyint(2) DEFAULT 0,
  `profits` int(10) DEFAULT 0,
  `time` tinyint(2) DEFAULT 24,
  `point_x` float DEFAULT 0,
  `point_y` float DEFAULT 0,
  `point_z` float DEFAULT 0,
  `pointinterior` tinyint(2) DEFAULT 0,
  `pointworld` int(10) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `posts_acp`
--

CREATE TABLE `posts_acp` (
  `title` varchar(64) NOT NULL,
  `date` date NOT NULL,
  `description` text NOT NULL,
  `postedby` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `radiostations`
--

CREATE TABLE `radiostations` (
  `id` int(11) NOT NULL,
  `name` varchar(90) NOT NULL,
  `url` varchar(128) NOT NULL,
  `genre` varchar(90) NOT NULL,
  `subgenre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `rp_atms`
--

CREATE TABLE `rp_atms` (
  `atmID` int(12) NOT NULL,
  `atmX` float DEFAULT 0,
  `atmY` float DEFAULT 0,
  `atmZ` float DEFAULT 0,
  `atmA` float DEFAULT 0,
  `atmInterior` int(12) DEFAULT 0,
  `atmWorld` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `rp_contacts`
--

CREATE TABLE `rp_contacts` (
  `ID` int(12) NOT NULL,
  `Phone` int(12) DEFAULT 0,
  `Contact` varchar(24) DEFAULT NULL,
  `Number` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `rp_dealercars`
--

CREATE TABLE `rp_dealercars` (
  `ID` int(12) NOT NULL,
  `Company` int(12) DEFAULT 0,
  `Model` int(4) DEFAULT 0,
  `Price` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `rp_furniture`
--

CREATE TABLE `rp_furniture` (
  `fID` int(12) NOT NULL,
  `fHouseID` int(12) DEFAULT 0,
  `fModel` int(6) DEFAULT 0,
  `fX` float DEFAULT 0,
  `fY` float DEFAULT 0,
  `fZ` float DEFAULT 0,
  `fRX` float DEFAULT 0,
  `fRY` float DEFAULT 0,
  `fRZ` float DEFAULT 0,
  `fInterior` int(12) DEFAULT 0,
  `fWorld` int(12) DEFAULT 0,
  `fCode` int(12) DEFAULT 0,
  `fMoney` int(12) DEFAULT 0,
  `Mat1` int(11) DEFAULT 0,
  `Mat2` int(11) DEFAULT 0,
  `Mat3` int(11) DEFAULT 0,
  `MatColor1` int(11) DEFAULT 0,
  `MatColor2` int(11) DEFAULT 0,
  `MatColor3` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `rp_gundamages`
--

CREATE TABLE `rp_gundamages` (
  `Weapon` tinyint(2) DEFAULT NULL,
  `Damage` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `rp_payphones`
--

CREATE TABLE `rp_payphones` (
  `phID` int(12) NOT NULL,
  `phNumber` int(12) DEFAULT 0,
  `phX` float DEFAULT 0,
  `phY` float DEFAULT 0,
  `phZ` float DEFAULT 0,
  `phA` float DEFAULT 0,
  `phInterior` int(12) DEFAULT 0,
  `phWorld` int(12) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `server_info`
--

CREATE TABLE `server_info` (
  `totalconnections` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `govvault` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `shots`
--

CREATE TABLE `shots` (
  `id` int(10) NOT NULL,
  `playerid` smallint(3) DEFAULT NULL,
  `weaponid` tinyint(2) DEFAULT NULL,
  `hittype` tinyint(2) DEFAULT NULL,
  `hitid` int(10) DEFAULT NULL,
  `hitplayer` varchar(24) DEFAULT NULL,
  `pos_x` float DEFAULT NULL,
  `pos_y` float DEFAULT NULL,
  `pos_z` float DEFAULT NULL,
  `timestamp` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `speedcameras`
--

CREATE TABLE `speedcameras` (
  `speedID` int(12) NOT NULL,
  `speedRange` float DEFAULT 0,
  `speedLimit` float DEFAULT 0,
  `speedX` float DEFAULT 0,
  `speedY` float DEFAULT 0,
  `speedZ` float DEFAULT 0,
  `speedAngle` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `texts`
--

CREATE TABLE `texts` (
  `id` int(10) NOT NULL,
  `sender_number` int(10) DEFAULT NULL,
  `recipient_number` int(10) DEFAULT NULL,
  `sender` varchar(24) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tickets`
--

CREATE TABLE `tickets` (
  `ID` int(11) NOT NULL,
  `player` varchar(25) NOT NULL,
  `officer` varchar(25) NOT NULL,
  `time` time NOT NULL,
  `date` date NOT NULL,
  `amount` int(11) NOT NULL,
  `reason` varchar(64) NOT NULL,
  `paid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `turfs`
--

CREATE TABLE `turfs` (
  `id` tinyint(2) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `capturedby` varchar(24) DEFAULT 'No-one',
  `capturedgang` tinyint(2) DEFAULT -1,
  `type` tinyint(2) DEFAULT 0,
  `time` tinyint(2) DEFAULT 12,
  `min_x` float DEFAULT 0,
  `min_y` float DEFAULT 0,
  `max_x` float DEFAULT 0,
  `max_y` float DEFAULT 0,
  `height` float DEFAULT 0,
  `count` int(4) NOT NULL DEFAULT 3
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `passwordchanged` tinyint(1) NOT NULL DEFAULT 0,
  `uid` int(10) NOT NULL,
  `username` varchar(24) DEFAULT NULL,
  `password` varchar(129) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `setup` tinyint(1) DEFAULT 1,
  `gender` tinyint(1) DEFAULT 1,
  `age` tinyint(3) DEFAULT 18,
  `skin` smallint(3) DEFAULT 299,
  `camera_x` float DEFAULT 0,
  `camera_y` float DEFAULT 0,
  `camera_z` float DEFAULT 0,
  `pos_x` float DEFAULT 0,
  `pos_y` float DEFAULT 0,
  `pos_z` float DEFAULT 0,
  `pos_a` float DEFAULT 0,
  `interior` tinyint(2) DEFAULT 0,
  `world` int(10) DEFAULT 0,
  `cash` int(10) DEFAULT 5000,
  `bank` int(10) DEFAULT 10000,
  `paycheck` int(10) DEFAULT 0,
  `level` int(10) DEFAULT 1,
  `exp` int(10) DEFAULT 0,
  `minutes` tinyint(2) DEFAULT 0,
  `hours` int(10) DEFAULT 0,
  `adminlevel` int(10) DEFAULT 0,
  `adminname` varchar(24) DEFAULT 'None',
  `helperlevel` tinyint(2) DEFAULT 0,
  `health` float DEFAULT 100,
  `armor` float DEFAULT 0,
  `upgradepoints` int(10) DEFAULT 0,
  `warnings` tinyint(3) DEFAULT 0,
  `injured` tinyint(1) DEFAULT 0,
  `hospital` tinyint(1) DEFAULT 0,
  `spawnhealth` float DEFAULT 50,
  `spawnarmor` float DEFAULT 0,
  `jailtype` tinyint(1) DEFAULT 0,
  `jailtime` int(10) DEFAULT 0,
  `newbiemuted` tinyint(1) DEFAULT 0,
  `helpmuted` tinyint(1) DEFAULT 0,
  `admuted` tinyint(1) DEFAULT 0,
  `livemuted` tinyint(1) DEFAULT 0,
  `globalmuted` tinyint(1) DEFAULT 0,
  `reportmuted` tinyint(2) DEFAULT 0,
  `reportwarns` tinyint(2) DEFAULT 0,
  `fightstyle` tinyint(2) DEFAULT 4,
  `locked` tinyint(1) DEFAULT 0,
  `accent` varchar(16) DEFAULT 'None',
  `cookies` int(10) DEFAULT 0,
  `phone` int(10) DEFAULT 0,
  `job` int(10) DEFAULT -1,
  `secondjob` tinyint(2) DEFAULT -1,
  `crimes` int(10) DEFAULT 0,
  `arrested` int(10) DEFAULT 0,
  `wantedlevel` tinyint(2) DEFAULT 0,
  `materials` int(10) DEFAULT 0,
  `weed` int(10) DEFAULT 0,
  `cocaine` int(10) DEFAULT 0,
  `meth` int(10) DEFAULT 0,
  `painkillers` int(10) DEFAULT 0,
  `seeds` int(10) DEFAULT 0,
  `ephedrine` int(10) DEFAULT 0,
  `muriaticacid` int(10) DEFAULT 0,
  `bakingsoda` int(10) DEFAULT 0,
  `cigars` int(10) DEFAULT 0,
  `walkietalkie` tinyint(1) DEFAULT 0,
  `channel` int(10) DEFAULT 0,
  `rentinghouse` int(10) DEFAULT 0,
  `spraycans` int(10) DEFAULT 0,
  `boombox` tinyint(1) DEFAULT 0,
  `mp3player` tinyint(1) DEFAULT 0,
  `phonebook` tinyint(1) DEFAULT 0,
  `fishingrod` tinyint(1) DEFAULT 0,
  `fishingbait` int(10) DEFAULT 0,
  `fishweight` int(10) DEFAULT 0,
  `components` int(10) DEFAULT 0,
  `courierskill` int(10) DEFAULT 0,
  `fishingskill` int(10) DEFAULT 0,
  `guardskill` int(10) DEFAULT 0,
  `weaponskill` int(10) DEFAULT 0,
  `mechanicskill` int(10) DEFAULT 0,
  `lawyerskill` int(10) DEFAULT 0,
  `detectiveskill` int(10) DEFAULT 0,
  `smugglerskill` int(10) DEFAULT 0,
  `toggletextdraws` tinyint(1) DEFAULT 0,
  `togglebug` tinyint(1) DEFAULT 0,
  `toggleooc` tinyint(1) DEFAULT 0,
  `togglephone` tinyint(1) DEFAULT 0,
  `toggleadmin` tinyint(1) DEFAULT 0,
  `togglehelper` tinyint(1) DEFAULT 0,
  `togglenewbie` tinyint(1) DEFAULT 0,
  `togglewt` tinyint(1) DEFAULT 0,
  `toggleradio` tinyint(1) DEFAULT 0,
  `togglevip` tinyint(1) DEFAULT 0,
  `togglemusic` tinyint(1) DEFAULT 0,
  `togglefaction` tinyint(1) DEFAULT 0,
  `togglegang` tinyint(1) DEFAULT 0,
  `togglenews` tinyint(1) DEFAULT 0,
  `toggleglobal` tinyint(1) DEFAULT 1,
  `togglecam` tinyint(1) DEFAULT 0,
  `carlicense` tinyint(1) DEFAULT 0,
  `vippackage` tinyint(2) DEFAULT 0,
  `viptime` int(10) DEFAULT 0,
  `vipcooldown` int(10) DEFAULT 0,
  `weapon_0` tinyint(2) DEFAULT 0,
  `weapon_1` tinyint(2) DEFAULT 0,
  `weapon_2` tinyint(2) DEFAULT 0,
  `weapon_3` tinyint(2) DEFAULT 0,
  `weapon_4` tinyint(2) DEFAULT 0,
  `weapon_5` tinyint(2) DEFAULT 0,
  `weapon_6` tinyint(2) DEFAULT 0,
  `weapon_7` tinyint(2) DEFAULT 0,
  `weapon_8` tinyint(2) DEFAULT 0,
  `weapon_9` tinyint(2) DEFAULT 0,
  `weapon_10` tinyint(2) DEFAULT 0,
  `weapon_11` tinyint(2) DEFAULT 0,
  `weapon_12` tinyint(2) DEFAULT 0,
  `ammo_0` smallint(5) DEFAULT 0,
  `ammo_1` smallint(5) DEFAULT 0,
  `ammo_2` smallint(5) DEFAULT 0,
  `ammo_3` smallint(5) DEFAULT 0,
  `ammo_4` smallint(5) DEFAULT 0,
  `ammo_5` smallint(5) DEFAULT 0,
  `ammo_6` smallint(5) DEFAULT 0,
  `ammo_7` smallint(5) DEFAULT 0,
  `ammo_8` smallint(5) DEFAULT 0,
  `ammo_9` smallint(5) DEFAULT 0,
  `ammo_10` smallint(5) DEFAULT 0,
  `ammo_11` smallint(5) DEFAULT 0,
  `ammo_12` smallint(5) DEFAULT 0,
  `faction` tinyint(2) DEFAULT -1,
  `gang` tinyint(2) DEFAULT -1,
  `factionrank` tinyint(2) DEFAULT 0,
  `gangrank` tinyint(2) DEFAULT 0,
  `division` tinyint(2) DEFAULT -1,
  `contracted` int(10) DEFAULT 0,
  `contractby` varchar(24) DEFAULT 'Nobody',
  `bombs` int(10) DEFAULT 0,
  `completedhits` int(10) DEFAULT 0,
  `failedhits` int(10) DEFAULT 0,
  `reports` int(10) DEFAULT 0,
  `helprequests` int(10) DEFAULT 0,
  `speedometer` tinyint(1) DEFAULT 1,
  `factionmod` tinyint(1) DEFAULT 0,
  `gangmod` tinyint(1) DEFAULT 0,
  `banappealer` tinyint(1) DEFAULT 0,
  `helpermanager` tinyint(1) DEFAULT 0,
  `dynamicadmin` tinyint(1) DEFAULT 0,
  `adminpersonnel` tinyint(1) DEFAULT 0,
  `weedplanted` tinyint(1) DEFAULT 0,
  `weedtime` int(10) DEFAULT 0,
  `weedgrams` int(10) DEFAULT 0,
  `weed_x` float DEFAULT 0,
  `weed_y` float DEFAULT 0,
  `weed_z` float DEFAULT 0,
  `weed_a` float DEFAULT 0,
  `inventoryupgrade` int(10) DEFAULT 0,
  `addictupgrade` int(10) DEFAULT 0,
  `traderupgrade` int(10) DEFAULT 0,
  `assetupgrade` int(10) DEFAULT 0,
  `pistolammo` smallint(5) DEFAULT 0,
  `shotgunammo` smallint(5) DEFAULT 0,
  `smgammo` smallint(5) DEFAULT 0,
  `arammo` smallint(5) DEFAULT 0,
  `rifleammo` smallint(5) DEFAULT 0,
  `hpammo` smallint(5) DEFAULT 0,
  `poisonammo` smallint(5) DEFAULT 0,
  `fmjammo` smallint(5) DEFAULT 0,
  `ammotype` tinyint(2) DEFAULT 0,
  `ammoweapon` tinyint(2) DEFAULT 0,
  `dmwarnings` tinyint(2) DEFAULT 0,
  `weaponrestricted` int(10) DEFAULT 0,
  `referral_uid` int(10) DEFAULT 0,
  `refercount` int(10) DEFAULT 0,
  `watch` tinyint(1) DEFAULT 0,
  `gps` tinyint(1) DEFAULT 0,
  `prisonedby` varchar(24) DEFAULT 'No-one',
  `prisonreason` varchar(128) DEFAULT 'None',
  `togglehud` tinyint(1) DEFAULT 1,
  `clothes` smallint(3) DEFAULT -1,
  `showturfs` tinyint(1) DEFAULT 0,
  `showlands` tinyint(1) DEFAULT 0,
  `watchon` tinyint(1) DEFAULT 0,
  `gpson` tinyint(1) DEFAULT 0,
  `doublexp` int(10) DEFAULT 0,
  `couriercooldown` int(10) DEFAULT 0,
  `pizzacooldown` int(10) DEFAULT 0,
  `detectivecooldown` int(10) DEFAULT 0,
  `gascan` tinyint(1) DEFAULT NULL,
  `duty` int(1) DEFAULT NULL,
  `bandana` tinyint(10) DEFAULT NULL,
  `login_date` date DEFAULT NULL,
  `FormerAdmin` tinyint(3) NOT NULL DEFAULT 0,
  `customtitle` varchar(128) NOT NULL,
  `customcolor` int(10) NOT NULL DEFAULT -256,
  `scanneron` tinyint(1) DEFAULT 0,
  `rimkits` int(10) DEFAULT 0,
  `bodykits` int(10) DEFAULT 0,
  `policescanner` tinyint(1) DEFAULT 0,
  `firstaid` int(10) DEFAULT 0,
  `extraSongs` int(11) NOT NULL DEFAULT 0,
  `top10` tinyint(1) NOT NULL DEFAULT 1,
  `totalfires` int(10) DEFAULT 0,
  `totalpatients` int(10) DEFAULT 0,
  `money_earned` bigint(20) DEFAULT 0,
  `money_spent` bigint(20) DEFAULT 0,
  `rope` int(10) DEFAULT 0,
  `insurance` tinyint(1) DEFAULT 0,
  `adminhide` tinyint(1) DEFAULT 0,
  `passportphone` int(10) DEFAULT 0,
  `passportskin` smallint(3) DEFAULT 0,
  `passportlevel` int(10) DEFAULT 0,
  `passportname` varchar(24) DEFAULT 'None',
  `passport` tinyint(1) DEFAULT 0,
  `globalmutetime` int(10) DEFAULT 0,
  `reportmutetime` int(10) DEFAULT 0,
  `newbiemutetime` int(10) DEFAULT 0,
  `togglereports` tinyint(1) DEFAULT 0,
  `thiefcooldown` int(10) DEFAULT 0,
  `crackcooldown` int(10) DEFAULT 0,
  `laborupgrade` int(10) DEFAULT 0,
  `scripter` tinyint(1) DEFAULT 0,
  `factionleader` tinyint(1) DEFAULT 0,
  `thiefskill` int(10) DEFAULT 0,
  `togglewhisper` tinyint(1) DEFAULT 0,
  `landkeys` tinyint(3) NOT NULL DEFAULT -1,
  `rarecooldown` int(8) DEFAULT 0,
  `diamonds` smallint(5) DEFAULT 0,
  `bugged` tinyint(1) DEFAULT 0,
  `gameaffairs` tinyint(1) DEFAULT 0,
  `crew` tinyint(2) DEFAULT -1,
  `newbies` mediumint(5) DEFAULT 0,
  `rollerskates` tinyint(2) DEFAULT 0,
  `marriedto` int(10) DEFAULT -1,
  `humanresources` tinyint(1) DEFAULT 0,
  `complaintmod` tinyint(1) DEFAULT 0,
  `webdev` tinyint(1) DEFAULT 0,
  `graphic` tinyint(1) DEFAULT 0,
  `vehlock` tinyint(1) DEFAULT 0,
  `sprunk` int(10) DEFAULT 0,
  `truckinglevel` int(10) DEFAULT 0,
  `truckingxp` int(10) DEFAULT 0,
  `santagifts` int(10) DEFAULT 0,
  `seckey` int(11) UNSIGNED NOT NULL,
  `togglepoint` tinyint(4) NOT NULL DEFAULT 0,
  `togglepm` tinyint(1) DEFAULT 0,
  `toggleturfs` tinyint(1) DEFAULT 0,
  `togglepoints` tinyint(1) DEFAULT 0,
  `tuckinglevel` int(10) NOT NULL DEFAULT 1,
  `notoriety` int(11) DEFAULT 0,
  `thirsttimer` int(11) NOT NULL,
  `thirst` int(11) NOT NULL,
  `thrist` int(11) NOT NULL,
  `gunlicense` tinyint(2) NOT NULL DEFAULT 0,
  `togglevehicle` tinyint(2) NOT NULL DEFAULT 0,
  `housealarm` tinyint(2) NOT NULL DEFAULT 0,
  `dj` int(2) NOT NULL DEFAULT 0,
  `helmet` int(1) NOT NULL DEFAULT 0,
  `blindfold` int(1) NOT NULL DEFAULT 0,
  `Ammo1` int(12) DEFAULT 50,
  `Ammo2` int(12) DEFAULT 50,
  `Ammo3` int(12) DEFAULT 50,
  `Ammo4` int(12) DEFAULT 50,
  `Ammo5` int(12) DEFAULT 50,
  `Ammo6` int(12) DEFAULT 50,
  `Ammo7` int(12) DEFAULT 50,
  `Ammo8` int(12) DEFAULT 50,
  `Ammo9` int(12) DEFAULT 50,
  `Ammo10` int(12) DEFAULT 50,
  `Ammo11` int(12) DEFAULT 50,
  `Ammo12` int(12) DEFAULT 50,
  `Ammo13` int(12) DEFAULT 50,
  `weapon_13` int(12) DEFAULT 0,
  `HungerDeathTimer` int(11) NOT NULL DEFAULT 0,
  `Hunger` int(11) NOT NULL DEFAULT 50,
  `HungerTimer` int(11) NOT NULL DEFAULT 0,
  `spawnhouse` int(11) NOT NULL DEFAULT -1,
  `spawntype` int(11) NOT NULL DEFAULT 0,
  `chatstyle` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`passwordchanged`, `uid`, `username`, `password`, `regdate`, `lastlogin`, `ip`, `setup`, `gender`, `age`, `skin`, `camera_x`, `camera_y`, `camera_z`, `pos_x`, `pos_y`, `pos_z`, `pos_a`, `interior`, `world`, `cash`, `bank`, `paycheck`, `level`, `exp`, `minutes`, `hours`, `adminlevel`, `adminname`, `helperlevel`, `health`, `armor`, `upgradepoints`, `warnings`, `injured`, `hospital`, `spawnhealth`, `spawnarmor`, `jailtype`, `jailtime`, `newbiemuted`, `helpmuted`, `admuted`, `livemuted`, `globalmuted`, `reportmuted`, `reportwarns`, `fightstyle`, `locked`, `accent`, `cookies`, `phone`, `job`, `secondjob`, `crimes`, `arrested`, `wantedlevel`, `materials`, `weed`, `cocaine`, `meth`, `painkillers`, `seeds`, `ephedrine`, `muriaticacid`, `bakingsoda`, `cigars`, `walkietalkie`, `channel`, `rentinghouse`, `spraycans`, `boombox`, `mp3player`, `phonebook`, `fishingrod`, `fishingbait`, `fishweight`, `components`, `courierskill`, `fishingskill`, `guardskill`, `weaponskill`, `mechanicskill`, `lawyerskill`, `detectiveskill`, `smugglerskill`, `toggletextdraws`, `togglebug`, `toggleooc`, `togglephone`, `toggleadmin`, `togglehelper`, `togglenewbie`, `togglewt`, `toggleradio`, `togglevip`, `togglemusic`, `togglefaction`, `togglegang`, `togglenews`, `toggleglobal`, `togglecam`, `carlicense`, `vippackage`, `viptime`, `vipcooldown`, `weapon_0`, `weapon_1`, `weapon_2`, `weapon_3`, `weapon_4`, `weapon_5`, `weapon_6`, `weapon_7`, `weapon_8`, `weapon_9`, `weapon_10`, `weapon_11`, `weapon_12`, `ammo_0`, `ammo_1`, `ammo_2`, `ammo_3`, `ammo_4`, `ammo_5`, `ammo_6`, `ammo_7`, `ammo_8`, `ammo_9`, `ammo_10`, `ammo_11`, `ammo_12`, `faction`, `gang`, `factionrank`, `gangrank`, `division`, `contracted`, `contractby`, `bombs`, `completedhits`, `failedhits`, `reports`, `helprequests`, `speedometer`, `factionmod`, `gangmod`, `banappealer`, `helpermanager`, `dynamicadmin`, `adminpersonnel`, `weedplanted`, `weedtime`, `weedgrams`, `weed_x`, `weed_y`, `weed_z`, `weed_a`, `inventoryupgrade`, `addictupgrade`, `traderupgrade`, `assetupgrade`, `pistolammo`, `shotgunammo`, `smgammo`, `arammo`, `rifleammo`, `hpammo`, `poisonammo`, `fmjammo`, `ammotype`, `ammoweapon`, `dmwarnings`, `weaponrestricted`, `referral_uid`, `refercount`, `watch`, `gps`, `prisonedby`, `prisonreason`, `togglehud`, `clothes`, `showturfs`, `showlands`, `watchon`, `gpson`, `doublexp`, `couriercooldown`, `pizzacooldown`, `detectivecooldown`, `gascan`, `duty`, `bandana`, `login_date`, `FormerAdmin`, `customtitle`, `customcolor`, `scanneron`, `rimkits`, `bodykits`, `policescanner`, `firstaid`, `extraSongs`, `top10`, `totalfires`, `totalpatients`, `money_earned`, `money_spent`, `rope`, `insurance`, `adminhide`, `passportphone`, `passportskin`, `passportlevel`, `passportname`, `passport`, `globalmutetime`, `reportmutetime`, `newbiemutetime`, `togglereports`, `thiefcooldown`, `crackcooldown`, `laborupgrade`, `scripter`, `factionleader`, `thiefskill`, `togglewhisper`, `landkeys`, `rarecooldown`, `diamonds`, `bugged`, `gameaffairs`, `crew`, `newbies`, `rollerskates`, `marriedto`, `humanresources`, `complaintmod`, `webdev`, `graphic`, `vehlock`, `sprunk`, `truckinglevel`, `truckingxp`, `santagifts`, `seckey`, `togglepoint`, `togglepm`, `toggleturfs`, `togglepoints`, `tuckinglevel`, `notoriety`, `thirsttimer`, `thirst`, `thrist`, `gunlicense`, `togglevehicle`, `housealarm`, `dj`, `helmet`, `blindfold`, `Ammo1`, `Ammo2`, `Ammo3`, `Ammo4`, `Ammo5`, `Ammo6`, `Ammo7`, `Ammo8`, `Ammo9`, `Ammo10`, `Ammo11`, `Ammo12`, `Ammo13`, `weapon_13`, `HungerDeathTimer`, `Hunger`, `HungerTimer`, `spawnhouse`, `spawntype`, `chatstyle`) VALUES
(1, 1, 'admin', '', '2020-01-17 04:49:52', '2020-01-17 04:52:49', '127.0.0.1', 0, 1, 18, 299, 1586.56, -2331.03, 14.586, 1580.99, -2330.81, 13.538, 87.772, 0, 0, 5000, 10000, 0, 1, 0, 1, 666, 10, 'None', 0, 100, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'None', 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 3, 24, 26, 32, 31, 34, 36, 39, 43, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 'Nobody', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'No-one', 'None', 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, NULL, 0, '', -256, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 0, 0, 50, 0, -1, 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(10) NOT NULL,
  `ownerid` int(10) DEFAULT 0,
  `owner` varchar(24) DEFAULT 'Nobody',
  `modelid` smallint(3) DEFAULT 0,
  `price` int(10) DEFAULT 0,
  `tickets` int(10) DEFAULT 0,
  `locked` tinyint(1) DEFAULT 0,
  `plate` varchar(32) DEFAULT 'None',
  `fuel` tinyint(3) DEFAULT 100,
  `health` float DEFAULT 1000,
  `pos_x` float DEFAULT 0,
  `pos_y` float DEFAULT 0,
  `pos_z` float DEFAULT 0,
  `pos_a` float DEFAULT 0,
  `color1` smallint(3) DEFAULT 0,
  `color2` smallint(3) DEFAULT 0,
  `paintjob` tinyint(2) DEFAULT -1,
  `interior` tinyint(2) DEFAULT 0,
  `world` int(10) DEFAULT 0,
  `neon` smallint(5) DEFAULT 0,
  `neonenabled` tinyint(1) DEFAULT 0,
  `trunk` tinyint(1) DEFAULT 0,
  `mod_1` smallint(4) DEFAULT 0,
  `mod_2` smallint(4) DEFAULT 0,
  `mod_3` smallint(4) DEFAULT 0,
  `mod_4` smallint(4) DEFAULT 0,
  `mod_5` smallint(4) DEFAULT 0,
  `mod_6` smallint(4) DEFAULT 0,
  `mod_7` smallint(4) DEFAULT 0,
  `mod_8` smallint(4) DEFAULT 0,
  `mod_9` smallint(4) DEFAULT 0,
  `mod_10` smallint(4) DEFAULT 0,
  `mod_11` smallint(4) DEFAULT 0,
  `mod_12` smallint(4) DEFAULT 0,
  `mod_13` smallint(4) DEFAULT 0,
  `mod_14` smallint(4) DEFAULT 0,
  `cash` int(10) DEFAULT 0,
  `materials` int(10) DEFAULT 0,
  `weed` int(10) DEFAULT 0,
  `cocaine` int(10) DEFAULT 0,
  `meth` int(10) DEFAULT 0,
  `painkillers` int(10) DEFAULT 0,
  `weapon_1` tinyint(2) DEFAULT 0,
  `weapon_2` tinyint(2) DEFAULT 0,
  `weapon_3` tinyint(2) DEFAULT 0,
  `ammo_1` smallint(5) DEFAULT 0,
  `ammo_2` smallint(5) DEFAULT 0,
  `ammo_3` smallint(5) DEFAULT 0,
  `gangid` tinyint(2) DEFAULT -1,
  `factiontype` tinyint(2) DEFAULT 0,
  `vippackage` tinyint(2) NOT NULL DEFAULT 0,
  `job` tinyint(2) DEFAULT -1,
  `respawndelay` int(10) DEFAULT 0,
  `pistolammo` smallint(5) DEFAULT 0,
  `shotgunammo` smallint(5) DEFAULT 0,
  `smgammo` smallint(5) DEFAULT 0,
  `arammo` smallint(5) DEFAULT 0,
  `rifleammo` smallint(5) DEFAULT 0,
  `hpammo` smallint(5) DEFAULT 0,
  `poisonammo` smallint(5) DEFAULT 0,
  `fmjammo` smallint(5) DEFAULT 0,
  `alarm` tinyint(2) NOT NULL DEFAULT 0,
  `weapon_4` tinyint(2) NOT NULL DEFAULT 0,
  `weapon_5` tinyint(2) NOT NULL DEFAULT 0,
  `siren` tinyint(2) DEFAULT 0,
  `rank` tinyint(3) DEFAULT 0,
  `carImpounded` int(12) DEFAULT 0,
  `carImpoundPrice` int(12) DEFAULT 0,
  `forsaleprice` int(11) NOT NULL DEFAULT 0,
  `forsale` int(11) NOT NULL DEFAULT 0,
  `mileage` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `weapons`
--

CREATE TABLE `weapons` (
  `uid` int(10) DEFAULT NULL,
  `slot` tinyint(2) DEFAULT NULL,
  `weaponid` tinyint(2) DEFAULT NULL,
  `ammo` smallint(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `achievements`
--
ALTER TABLE `achievements`
  ADD UNIQUE KEY `uid` (`uid`,`achievement`) USING BTREE;

--
-- Indexen voor tabel `actordb`
--
ALTER TABLE `actordb`
  ADD PRIMARY KEY (`ID`) USING BTREE;

--
-- Indexen voor tabel `admins`
--
ALTER TABLE `admins`
  ADD UNIQUE KEY `uid` (`uid`) USING BTREE;

--
-- Indexen voor tabel `arrestpoints`
--
ALTER TABLE `arrestpoints`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexen voor tabel `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexen voor tabel `changes`
--
ALTER TABLE `changes`
  ADD UNIQUE KEY `slot` (`slot`) USING BTREE;

--
-- Indexen voor tabel `charges`
--
ALTER TABLE `charges`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexen voor tabel `clothing`
--
ALTER TABLE `clothing`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexen voor tabel `crews`
--
ALTER TABLE `crews`
  ADD UNIQUE KEY `id` (`id`,`crewid`) USING BTREE;

--
-- Indexen voor tabel `divisions`
--
ALTER TABLE `divisions`
  ADD UNIQUE KEY `id` (`id`,`divisionid`) USING BTREE;

--
-- Indexen voor tabel `entrances`
--
ALTER TABLE `entrances`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexen voor tabel `factionlockers`
--
ALTER TABLE `factionlockers`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexen voor tabel `factionpay`
--
ALTER TABLE `factionpay`
  ADD UNIQUE KEY `id` (`id`,`rank`) USING BTREE;

--
-- Indexen voor tabel `factionranks`
--
ALTER TABLE `factionranks`
  ADD UNIQUE KEY `id` (`id`,`rank`) USING BTREE;

--
-- Indexen voor tabel `factions`
--
ALTER TABLE `factions`
  ADD UNIQUE KEY `id` (`id`) USING BTREE;

--
-- Indexen voor tabel `factionskins`
--
ALTER TABLE `factionskins`
  ADD UNIQUE KEY `id` (`id`,`slot`) USING BTREE;

--
-- Indexen voor tabel `flags`
--
ALTER TABLE `flags`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexen voor tabel `furniture`
--
ALTER TABLE `furniture`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexen voor tabel `gangranks`
--
ALTER TABLE `gangranks`
  ADD UNIQUE KEY `id` (`id`,`rank`) USING BTREE;

--
-- Indexen voor tabel `gangskins`
--
ALTER TABLE `gangskins`
  ADD UNIQUE KEY `id` (`id`,`slot`) USING BTREE;

--
-- Indexen voor tabel `gangsold`
--
ALTER TABLE `gangsold`
  ADD UNIQUE KEY `id` (`id`) USING BTREE;

--
-- Indexen voor tabel `garages`
--
ALTER TABLE `garages`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexen voor tabel `graffiti`
--
ALTER TABLE `graffiti`
  ADD PRIMARY KEY (`graffitiID`) USING BTREE;

--
-- Indexen voor tabel `gunracks`
--
ALTER TABLE `gunracks`
  ADD PRIMARY KEY (`rackID`);

--
-- Indexen voor tabel `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexen voor tabel `impoundlots`
--
ALTER TABLE `impoundlots`
  ADD KEY `id` (`id`);

--
-- Indexen voor tabel `kills`
--
ALTER TABLE `kills`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexen voor tabel `landobjects`
--
ALTER TABLE `landobjects`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexen voor tabel `lands`
--
ALTER TABLE `lands`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexen voor tabel `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexen voor tabel `log_admin`
--
ALTER TABLE `log_admin`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexen voor tabel `log_bans`
--
ALTER TABLE `log_bans`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexen voor tabel `log_cheat`
--
ALTER TABLE `log_cheat`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexen voor tabel `log_command`
--
ALTER TABLE `log_command`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexen voor tabel `log_contracts`
--
ALTER TABLE `log_contracts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexen voor tabel `log_cp`
--
ALTER TABLE `log_cp`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexen voor tabel `log_dicebet`
--
ALTER TABLE `log_dicebet`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexen voor tabel `log_faction`
--
ALTER TABLE `log_faction`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexen voor tabel `log_gang`
--
ALTER TABLE `log_gang`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexen voor tabel `log_give`
--
ALTER TABLE `log_give`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexen voor tabel `log_givecookie`
--
ALTER TABLE `log_givecookie`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexen voor tabel `log_givegun`
--
ALTER TABLE `log_givegun`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexen voor tabel `log_givemoney`
--
ALTER TABLE `log_givemoney`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexen voor tabel `log_makeadmin`
--
ALTER TABLE `log_makeadmin`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexen voor tabel `log_makehelper`
--
ALTER TABLE `log_makehelper`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexen voor tabel `log_namechanges`
--
ALTER TABLE `log_namechanges`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexen voor tabel `log_namehistory`
--
ALTER TABLE `log_namehistory`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexen voor tabel `log_property`
--
ALTER TABLE `log_property`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexen voor tabel `log_punishments`
--
ALTER TABLE `log_punishments`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexen voor tabel `log_referrals`
--
ALTER TABLE `log_referrals`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexen voor tabel `log_setstat`
--
ALTER TABLE `log_setstat`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexen voor tabel `log_vip`
--
ALTER TABLE `log_vip`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexen voor tabel `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `phonebook`
--
ALTER TABLE `phonebook`
  ADD UNIQUE KEY `number` (`number`) USING BTREE;

--
-- Indexen voor tabel `playerbackpack`
--
ALTER TABLE `playerbackpack`
  ADD PRIMARY KEY (`ID`);

--
-- Indexen voor tabel `points`
--
ALTER TABLE `points`
  ADD UNIQUE KEY `id` (`id`) USING BTREE;

--
-- Indexen voor tabel `radiostations`
--
ALTER TABLE `radiostations`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `rp_atms`
--
ALTER TABLE `rp_atms`
  ADD PRIMARY KEY (`atmID`);

--
-- Indexen voor tabel `rp_contacts`
--
ALTER TABLE `rp_contacts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexen voor tabel `rp_dealercars`
--
ALTER TABLE `rp_dealercars`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Company` (`Company`);

--
-- Indexen voor tabel `rp_furniture`
--
ALTER TABLE `rp_furniture`
  ADD PRIMARY KEY (`fID`),
  ADD KEY `fHouseID` (`fHouseID`);

--
-- Indexen voor tabel `rp_gundamages`
--
ALTER TABLE `rp_gundamages`
  ADD UNIQUE KEY `Weapon` (`Weapon`);

--
-- Indexen voor tabel `rp_payphones`
--
ALTER TABLE `rp_payphones`
  ADD PRIMARY KEY (`phID`);

--
-- Indexen voor tabel `shots`
--
ALTER TABLE `shots`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexen voor tabel `speedcameras`
--
ALTER TABLE `speedcameras`
  ADD PRIMARY KEY (`speedID`);

--
-- Indexen voor tabel `texts`
--
ALTER TABLE `texts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexen voor tabel `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ID`);

--
-- Indexen voor tabel `turfs`
--
ALTER TABLE `turfs`
  ADD UNIQUE KEY `id` (`id`) USING BTREE;

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`) USING BTREE;

--
-- Indexen voor tabel `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexen voor tabel `weapons`
--
ALTER TABLE `weapons`
  ADD UNIQUE KEY `uid` (`uid`,`slot`) USING BTREE;

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `arrestpoints`
--
ALTER TABLE `arrestpoints`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `bans`
--
ALTER TABLE `bans`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `businesses`
--
ALTER TABLE `businesses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `charges`
--
ALTER TABLE `charges`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `clothing`
--
ALTER TABLE `clothing`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `entrances`
--
ALTER TABLE `entrances`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `factionlockers`
--
ALTER TABLE `factionlockers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `flags`
--
ALTER TABLE `flags`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `furniture`
--
ALTER TABLE `furniture`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `garages`
--
ALTER TABLE `garages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `graffiti`
--
ALTER TABLE `graffiti`
  MODIFY `graffitiID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `gunracks`
--
ALTER TABLE `gunracks`
  MODIFY `rackID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `houses`
--
ALTER TABLE `houses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `impoundlots`
--
ALTER TABLE `impoundlots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `kills`
--
ALTER TABLE `kills`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `landobjects`
--
ALTER TABLE `landobjects`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `lands`
--
ALTER TABLE `lands`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `log_admin`
--
ALTER TABLE `log_admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `log_bans`
--
ALTER TABLE `log_bans`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `log_cheat`
--
ALTER TABLE `log_cheat`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `log_command`
--
ALTER TABLE `log_command`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT voor een tabel `log_contracts`
--
ALTER TABLE `log_contracts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `log_cp`
--
ALTER TABLE `log_cp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `log_dicebet`
--
ALTER TABLE `log_dicebet`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `log_faction`
--
ALTER TABLE `log_faction`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `log_gang`
--
ALTER TABLE `log_gang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `log_give`
--
ALTER TABLE `log_give`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `log_givecookie`
--
ALTER TABLE `log_givecookie`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `log_givegun`
--
ALTER TABLE `log_givegun`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT voor een tabel `log_givemoney`
--
ALTER TABLE `log_givemoney`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `log_makeadmin`
--
ALTER TABLE `log_makeadmin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `log_makehelper`
--
ALTER TABLE `log_makehelper`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `log_namechanges`
--
ALTER TABLE `log_namechanges`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `log_namehistory`
--
ALTER TABLE `log_namehistory`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `log_property`
--
ALTER TABLE `log_property`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `log_punishments`
--
ALTER TABLE `log_punishments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `log_referrals`
--
ALTER TABLE `log_referrals`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `log_setstat`
--
ALTER TABLE `log_setstat`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `log_vip`
--
ALTER TABLE `log_vip`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `playerbackpack`
--
ALTER TABLE `playerbackpack`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `radiostations`
--
ALTER TABLE `radiostations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `rp_atms`
--
ALTER TABLE `rp_atms`
  MODIFY `atmID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `rp_contacts`
--
ALTER TABLE `rp_contacts`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `rp_dealercars`
--
ALTER TABLE `rp_dealercars`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `rp_furniture`
--
ALTER TABLE `rp_furniture`
  MODIFY `fID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `rp_payphones`
--
ALTER TABLE `rp_payphones`
  MODIFY `phID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `shots`
--
ALTER TABLE `shots`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `speedcameras`
--
ALTER TABLE `speedcameras`
  MODIFY `speedID` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `texts`
--
ALTER TABLE `texts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
