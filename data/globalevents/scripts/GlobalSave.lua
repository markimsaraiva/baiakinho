function prepareShutdown(minutes)
        if(minutes <= 0) then
                doSetGameState(GAMESTATE_SHUTDOWN)
                return false
        end

        if(minutes == 1) then
                doBroadcastMessage("Server is going down in " .. minutes .. " minute for global save, please log out now!")
		db.executeQuery("INSERT `global_storage` SET `key` = 100006, `world_id` = 0, `value` = '"..getGlobalStorageValue(100006).."';")
		db.executeQuery("INSERT `global_storage` SET `key` = 822081, `world_id` = 0, `value` = '"..getGlobalStorageValue(822081).."';")
		db.executeQuery("INSERT `global_storage` SET `key` = 822082, `world_id` = 0, `value` = '"..getGlobalStorageValue(822082).."';")
		db.executeQuery("INSERT `global_storage` SET `key` = 822083, `world_id` = 0, `value` = '"..getGlobalStorageValue(822083).."';")
		db.executeQuery("INSERT `global_storage` SET `key` = 822084, `world_id` = 0, `value` = '"..getGlobalStorageValue(822084).."';")
		db.executeQuery("INSERT `global_storage` SET `key` = 822085, `world_id` = 0, `value` = '"..getGlobalStorageValue(822085).."';")
		db.executeQuery("INSERT `global_storage` SET `key` = 822086, `world_id` = 0, `value` = '"..getGlobalStorageValue(822086).."';")
		db.executeQuery("INSERT `global_storage` SET `key` = 822087, `world_id` = 0, `value` = '"..getGlobalStorageValue(822087).."';")
		db.executeQuery("INSERT `global_storage` SET `key` = 822088, `world_id` = 0, `value` = '"..getGlobalStorageValue(822088).."';")
		db.executeQuery("INSERT `global_storage` SET `key` = 822089, `world_id` = 0, `value` = '"..getGlobalStorageValue(822089).."';")
		db.executeQuery("INSERT `global_storage` SET `key` = 822090, `world_id` = 0, `value` = '"..getGlobalStorageValue(822090).."';")
		db.executeQuery("INSERT `global_storage` SET `key` = 822091, `world_id` = 0, `value` = '"..getGlobalStorageValue(822091).."';")
		db.executeQuery("INSERT `global_storage` SET `key` = 822092, `world_id` = 0, `value` = '"..getGlobalStorageValue(822092).."';")
		db.executeQuery("INSERT `global_storage` SET `key` = 822093, `world_id` = 0, `value` = '"..getGlobalStorageValue(822093).."';")
		db.executeQuery("INSERT `global_storage` SET `key` = 822094, `world_id` = 0, `value` = '"..getGlobalStorageValue(822094).."';")
		db.executeQuery("INSERT `global_storage` SET `key` = 822095, `world_id` = 0, `value` = '"..getGlobalStorageValue(822095).."';")
		db.executeQuery("INSERT `global_storage` SET `key` = 822096, `world_id` = 0, `value` = '"..getGlobalStorageValue(822096).."';")
		db.executeQuery("INSERT `global_storage` SET `key` = 822097, `world_id` = 0, `value` = '"..getGlobalStorageValue(822097).."';")
		db.executeQuery("INSERT `global_storage` SET `key` = 822098, `world_id` = 0, `value` = '"..getGlobalStorageValue(822098).."';")
        elseif(minutes <= 3) then
                doBroadcastMessage("Server is going down in " .. minutes .. " minutes for global save, please log out.")
        else
                doBroadcastMessage("Server is going down in " .. minutes .. " minutes for global save.")
        end

        shutdownEvent = addEvent(prepareShutdown, 60000, minutes - 1)
        return true
end

function onTime()
	db.query("DELETE FROM `global_storage` WHERE `key` != '100006';")
	db.query("DELETE FROM `global_storage` WHERE `key` != '822081';")
	db.query("DELETE FROM `global_storage` WHERE `key` != '822082';")
	db.query("DELETE FROM `global_storage` WHERE `key` != '822083';")
	db.query("DELETE FROM `global_storage` WHERE `key` != '822084';")
	db.query("DELETE FROM `global_storage` WHERE `key` != '822085';")
	db.query("DELETE FROM `global_storage` WHERE `key` != '822086';")
	db.query("DELETE FROM `global_storage` WHERE `key` != '822087';")
	db.query("DELETE FROM `global_storage` WHERE `key` != '822088';")
	db.query("DELETE FROM `global_storage` WHERE `key` != '822089';")
	db.query("DELETE FROM `global_storage` WHERE `key` != '822090';")
	db.query("DELETE FROM `global_storage` WHERE `key` != '822091';")
	db.query("DELETE FROM `global_storage` WHERE `key` != '822092';")
	db.query("DELETE FROM `global_storage` WHERE `key` != '822093';")
	db.query("DELETE FROM `global_storage` WHERE `key` != '822094';")
	db.query("DELETE FROM `global_storage` WHERE `key` != '822095';")
	db.query("DELETE FROM `global_storage` WHERE `key` != '822096';")
	db.query("DELETE FROM `global_storage` WHERE `key` != '822097';")
	db.query("DELETE FROM `global_storage` WHERE `key` != '822098';")
    	return prepareShutdown(5)
end