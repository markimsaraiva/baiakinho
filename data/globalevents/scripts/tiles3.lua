local config = {
positions = {
["Deus…Fiel"] = { x = 153, y = 52, z = 7 },
}
}

function onThink(cid, interval, lastExecution)
for text, pos in pairs(config.positions) do
doSendAnimatedText(pos, text, 100)
end

return TRUE
end 

