--[[
    Gems System By Maxwell Denisson(MaXwEllDeN)
    V 1.0
    --]]
    
function onThink(cid)         
      local gemid = getPlayerStorageValue(cid, 71473)
      
      if (getPlayerStorageValue(cid, 45783) > 0) and (checkGemTimeFinish(cid, gemid)) then
         deAtiveGem(cid, gemid)
         doRemoveCondition(cid, CONDITION_ATTRIBUTES)         
      end      
      return true
end

function onLogin(cid)
   local gemid = getPlayerStorageValue(cid, 71473)
   
   if (getPlayerStorageValue(cid, 45783) > 0) and (checkGemTimeFinish(cid, gemid)) then
      deAtiveGem(cid, gemid)
   end
   
   if (gemid > 0) and (not checkGemTimeFinish(cid, gemid)) then
      local pedra = pedras_add[gemid]

      if not (pedra) then
         return true  
      end
  
      local skills = pedra.skills
      doAddCondition(cid, pedras_add_c[gemid])      
      doPlayerSendTextMessage(cid, 27, "O efeito da gema mágica foi retomado.")
 
      doPlayerSetExperienceRate(cid, pedra.xp)
      
      registerCreatureEvent(cid, "EffectCheck")      
      sendGemEffect(cid, gemid)
   end   
   
   registerCreatureEvent(cid, "EffectDeath")
   return true
end