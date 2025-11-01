
# main 
summon marker ~ ~ ~ {Tags:[fx.gz.main]}

# particle
playsound minecraft:entity.generic.explode voice @a ~ ~ ~ 3 0.5



particle minecraft:flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 1 1 1 1 5 normal @a[scores={main.light_sensitivity=0}]
function particle:stone_explosion/ground_ash/summon