CREATE TABLE `ck_announcements` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `server` varchar(256) NOT NULL DEFAULT 'Beginner',
 `name` varchar(32) NOT NULL,
 `mapname` varchar(128) NOT NULL,
 `time` varchar(32) NOT NULL,
 PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1446 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `ck_bonus` (
  `steamid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) DEFAULT NULL,
  `mapname` varchar(32) NOT NULL DEFAULT '',
  `runtime` float NOT NULL DEFAULT '-1',
  `zonegroup` int(12) NOT NULL DEFAULT '1',
  `style` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`steamid`,`mapname`,`zonegroup`,`style`) USING BTREE,
  KEY `bonusrank` (`mapname`,`runtime`,`zonegroup`,`style`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `ck_checkpoints` (
  `steamid` varchar(32) NOT NULL DEFAULT '',
  `mapname` varchar(32) NOT NULL DEFAULT '',
  `cp1` float DEFAULT '0',
  `cp2` float DEFAULT '0',
  `cp3` float DEFAULT '0',
  `cp4` float DEFAULT '0',
  `cp5` float DEFAULT '0',
  `cp6` float DEFAULT '0',
  `cp7` float DEFAULT '0',
  `cp8` float DEFAULT '0',
  `cp9` float DEFAULT '0',
  `cp10` float DEFAULT '0',
  `cp11` float DEFAULT '0',
  `cp12` float DEFAULT '0',
  `cp13` float DEFAULT '0',
  `cp14` float DEFAULT '0',
  `cp15` float DEFAULT '0',
  `cp16` float DEFAULT '0',
  `cp17` float DEFAULT '0',
  `cp18` float DEFAULT '0',
  `cp19` float DEFAULT '0',
  `cp20` float DEFAULT '0',
  `cp21` float DEFAULT '0',
  `cp22` float DEFAULT '0',
  `cp23` float DEFAULT '0',
  `cp24` float DEFAULT '0',
  `cp25` float DEFAULT '0',
  `cp26` float DEFAULT '0',
  `cp27` float DEFAULT '0',
  `cp28` float DEFAULT '0',
  `cp29` float DEFAULT '0',
  `cp30` float DEFAULT '0',
  `cp31` float DEFAULT '0',
  `cp32` float DEFAULT '0',
  `cp33` float DEFAULT '0',
  `cp34` float DEFAULT '0',
  `cp35` float DEFAULT '0',
  `zonegroup` int(12) NOT NULL DEFAULT '0',
  PRIMARY KEY (`steamid`,`mapname`,`zonegroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `ck_latestrecords` (
  `steamid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) DEFAULT NULL,
  `runtime` float NOT NULL DEFAULT '-1',
  `map` varchar(32) NOT NULL DEFAULT '',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`steamid`,`map`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ck_mapsettings` (
 `mapname` varchar(128) NOT NULL,
 `startprespeed` float NOT NULL DEFAULT '350',
 `bonusprespeed` float NOT NULL DEFAULT '350',
 `stageprespeed2` float NOT NULL DEFAULT '350',
 `stageprespeed3` float NOT NULL DEFAULT '350',
 `stageprespeed4` float NOT NULL DEFAULT '350',
 `stageprespeed5` float NOT NULL DEFAULT '350',
 `stageprespeed6` float NOT NULL DEFAULT '350',
 `stageprespeed7` float NOT NULL DEFAULT '350',
 `stageprespeed8` float NOT NULL DEFAULT '350',
 `stageprespeed9` float NOT NULL DEFAULT '350',
 `stageprespeed10` float NOT NULL DEFAULT '350',
 `stageprespeed11` float NOT NULL DEFAULT '350',
 `stageprespeed12` float NOT NULL DEFAULT '350',
 `stageprespeed13` float NOT NULL DEFAULT '350',
 `stageprespeed14` float NOT NULL DEFAULT '350',
 `stageprespeed15` float NOT NULL DEFAULT '320',
 `stageprespeed16` float NOT NULL DEFAULT '350',
 `stageprespeed17` float NOT NULL DEFAULT '350',
 `stageprespeed18` float NOT NULL DEFAULT '350',
 `stageprespeed19` float NOT NULL DEFAULT '350',
 `stageprespeed20` float NOT NULL DEFAULT '350',
 `stageprespeed21` float NOT NULL DEFAULT '350',
 `stageprespeed22` float NOT NULL DEFAULT '350',
 `stageprespeed23` float NOT NULL DEFAULT '350',
 `stageprespeed24` float NOT NULL DEFAULT '350',
 `stageprespeed25` float NOT NULL DEFAULT '350',
 `stageprespeed26` float NOT NULL DEFAULT '350',
 `stageprespeed27` float NOT NULL DEFAULT '350',
 `stageprespeed28` float NOT NULL DEFAULT '350',
 `stageprespeed29` float NOT NULL DEFAULT '350',
 `stageprespeed30` float NOT NULL DEFAULT '350',
 `stageprespeed31` float NOT NULL DEFAULT '320',
 `stageprespeed32` float NOT NULL DEFAULT '350',
 `stageprespeed33` float NOT NULL DEFAULT '350',
 `stageprespeed34` float NOT NULL DEFAULT '350',
 `stageprespeed35` float NOT NULL DEFAULT '350',
 `maxvelocity` float NOT NULL DEFAULT '3500',
 `announcerecord` float NOT NULL DEFAULT '0',
 `gravityfix` int(11) NOT NULL DEFAULT '1'
 PRIMARY KEY (`mapname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `ck_maptier` (
  `mapname` varchar(54) NOT NULL,
  `tier` int(12) NOT NULL,
  `btier1` int(11) DEFAULT NULL,
  `btier2` int(11) DEFAULT NULL,
  `btier3` int(11) DEFAULT NULL,
  `btier4` int(11) DEFAULT NULL,
  `btier5` int(11) DEFAULT NULL,
  `btier6` int(11) DEFAULT NULL,
  `btier7` int(11) DEFAULT NULL,
  `btier8` int(11) DEFAULT NULL,
  `btier9` int(11) DEFAULT NULL,
  `btier10` int(11) DEFAULT NULL,
  PRIMARY KEY (`mapname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ck_playeroptions2` (
 `steamid` varchar(32) NOT NULL DEFAULT '',
 `timer` int(11) NOT NULL DEFAULT '1',
 `hide` int(11) NOT NULL DEFAULT '0',
 `sounds` int(11) NOT NULL DEFAULT '1',
 `chat` int(11) NOT NULL DEFAULT '0',
 `viewmodel` int(11) NOT NULL DEFAULT '1',
 `autobhop` int(11) NOT NULL DEFAULT '1',
 `checkpoints` int(11) NOT NULL DEFAULT '1',
 `gradient` int(11) NOT NULL DEFAULT '3',
 `speedmode` int(11) NOT NULL DEFAULT '0',
 `centrespeed` int(11) NOT NULL DEFAULT '0',
 `centrehud` int(11) NOT NULL DEFAULT '1',
 `module1c` int(11) NOT NULL DEFAULT '1',
 `module2c` int(11) NOT NULL DEFAULT '2',
 `module3c` int(11) NOT NULL DEFAULT '3',
 `module4c` int(11) NOT NULL DEFAULT '4',
 `module5c` int(11) NOT NULL DEFAULT '5',
 `module6c` int(11) NOT NULL DEFAULT '6',
 `sidehud` int(11) NOT NULL DEFAULT '1',
 `module1s` int(11) NOT NULL DEFAULT '5',
 `module2s` int(11) NOT NULL DEFAULT '0',
 `module3s` int(11) NOT NULL DEFAULT '0',
 `module4s` int(11) NOT NULL DEFAULT '0',
 `module5s` int(11) NOT NULL DEFAULT '0',
 PRIMARY KEY (`steamid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ck_playerrank` (
 `steamid` varchar(32) NOT NULL DEFAULT '',
 `steamid64` varchar(64) DEFAULT NULL,
 `name` varchar(32) DEFAULT NULL,
 `country` varchar(32) DEFAULT NULL,
 `points` int(12) DEFAULT '0',
 `wrpoints` int(12) NOT NULL DEFAULT '0',
 `wrbpoints` int(12) NOT NULL DEFAULT '0',
 `top10points` int(12) NOT NULL DEFAULT '0',
 `groupspoints` int(12) NOT NULL DEFAULT '0',
 `mappoints` int(11) NOT NULL DEFAULT '0',
 `bonuspoints` int(12) NOT NULL DEFAULT '0',
 `finishedmaps` int(12) DEFAULT '0',
 `finishedmapspro` int(12) DEFAULT '0',
 `finishedbonuses` int(12) NOT NULL DEFAULT '0',
 `finishedstages` int(12) NOT NULL DEFAULT '0',
 `wrs` int(12) NOT NULL DEFAULT '0',
 `wrbs` int(12) NOT NULL DEFAULT '0',
 `wrcps` int(12) NOT NULL DEFAULT '0',
 `top10s` int(12) NOT NULL DEFAULT '0',
 `groups` int(12) NOT NULL DEFAULT '0',
 `lastseen` int(64) DEFAULT NULL,
 `joined` int(64) NOT NULL,
 `timealive` int(64) NOT NULL DEFAULT '0',
 `timespec` int(64) NOT NULL DEFAULT '0',
 `connections` int(64) NOT NULL DEFAULT '1',
 `readchangelog` int(11) NOT NULL DEFAULT '0',
 PRIMARY KEY (`steamid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `ck_playertemp` (
  `steamid` varchar(32) NOT NULL DEFAULT '',
  `mapname` varchar(32) NOT NULL DEFAULT '',
  `cords1` float NOT NULL DEFAULT '-1',
  `cords2` float NOT NULL DEFAULT '-1',
  `cords3` float NOT NULL DEFAULT '-1',
  `angle1` float NOT NULL DEFAULT '-1',
  `angle2` float NOT NULL DEFAULT '-1',
  `angle3` float NOT NULL DEFAULT '-1',
  `EncTickrate` int(12) DEFAULT '-1',
  `runtimeTmp` float NOT NULL DEFAULT '-1',
  `Stage` int(11) DEFAULT NULL,
  `zonegroup` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`steamid`,`mapname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `ck_playertimes` (
  `steamid` varchar(32) NOT NULL DEFAULT '',
  `mapname` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) DEFAULT NULL,
  `runtimepro` float NOT NULL DEFAULT '-1',
  `style` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`steamid`,`mapname`,`style`) USING BTREE,
  KEY `maprank` (`mapname`,`runtimepro`,`style`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `ck_spawnlocations` (
  `mapname` varchar(54) NOT NULL,
  `pos_x` float NOT NULL,
  `pos_y` float NOT NULL,
  `pos_z` float NOT NULL,
  `ang_x` float NOT NULL,
  `ang_y` float NOT NULL,
  `ang_z` float NOT NULL,
  `vel_x` float NOT NULL DEFAULT '0',
  `vel_y` float NOT NULL DEFAULT '0',
  `vel_z` float NOT NULL DEFAULT '0',
  `zonegroup` int(12) NOT NULL DEFAULT '0',
  `stage` int(12) DEFAULT '0',
  PRIMARY KEY (`mapname`,`zonegroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ck_vipadmins` (
 `steamid` varchar(32) NOT NULL DEFAULT '',
 `title` varchar(128) DEFAULT '0',
 `namecolour` int(11) DEFAULT '0',
 `textcolour` int(11) NOT NULL DEFAULT '0',
 `joinmsg` varchar(255) DEFAULT 'none',
 `pbsound` varchar(256) NOT NULL DEFAULT 'none',
 `topsound` varchar(256) NOT NULL DEFAULT 'none',
 `wrsound` varchar(256) NOT NULL DEFAULT 'none',
 `inuse` int(11) DEFAULT '0',
 `vip` int(11) DEFAULT '0',
 `admin` int(11) NOT NULL DEFAULT '0',
 `zoner` int(11) NOT NULL DEFAULT '0',
 `active` int(11) NOT NULL DEFAULT '1',
 PRIMARY KEY (`steamid`),
 KEY `vip` (`steamid`,`vip`,`admin`,`zoner`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `ck_wrcps` (
  `steamid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(32) DEFAULT NULL,
  `mapname` varchar(32) NOT NULL DEFAULT '',
  `runtimepro` float NOT NULL DEFAULT '-1',
  `stage` int(11) NOT NULL,
  `style` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`steamid`,`mapname`,`stage`,`style`),
  KEY `stagerank` (`mapname`,`runtimepro`,`stage`,`style`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ck_zones` (
 `mapname` varchar(54) NOT NULL,
 `zoneid` int(12) NOT NULL DEFAULT '-1',
 `zonetype` int(12) DEFAULT '-1',
 `zonetypeid` int(12) DEFAULT '-1',
 `pointa_x` float DEFAULT '-1',
 `pointa_y` float DEFAULT '-1',
 `pointa_z` float DEFAULT '-1',
 `pointb_x` float DEFAULT '-1',
 `pointb_y` float DEFAULT '-1',
 `pointb_z` float DEFAULT '-1',
 `vis` int(12) DEFAULT '0',
 `team` int(12) DEFAULT '0',
 `zonegroup` int(11) NOT NULL DEFAULT '0',
 `zonename` varchar(128) DEFAULT NULL,
 `hookname` varchar(128) DEFAULT 'None',
 `targetname` varchar(128) DEFAULT 'player',
 `onejumplimit` int(12) NOT NULL DEFAULT '1',
 PRIMARY KEY (`mapname`,`zoneid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
