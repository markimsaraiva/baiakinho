function onLogin(cid)
	local muteStorage = 16246
        local muteStorageValue = getPlayerStorageValue(cid, muteStorage)
	local muteTime = 5000
	if(muteStorageValue > os.time()) then
		doMutePlayer(cid, muteTime)
	end
   return TRUE
end