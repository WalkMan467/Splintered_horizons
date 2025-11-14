
# main 
summon marker ~ ~ ~ {Tags:[fx.ipe.main]}

# particle

playsound minecraft:entity.generic.explode voice @a ~ ~ ~ 0.25 0.5
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 1
playsound minecraft:voice.water_drop voice @a ~ ~ ~ 2 1
playsound minecraft:voice.water_drop voice @a ~ ~ ~ 2 1

particle minecraft:flash{color:[0.000,0.000,0.000,1.00]} ~ ~ ~ 1 1 1 1 5 normal @a[scores={main.light_sensitivity=0}]
function particle:ink_painting_expansion/ground_ash/summon