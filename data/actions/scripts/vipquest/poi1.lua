---VocDoor-by Sky Hunter---
function onUse(cid, item, frompos, item2, topos)
PlayerVoc = getPlayerVocation(cid)
if PlayerVoc == 5 then
doTeleportThing(cid,{x=51, y=28, z=8})
   else
doPlayerSendCancel(cid,"Only Master Sorcerers may open this door.")
       return 1
   end
end