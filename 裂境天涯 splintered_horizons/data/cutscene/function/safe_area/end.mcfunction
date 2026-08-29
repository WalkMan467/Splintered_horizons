scoreboard players set .safe_area cutscene.story -1

scoreboard players set #cutscene global.main 0
scoreboard players set #cutscene.safe_area global.main 2

kill 00000079-0000-000c-0000-001500000015
kill 000000de-0000-000b-0000-001500000015
kill 00000015-0000-0016-0000-001500000015
kill 00000016-0000-0016-0000-001500000015
kill 00000016-0000-0016-0000-001500000019

scoreboard objectives setdisplay sidebar player.death_count

forceload remove 762 931 758 935


execute \
    positioned 758 143 935 \
    as @n[sort=arbitrary,distance=..10,tag=aj.sophia.root,type=item_display] run \
function aj:sophia/remove/this

execute \
    positioned 758 143 935 \
    as @n[sort=arbitrary,distance=..10,tag=aj.stellar.root,type=item_display] run \
function aj:stellar/remove/this

execute \
    positioned 758 143 935 \
    as @e[sort=arbitrary,distance=..10,tag=aj.stellar.entity,type=item_display] run \
kill @s

execute \
    positioned 759 144 946 \
    as @n[sort=arbitrary,distance=..10,tag=aj.isokla.root,type=item_display] run \
function aj:isokla/remove/this

execute \
    positioned 757 144 946 \
    as @n[sort=arbitrary,distance=..10,tag=aj.irina.root,type=item_display] run \
function aj:irina/remove/this

tp @a 760 145 969 0 0

title @a times 0 20 60
title @a title {"text":"\uE000","font":"minecraft:screen"}

gamemode survival @a

clear @a


# 先把狀態清掉，refresh 才會重算成「該回便服」
tag @a remove cutscene.player_leave.detect

execute \
    as @a at @s run \
function players:uniform/refresh


execute \
    as @a \
    if items entity @s armor.head *[minecraft:item_model="camera"] run \
item replace entity @s armor.head with minecraft:air


stopsound @a record

execute \
    as @a at @s run \
function music:reset


schedule clear cutscene:safe_area/main