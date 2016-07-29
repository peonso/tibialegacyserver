function onThink(interval, lastExecution, thinkInterval)
	if tonumber(os.date("%d")) ~= getEternalStorageValue(STORAGE_POWERGAMERS) then
		setEternalStorageValue(STORAGE_POWERGAMERS, (tonumber(os.date("%d"))))
		db.executeQuery("UPDATE `znote_players` SET `onlinetime7`=`onlinetime6`, `onlinetime6`=`onlinetime5`, `onlinetime5`=`onlinetime4`, `onlinetime4`=`onlinetime3`, `onlinetime3`=`onlinetime2`, `onlinetime2`=`onlinetime1`, `onlinetime1`=`onlinetimetoday`, `onlinetimetoday`=0;")
		db.executeQuery("UPDATE `znote_players` `z` INNER JOIN `players` `p` ON `p`.`id`=`z`.`player_id` SET `z`.`exphist7`=`z`.`exphist6`,  `z`.`exphist6`=`z`.`exphist5`, `z`.`exphist5`=`z`.`exphist4`, `z`.`exphist4`=`z`.`exphist3`, `z`.`exphist3`=`z`.`exphist2`, `z`.`exphist2`=`z`.`exphist1`, `z`.`exphist1`=`p`.`experience`-`z`.`exphist_lastexp`, `z`.`exphist_lastexp`=`p`.`experience`;")
	end
	db.executeQuery("UPDATE `znote_players` SET `onlinetimetoday` = `onlinetimetoday` + 60, `onlinetimeall` = `onlinetimeall` + 60 WHERE `player_id` IN (SELECT `id` FROM `players` WHERE `online` = 1)")
	return true
end