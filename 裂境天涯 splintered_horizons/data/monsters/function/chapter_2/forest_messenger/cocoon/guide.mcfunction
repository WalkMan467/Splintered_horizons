# Center point rotation of the cocoon + special effects
tp @s ~ ~ ~ ~5 0
tag @s add mid

# Cocoon special effects

execute \
    as @e[type=block_display,tag=monster.forest_messenger.cocoon] at @s run \
function monsters:chapter_2/forest_messenger/cocoon/fx

# Capture and categorize by Tag
scoreboard players operation #detect monster.forest_messenger.cocoon.id = @s monster.forest_messenger.cocoon.id


execute \
    as @e[type=block_display,tag=monster.forest_messenger.cocoon] \
    if score @s monster.forest_messenger.cocoon.id = #detect monster.forest_messenger.cocoon.id run \
tag @s add monster.forest_messenger.cocoon.tp

execute \
    as @e[scores={monster.forest_messenger.user=1..},limit=1,tag=!monster.forest_messenger.cocoon.user_temp,type=!player] \
    if score @s monster.forest_messenger.cocoon.id = @e[type=item_display,tag=monster.forest_messenger.cocoon.main,tag=mid,limit=1] monster.forest_messenger.cocoon.id run \
tag @s add monster.forest_messenger.cocoon.user_temp


execute \
    as @e[type=block_display,tag=monster.forest_messenger.cocoon] \
    if score @s monster.forest_messenger.cocoon.id = @e[tag=monster.forest_messenger.cocoon.user_temp,limit=1,tag=monster.forest_messenger.1.actived] monster.forest_messenger.cocoon.id at @s run \
function monsters:chapter_2/forest_messenger/cocoon/tp/raycast/use


# Cocoon location positioning

execute at @s \
    as @e[type=block_display,tag=monster.forest_messenger.cocoon.tp,tag=monster.forest_messenger.cocoon,limit=1] \
    positioned ^ ^ ^8 facing entity @e[type=item_display,tag=mid,limit=1] eyes run \
tp @s ~ ~ ~ ~ ~

# Cocoon center position TP to user

execute at @n[scores={monster.forest_messenger.user=1..},type=!player] \
    positioned ~ ~1 ~ run \
tp @s ~ ~ ~

tag @e[tag=monster.forest_messenger.cocoon.user_temp] remove monster.forest_messenger.cocoon.user_temp
tag @e[tag=monster.forest_messenger.cocoon.tp,type=block_display] remove monster.forest_messenger.cocoon.tp
tag @s[tag=mid] remove mid