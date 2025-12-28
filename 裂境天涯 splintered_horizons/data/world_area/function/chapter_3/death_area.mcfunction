
execute \
    if score #weapons:monument/area_2 global.main matches 1.. run \
return 0

tag @s add temp
tag @s[tag=!animation,gamemode=spectator] remove temp
tag @s[gamemode=creative] remove temp

kill @s[tag=temp]
tag @s remove temp