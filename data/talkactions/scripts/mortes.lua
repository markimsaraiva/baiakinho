--- Script by Ciroc~---
--- Notice System 0.1 Beta ---
function onSay(cid, words, param)
	if getPlayerStorageValue(cid,22867) >= 1 then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Voc� matou "..getPlayerStorageValue(cid, 34765).." jogadores level 400+.")
	else
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Voc� n�o possui uma task de morte ativa.")
	end
end