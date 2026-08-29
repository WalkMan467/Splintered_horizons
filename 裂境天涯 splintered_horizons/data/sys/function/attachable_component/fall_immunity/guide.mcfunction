scoreboard players reset 0004e6cf-0000-7e39-0000-091c0000a8df sys.fall_immunity
tag 0004e6cf-0000-7e39-0000-091c0000a8df remove sys.fall_immunity

tag @n[distance=0..,sort=arbitrary,scores={sys.fall_immunity=0..},type=!#fall_damage_immune,type=!#minecraft:dummy_mob] add sys.fall_immunity.detect
tag @n[distance=0..,sort=arbitrary,tag=sys.fall_immunity,type=!#fall_damage_immune,type=!#minecraft:dummy_mob] add sys.fall_immunity.detect

execute \
    unless entity @n[distance=0..,sort=arbitrary,tag=sys.fall_immunity.detect,type=!#fall_damage_immune,type=!#minecraft:dummy_mob] run \
return 0

execute \
    as @e[sort=arbitrary,distance=0..,tag=sys.fall_immunity.detect,type=!#fall_damage_immune,type=!#minecraft:dummy_mob] run \
function sys:attachable_component/fall_immunity/timer

tag @e[distance=0..,sort=arbitrary,tag=sys.fall_immunity.detect,type=!#fall_damage_immune,type=!#minecraft:dummy_mob] remove sys.fall_immunity.detect