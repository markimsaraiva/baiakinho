local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)	npcHandler:onCreatureSay(cid, type, msg)	end
function onThink()						npcHandler:onThink()						end

local travelNode = keywordHandler:addKeyword({"folda"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Do you seek a passage to Folda Island for " .. (getConfigInfo("freeTravel") and "free?" or "30 gold?")})
	travelNode:addChildKeyword({"yes"}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x=4548, y=1290, z=5} })
	travelNode:addChildKeyword({"no"}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = "We would like to serve you some time."})

npcHandler:addModule(FocusModule:new())