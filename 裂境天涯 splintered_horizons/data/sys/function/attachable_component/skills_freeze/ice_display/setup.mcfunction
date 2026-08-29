scoreboard players operation @s sys.skills_freeze.id = #index sys.skills_freeze.id

execute \
    rotated as @n[sort=arbitrary,distance=..3,tag=sys.skills_freeze.user,type=!#minecraft:dummy_mob] run \
rotate @s ~ 0

tag @s remove summon