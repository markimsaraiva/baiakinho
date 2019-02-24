local level = 400
function onKill(cid, target, lastHit)
    if (isPlayer(cid) and isPlayer(target)) then
        if getPlayerLevel(target) >= 400 then
            if getPlayerIp(cid) ~= getPlayerIp(target) then
				if getPlayerStorageValue(cid,22867) >= 1 and getPlayerStorageValue(cid,34765) <= 30 then
					setPlayerStorageValue(cid, 34765, getPlayerStorageValue(cid, 34765) + 1)
				end
            end
        end
    end
    return true
end