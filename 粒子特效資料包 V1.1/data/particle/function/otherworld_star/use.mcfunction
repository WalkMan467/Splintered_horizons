
# main 
summon marker ~ ~ ~ {Tags:[fx.otherworld_star.main]}

# particle

particle minecraft:end_rod ~ ~ ~ 0 0 0 1 50 normal @a

particle minecraft:flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 1 1 1 1 5 normal @a[scores={main.light_sensitivity=0}]
function particle:otherworld_star/ground_ash/summon