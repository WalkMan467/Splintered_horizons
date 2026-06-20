execute \
    if entity @s[gamemode=creative] run \
return 0

execute \
    if entity @s[tag=animation] run \
return 0

execute \
    if entity @s[gamemode=spectator] run \
return 0

title @a title ""

title @a subtitle ""

title @a times 20 20 20

execute \
    in world_area:main/game_lobby run \
tp @a 16683.0 60.0 233.0
stopsound @a record
function cutscene:world_tree/use