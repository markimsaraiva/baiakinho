local config = {
positions = {
["Axe"] = { x = 144, y = 50, z = 8 },
["Sword"] = { x = 146, y = 50, z = 8 },
["Club"] = { x = 148, y = 50, z = 8 },
["Distance"] = { x = 150, y = 50, z = 8 },
["Magic"] = { x = 152, y = 50, z = 8 },

}
}

function onThink(cid, interval, lastExecution)
for text, pos in pairs(config.positions) do
doSendAnimatedText(pos, text, 192)
doSendMagicEffect(pos, 6)
end

return TRUE
end 