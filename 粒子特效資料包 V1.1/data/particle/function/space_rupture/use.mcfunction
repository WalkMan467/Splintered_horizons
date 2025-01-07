
# main 
summon marker ~ ~ ~ {Tags:[fx.sr.main]}

# particle
playsound minecraft:voice.time_and_space_portal_open voice @a ~ ~ ~ 9999 1
playsound minecraft:entity.generic.explode voice @a ~ ~ ~ 9999 0.5
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 1
particle minecraft:portal ~ ~2.5 ~ 0.5 0.5 0.5 1 800
title @s title {"text":"\uE009"}
title @s actionbar {"text":""}
title @s times 0 0 15
particle minecraft:flash ~ ~1 ~ 1 1 1 1 5
particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.5 200
function particle:space_rupture/ground_ash/summon