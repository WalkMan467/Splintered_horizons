
# main 
summon marker ~ ~ ~ {Tags:[fx.rotf.main]}

playsound minecraft:voice.water_drop voice @a ~ ~ ~ 2 1
playsound minecraft:voice.water_drop voice @a ~ ~ ~ 2 1

playsound minecraft:entity.generic.explode voice @a ~ ~ ~ 0.25 0.5
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 1
particle minecraft:flash ~ ~1 ~ 1 1 1 1 5 normal @a[scores={main.light_sensitivity=0}]
particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.5 200
function particle:ruins_of_the_finality_rupture/ground_ash/summon