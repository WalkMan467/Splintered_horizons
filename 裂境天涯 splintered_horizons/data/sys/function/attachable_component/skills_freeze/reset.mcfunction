tag @s remove sys.dummy_mob.interface
tag @s add sys.skills_freeze.remove
tag @s remove sys.skills_freeze.setup

scoreboard players operation #remove sys.skills_freeze.id = @s sys.skills_freeze.id

execute \
    as @e[sort=arbitrary,distance=0..,tag=sys.skills_freeze.display,type=block_display] at @s \
    if score @s sys.skills_freeze.id = #remove sys.skills_freeze.id run \
kill @s[tag=sys.skills_freeze.display,type=block_display]

tag @s remove sys.skills_freeze.remove

scoreboard players reset @s sys.skills_freeze
scoreboard players reset @s sys.skills_freeze.id

attribute @s attack_damage modifier remove sys.skills_freeze
attribute @s attack_speed modifier remove sys.skills_freeze
attribute @s air_drag_modifier modifier remove sys.skills_freeze
attribute @s knockback_resistance modifier remove sys.skills_freeze
attribute @s explosion_knockback_resistance modifier remove sys.skills_freeze
attribute @s burning_time modifier remove sys.skills_freeze
attribute @s minecraft:oxygen_bonus modifier remove sys.skills_freeze
attribute @s minecraft:mining_efficiency modifier remove sys.skills_freeze
attribute @s minecraft:friction_modifier modifier remove sys.skills_freeze
attribute @s minecraft:gravity base reset
attribute @s minecraft:jump_strength modifier remove sys.skills_freeze
attribute @s minecraft:movement_speed modifier remove sys.skills_freeze
attribute @s minecraft:sneaking_speed modifier remove sys.skills_freeze
attribute @s minecraft:water_movement_efficiency modifier remove sys.skills_freeze

execute \
    if entity @s[type=minecraft:creeper] run \
attribute @s minecraft:follow_range modifier remove sys.skills_freeze


effect clear @s mining_fatigue
tag @s remove sys.skills_freeze