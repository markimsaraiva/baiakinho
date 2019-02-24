local config = {
positions = {
["Grim Reaper"] = { x = 317, y = 285, z = 14 },
["Grim Reaper "] = { x = 318, y = 285, z = 14 },
["Demon"] = { x = 339, y = 306, z = 14 },
["Demon "] = { x = 340, y = 306, z = 14 },
["Demons"] = { x = 334, y = 307, z = 14 },
["Templo"] = { x = 327, y = 278, z = 14 },
["Vips"] = { x = 337, y = 328, z = 14 },
["Vip I"] = { x = 344, y = 335, z = 14 },
["Vip II"] = { x = 339, y = 342, z = 14 },
["Vip III"] = { x = 343, y = 330, z = 14 },
["Warlocks"] = { x = 331, y = 302, z = 14 },
["Dl 1"] = { x = 323, y = 288, z = 14 },
["Dl 2"] = { x = 324, y = 290, z = 14 },
["Dl 3"] = { x = 326, y = 292, z = 14 },
["Dl 4"] = { x = 326, y = 294, z = 14 },
["Dl 5"] = { x = 327, y = 296, z = 14 },
["Dl 6"] = { x = 330, y = 298, z = 14 },
["Dl 7"] = { x = 330, y = 300, z = 14 },
["Dragon 1"] = { x = 321, y = 274, z = 14 },
["Dragon 2"] = { x = 319, y = 274, z = 14 },
["Grim 1"] = { x = 312, y = 290, z = 15 },
["Grim 2"] = { x = 310, y = 290, z = 15 },
["Grim 3"] = { x = 312, y = 302, z = 15 },
["Grim 4"] = { x = 314, y = 302, z = 15 },
["Grim 5"] = { x = 316, y = 302, z = 15 },
["Grim 6"] = { x = 330, y = 297, z = 15 },
["Grim 7"] = { x = 332, y = 295, z = 15 },
["Grim 8"] = { x = 333, y = 293, z = 15 },
["Grim 9"] = { x = 333, y = 291, z = 15 },
["Grim 10"] = { x = 331, y = 290, z = 15 },
["Grim 11"] = { x = 329, y = 290, z = 15 },
["Warlock 1"] = { x = 327, y = 314, z = 14 },
["Warlock 2"] = { x = 328, y = 316, z = 14 },
["Warlock 3"] = { x = 332, y = 314, z = 14 },
["Warlock 4"] = { x = 334, y = 316, z = 14 },
["Warlock 5"] = { x = 336, y = 318, z = 14 },
["Warlock 6"] = { x = 336, y = 320, z = 14 },
["Warlock 7"] = { x = 336, y = 322, z = 14 },
["Warlock 8"] = { x = 337, y = 324, z = 14 },
["Warlock 9"] = { x = 337, y = 326, z = 14 },
["Warlock 10 "] = { x = 333, y = 324, z = 14 },
["Warlock 11 "] = { x = 333, y = 326, z = 14 },
["Hydra 1"] = { x = 322, y = 284, z = 14 },
["Hydra 2"] = { x = 322, y = 286, z = 14 },
["Behe 1"] = { x = 319, y = 291, z = 14 },
["Behe 2"] = { x = 320, y = 293, z = 14 },
["Medusa 1"] = { x = 315, y = 289, z = 14 },
["Medusa 2"] = { x = 317, y = 289, z = 14 },
["Frost 1"] = { x = 311, y = 282, z = 14 },
["Frost 2"] = { x = 311, y = 284, z = 14 },
["Frost 3"] = { x = 311, y = 286, z = 14 },
["Demon 0"] = { x = 324, y = 300, z = 14 },
["Demon 1"] = { x = 334, y = 304, z = 15 },
["Demon 2"] = { x = 334, y = 306, z = 15 },
["Demon 3"] = { x = 334, y = 308, z = 15 },
["Demon 4"] = { x = 334, y = 310, z = 15 },
["Demon 5"] = { x = 334, y = 312, z = 15 },
["Demon 6"] = { x = 334, y = 314, z = 15 },
["Demon 7"] = { x = 334, y = 316, z = 15 },
["Demon 8"] = { x = 338, y = 316, z = 15 },
["Demon 9"] = { x = 340, y = 316, z = 15 },
["Demon 10"] = { x = 342, y = 316, z = 15 },
["Demon 11"] = { x = 345, y = 317, z = 15 },
["Demon 12"] = { x = 345, y = 315, z = 15 },
["Demon 13"] = { x = 345, y = 313, z = 15 },
["Demon 14"] = { x = 345, y = 311, z = 15 },
["Demon 15"] = { x = 345, y = 309, z = 15 },
["Demon 16"] = { x = 345, y = 307, z = 15 },
["Demon 17"] = { x = 345, y = 305, z = 15 },
["Demon 18"] = { x = 345, y = 303, z = 15 },
["Ghastly 1"] = { x = 322, y = 298, z = 14 },
["Fury 1"] = { x = 325, y = 302, z = 14 },
["Cyclops 1"] = { x = 323, y = 274, z = 14 }
}
}

function onThink(cid, interval, lastExecution)
for text, pos in pairs(config.positions) do
doSendAnimatedText(pos, text, 200)
end

return TRUE
end 

