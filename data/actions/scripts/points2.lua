local cfg = {
amount = 50
}

function onUse(cid, item, fromPosition, itemEx, toPosition)

if getPlayerLevel(cid) > 400 then
doAccountAddPoints(cid, cfg.amount)
doCreatureSay(cid, "Parab�ns! Voc� recebeu 50 Premium Points! ", TALKTYPE_ORANGE_1)
doSendMagicEffect(getCreaturePosition(cid), 28)
doRemoveItem(item.uid,1)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Voc� vai ser kikado em 4 segundos para salvar.")
else
doPlayerSendCancel(cid,"Voc� precisa de level 400 para usar este item.")
end
return TRUE
end