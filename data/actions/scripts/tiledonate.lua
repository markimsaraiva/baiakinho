function onUse(cid, item, frompos, item2, topos) 

local tileConfig = {
	kickPos = {x = 153, y = 53, z = 7}, kickEffect = CONST_ME_POFF,
	DonatePos = {x = 156, y = 44, z = 7},
	kickMsg = "Voc� n�o e um player donate para virar acesse: baiakinho.ddns.net",
	enterMsg = "Bem Vindo a area donate, agradecemos a sua doa��o!",
	enterEffect = CONST_ME_MAGIC_RED,
}

if isPlayer(cid) == true then
if vip.hasVip(cid) == FALSE then
		doTeleportThing(cid, tileConfig.kickPos)
		doSendMagicEffect(tileConfig.kickPos, tileConfig.kickEffect)
		doPlayerSendCancel(cid, tileConfig.kickMsg)
		return
	end
		doTeleportThing(cid, tileConfig.DonatePos)
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, tileConfig.enterMsg)
		return true
end
end