schedule function sys:fall_immunity/main 1t

tag @n[distance=0..,sort=arbitrary,scores={sys.fall_immunity=0..},type=!#fall_damage_immune,type=!#minecraft:dummy_mob] add sys.fall_immunity.detect
tag @n[distance=0..,sort=arbitrary,tag=sys.fall_immunity,type=!#fall_damage_immune,type=!#minecraft:dummy_mob] add sys.fall_immunity.detect

execute \
    unless entity @n[distance=0..,sort=arbitrary,tag=sys.fall_immunity.detect,type=!#fall_damage_immune,type=!#minecraft:dummy_mob] run \
return 0


execute \
    as @e[sort=arbitrary,distance=0..,tag=sys.fall_immunity.detect,type=!#fall_damage_immune,type=!#minecraft:dummy_mob] run \
function sys:fall_immunity/timer

tag @e[distance=0..,sort=arbitrary,tag=sys.fall_immunity.detect,type=!#fall_damage_immune,type=!#minecraft:dummy_mob] remove sys.fall_immunity.detect
