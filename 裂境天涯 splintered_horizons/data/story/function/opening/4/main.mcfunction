execute \
    in world_area:main/game_lobby \
    positioned 1575 61 169 \
    if entity @n[sort=arbitrary,distance=..35,tag=monster.beginner_tutorial,type=skeleton] run \
    return run \
schedule function story:opening/4/main 1t

execute \
    in world_area:main/game_lobby \
    unless loaded 1569 61 165 run \
    return run \
schedule function story:opening/4/main 1t

execute \
    in world_area:main/game_lobby \
    unless loaded 1571 61 178 run \
    return run \
schedule function story:opening/4/main 1t

execute \
    in world_area:main/game_lobby \
    unless loaded 1583 61 174 run \
    return run \
schedule function story:opening/4/main 1t

execute \
    in world_area:main/game_lobby \
    if block 1569 61 165 spawner run \
    return run \
schedule function story:opening/4/main 1t

execute \
    in world_area:main/game_lobby \
    if block 1571 61 178 spawner run \
    return run \
schedule function story:opening/4/main 1t

execute \
    in world_area:main/game_lobby \
    if block 1583 61 174 spawner run \
    return run \
schedule function story:opening/4/main 1t


schedule function story:opening/4/done 1t