
execute \
    if score #weapons:monument/area_1 global.main matches 1 run \
return fail
scoreboard players set #weapons:monument/area_1 global.main 1

tellraw @a {"translate":"tips.monument.1"}
tellraw @a {"translate":"tips.monument.2"}
tellraw @a {"translate":"tips.monument.3"}

title @s times 10 60 20
title @s title {"translate":"tips.area_1.title","color": "blue"}
title @s subtitle {"translate":"tips.area_1.subtitle","color": "blue"}


execute \
    as @a at @s run \
playsound minecraft:ui.toast.challenge_complete voice @s ~ ~1 ~ 1 1

scoreboard players set #weapons:monument/area_1 global.main 1