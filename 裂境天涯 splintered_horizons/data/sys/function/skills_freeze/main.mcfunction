function sys:dummy_mob/interface

execute \
    if entity @s[tag=sys.dummy_mob.interface] run \
    return run \
function sys:skills_freeze/reset

particle minecraft:snowflake ~ ~1 ~ 0.5 1 0.5 0 2 normal @a
attribute @s attack_damage modifier add sys.skills_freeze -1 add_multiplied_total
attribute @s attack_speed modifier add sys.skills_freeze -1 add_multiplied_total
effect give @s mining_fatigue 1 255 true

tag @s add sys.skills_freeze.user

execute \
    as @e[sort=arbitrary,distance=..5,tag=!summon,tag=!sys.skills_freeze.tp,tag=sys.skills_freeze.display,type=block_display] at @s \
    if score @s sys.skills_freeze.id = @n[sort=arbitrary,distance=..5,tag=sys.skills_freeze.user,type=!#minecraft:dummy_mob] sys.skills_freeze.id run \
tag @s add sys.skills_freeze.tp

tp @s @n[sort=arbitrary,distance=..5,tag=sys.skills_freeze.tp,tag=sys.skills_freeze.display,type=block_display]

execute \
    unless score @s sys.skills_freeze.id matches -2147483648..2147483647 run \
function sys:skills_freeze/ice_display/summon

tag @n[sort=arbitrary,distance=..5,tag=!summon,tag=sys.skills_freeze.tp,type=block_display] remove sys.skills_freeze.tp
tag @s remove sys.skills_freeze.user