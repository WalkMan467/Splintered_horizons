function sys:dummy_mob/interface


execute \
    if entity @s[tag=sys.dummy_mob.interface] run \
    return run \
function sys:attachable_component/skills_freeze/reset

execute \
    if entity @s[tag=freeze.immunity] run \
    return run \
function sys:attachable_component/skills_freeze/reset


particle minecraft:snowflake ~ ~1 ~ 0.5 1 0.5 0 2 normal @a
attribute @s attack_damage modifier add sys.skills_freeze -1 add_multiplied_total
attribute @s attack_speed modifier add sys.skills_freeze -1 add_multiplied_total
attribute @s air_drag_modifier modifier add sys.skills_freeze 1024 add_value
attribute @s knockback_resistance modifier add sys.skills_freeze 1024 add_value
attribute @s explosion_knockback_resistance modifier add sys.skills_freeze 1024 add_value
attribute @s burning_time modifier add sys.skills_freeze -1 add_multiplied_total
attribute @s minecraft:oxygen_bonus modifier add sys.skills_freeze 1024 add_value
attribute @s minecraft:mining_efficiency modifier add sys.skills_freeze -1024 add_value
attribute @s minecraft:friction_modifier modifier add sys.skills_freeze 1024 add_value
attribute @s minecraft:gravity base set 0
attribute @s minecraft:jump_strength modifier add sys.skills_freeze -1024 add_value
attribute @s minecraft:movement_speed modifier add sys.skills_freeze -1024 add_value
attribute @s minecraft:sneaking_speed modifier add sys.skills_freeze -1024 add_value
attribute @s minecraft:water_movement_efficiency modifier add sys.skills_freeze -1024 add_value

effect give @s mining_fatigue 1 255 true
tag @s add sys.skills_freeze

# 苦力怕的引信是在 tick 裡自己累加的，NoAI 只會把已經開始的膨脹凍在原地，
# 時間到照樣爆 只在凍結的第一 tick 處理一次就好

execute \
    if entity @s[type=minecraft:creeper,tag=!sys.skills_freeze.setup] run \
function sys:attachable_component/skills_freeze/creeper

tag @s add sys.skills_freeze.setup

tag @s add sys.skills_freeze.user

execute \
    as @e[sort=arbitrary,distance=..5,tag=!summon,tag=!sys.skills_freeze.tp,tag=sys.skills_freeze.display,type=block_display] at @s \
    if score @s sys.skills_freeze.id = @n[sort=arbitrary,distance=..5,tag=sys.skills_freeze.user,type=!#minecraft:dummy_mob] sys.skills_freeze.id run \
tag @s add sys.skills_freeze.tp

tp @s @n[sort=arbitrary,distance=..5,tag=sys.skills_freeze.tp,tag=sys.skills_freeze.display,type=block_display]

execute \
    unless score @s sys.skills_freeze.id matches -2147483648..2147483647 run \
function sys:attachable_component/skills_freeze/ice_display/summon

tag @n[sort=arbitrary,distance=..5,tag=!summon,tag=sys.skills_freeze.tp,type=block_display] remove sys.skills_freeze.tp
tag @s remove sys.skills_freeze.user