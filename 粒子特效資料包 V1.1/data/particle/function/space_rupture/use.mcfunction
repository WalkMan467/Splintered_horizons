
# main 
summon marker ~ ~ ~ {Tags:[fx.sr.main]}

# particle
playsound minecraft:voice.time_and_space_portal_open voice @a ~ ~ ~ 9999 1
playsound minecraft:entity.generic.explode voice @a ~ ~ ~ 9999 0.5
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 1
particle minecraft:portal ~ ~2.5 ~ 0.5 0.5 0.5 1 800
particle minecraft:flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 1 1 1 1 5 normal @a[scores={main.light_sensitivity=0}]
particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.5 200
function particle:space_rupture/ground_ash/summon