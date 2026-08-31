# ===================================================
# 繭 旋轉與判定 / cocoon rotate and check

    ## Guide [ function monsters:chapter_2/forest_messenger/cocoon/guide ] >>> 繭 旋轉與判定 / cocoon rotate and check
    ## Guide [ function monsters:chapter_2/forest_messenger/cocoon/main ] >>> 繭 排程 / cocoon scheduler
    ## Guide [ function monsters:chapter_2/forest_messenger/cocoon/fx ] >>> 繭 特效 / cocoon fx
    ## Guide [ function monsters:chapter_2/forest_messenger/cocoon/tp/raycast/use ] >>> 繭 傳送 射線 入口 / cocoon teleport raycast entry

# ===================================================

# Center point rotation of the cocoon + special effects
tp @s ~ ~ ~ ~5 0
tag @s add mid

# Cocoon special effects

# Cocoon special effects

execute \
    as @e[distance=..60,tag=monster.forest_messenger.cocoon,type=block_display] \
    if score @s monster.forest_messenger.cocoon.id = #detect monster.forest_messenger.cocoon.id at @s run \
function monsters:chapter_2/forest_messenger/cocoon/fx

# Capture and categorize by Tag
scoreboard players operation #detect monster.forest_messenger.cocoon.id = @s monster.forest_messenger.cocoon.id


execute \
    as @e[distance=..60,tag=monster.forest_messenger.cocoon,type=block_display] \
    if score @s monster.forest_messenger.cocoon.id = #detect monster.forest_messenger.cocoon.id run \
tag @s add monster.forest_messenger.cocoon.tp

execute \
    as @n[distance=..60,scores={monster.forest_messenger.user=1..},sort=arbitrary,tag=!monster.forest_messenger.cocoon.user_temp,type=!player] \
    if score @s monster.forest_messenger.cocoon.id = @n[sort=arbitrary,distance=..60,tag=monster.forest_messenger.cocoon.main,tag=mid,type=item_display] monster.forest_messenger.cocoon.id run \
tag @s add monster.forest_messenger.cocoon.user_temp


execute \
    as @e[distance=..60,tag=monster.forest_messenger.cocoon,type=block_display] \
    if score @s monster.forest_messenger.cocoon.id = @n[distance=..60,tag=monster.forest_messenger.cocoon.user_temp,sort=arbitrary,tag=monster.forest_messenger.1.actived,type=!player] monster.forest_messenger.cocoon.id at @s run \
function monsters:chapter_2/forest_messenger/cocoon/tp/raycast/use


# Cocoon location positioning

execute \
    at @s \
    as @n[distance=..60,sort=arbitrary,tag=monster.forest_messenger.cocoon.tp,tag=monster.forest_messenger.cocoon,type=block_display] \
    positioned ^ ^ ^8 facing entity @n[distance=..60,tag=mid,type=item_display] eyes run \
tp @s ~ ~ ~ ~ ~

# Cocoon center position TP to user

execute \
    at @n[distance=..60,scores={monster.forest_messenger.user=1..},type=!player] \
    positioned ~ ~1 ~ run \
tp @s ~ ~ ~

tag @e[distance=..60,tag=monster.forest_messenger.cocoon.user_temp,type=!player] remove monster.forest_messenger.cocoon.user_temp
tag @e[distance=..60,tag=monster.forest_messenger.cocoon.tp,type=block_display] remove monster.forest_messenger.cocoon.tp
tag @s[tag=mid] remove mid