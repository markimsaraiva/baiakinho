function onLogin(cid)
	local temple = { x =155, y = 54, z = 7}
	if not isPlayer(cid) then return true end
	if vip.hasVip(cid) == true then
		if getPlayerStorageValue(cid,55555) ~= 1 then
			setPlayerStorageValue(cid,55555,1)
		end
	else
		if getPlayerStorageValue(cid,55555) == 1 then
			doTeleportThing(cid, temple)
			doPlayerSendTextMessage(cid, 22, "Your VIP Time over!")
			db.executeQuery("UPDATE `accounts` SET `vip_time` = 0 WHERE `id` = ".. getAccountIdByName(getPlayerName(cid)) ..";")
			setPlayerPromotionLevel(cid, 1)
			setPlayerStorageValue(cid, 55555, 0)
		end
	end
	return true
end