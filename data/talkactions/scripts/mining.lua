--- Script by Ciroc~---
--- Notice System 0.1 Beta ---
function onSay(cid, words, param)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Seu level atual de minera��o �: "..getPlayerStorageValue(cid, 19333).." ")
end