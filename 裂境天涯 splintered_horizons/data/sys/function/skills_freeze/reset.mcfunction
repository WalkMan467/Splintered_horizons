tag @s remove sys.dummy_mob.interface
tag @s add sys.skills_freeze.remove

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
effect clear @s mining_fatigue