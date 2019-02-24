function onThink(interval, lastExecution) 
local _Lib_Battle_Days = {
        ["Monday"] = {
	["12:00"] = {players = 10},
	["14:00"] = {players = 14},
	["16:00"] = {players = 18},
	["23:00"] = {players = 26},
        },
        ["Tuesday"] = {
       	["12:00"] = {players = 10},
	["14:00"] = {players = 14},
	["16:00"] = {players = 18},
	["23:00"] = {players = 26},
        },
        ["Thursday"] = {
        ["12:00"] = {players = 10},
	["14:00"] = {players = 14},
	["16:00"] = {players = 18},
	["23:00"] = {players = 26}, 
        },        
        ["Friday"] = {

        ["12:00"] = {players = 10},
	["14:00"] = {players = 14},
	["16:00"] = {players = 18},
	["23:00"] = {players = 26},
        },  
		["Saturday"] = {
        ["12:00"] = {players = 10},
	["14:00"] = {players = 14},
	["16:00"] = {players = 18},
	["23:00"] = {players = 26},
        },  
		["Wednesday"] = {
	["12:00"] = {players = 10},
	["14:00"] = {players = 14},
	["16:00"] = {players = 18},
	["23:00"] = {players = 26},        
	},  
		["Sunday"] = {
    	["12:00"] = {players = 10},
	["14:00"] = {players = 14},
	["16:00"] = {players = 18},
	["23:00"] = {players = 26},
        }
}
if _Lib_Battle_Days[os.date("%A")] then
local hours = tostring(os.date("%X")):sub(1, 5)       
local tb = _Lib_Battle_Days[os.date("%A")][hours] 
if tb and (tb.players % 2 == 0) then 
local tp = doCreateItem(1387, 1, _Lib_Battle_Info.tpPos)
doItemSetAttribute(tp, "aid", 45000)
CheckEvent(_Lib_Battle_Info.limit_Time)
doBroadcastMessage("[BattleField Event] was opened and We are waiting "..tb.players.." Players! Team divided into "..((tb.players)/2).." VS "..((tb.players)/2), MESSAGE_EVENT_ADVANCE)
setGlobalStorageValue(_Lib_Battle_Info.storage_count, tb.players)
return true
end
end
return true
end