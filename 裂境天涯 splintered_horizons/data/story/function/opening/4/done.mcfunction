execute \
    in world_area:main/game_lobby \
    positioned 1575 61 169 run \
title @a[distance=..35] title ""

execute \
    in world_area:main/game_lobby \
    positioned 1575 61 169 run \
title @a[distance=..35] subtitle {"translate":"story.opening.4.1","fallback":"做得好","color":"green","bold":true}

execute \
    in world_area:main/game_lobby \
    positioned 1575 61 169 run \
title @a[distance=..35] times 20 40 20

execute \
    in world_area:main/game_lobby \
    positioned 1575 61 169 run \
tellraw @a[distance=..35] {"translate":"story.opening.4.2","fallback":"前方的屏障已經移除","color":"white","bold":false}

execute \
    in world_area:main/game_lobby \
    positioned 1575 61 169 run \
tellraw @a[distance=..35] {"translate":"story.opening.4.3","fallback":"你現在通往下一個地方了","color":"white","bold":false}

execute \
    in world_area:main/game_lobby \
    positioned 1575 61 169 \
    as @a[distance=..35] at @s run \
playsound minecraft:entity.player.levelup voice @s ~ ~1 ~ 1 0.5

schedule function story:opening/4/remove_barrier 1t