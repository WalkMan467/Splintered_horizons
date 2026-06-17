execute \
    in world_area:main/game_lobby run \
forceload add 1579 137 1570 137

execute \
    in world_area:main/game_lobby \
    unless loaded 1579 60 137 run \
return run \
schedule function story:opening/4/remove_barrier 1t

execute \
    in world_area:main/game_lobby \
    unless loaded 1570 67 137 run \
return run \
schedule function story:opening/4/remove_barrier 1t

execute \
    in world_area:main/game_lobby run \
fill 1579 60 137 1570 67 137 minecraft:air

execute \
    in world_area:main/game_lobby run \
forceload remove 1579 137 1570 137