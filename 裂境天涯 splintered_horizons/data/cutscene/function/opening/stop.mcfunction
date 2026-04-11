
execute \
    in minecraft:overworld run \
forceload remove 42 11 42 11

execute \
    in minecraft:overworld run \
forceload remove 10055 10310

function cutscene:opening/remove_camera/1

schedule function cutscene:opening/remove_forceload 5t

attribute @s waypoint_receive_range modifier remove cutscene
attribute @s waypoint_receive_range modifier remove cutscene.1
attribute @s waypoint_transmit_range modifier remove cutscene
attribute @s waypoint_transmit_range modifier remove cutscene.1

execute \
    positioned 10055 123 10310 \
    as @n[tag=aj.amysis.root,type=item_display,distance=..3] run \
function animated_java:amysis/remove/this

execute \
    positioned 9998 93 10065 \
    as @n[distance=..3,type=item_display,tag=aj.aska.root] run \
function animated_java:aska/remove/this

execute \
    positioned 10000 93 10065 \
    as @n[distance=..3,type=item_display,tag=aj.oceanid.root] run \
function animated_java:oceanid/remove/this

execute \
    positioned 9999 95 10060 \
    as @n[distance=..3,type=item_display,tag=aj.kyle.root] run \
function animated_java:kyle/remove/this

execute \
    positioned 9998 93 10066 \
    as @n[distance=..3,type=item_display,tag=aj.kyle.root] run \
function animated_java:kyle/remove/this

execute \
    positioned 1026 136 -130 \
    as @e[sort=arbitrary,distance=..3,tag=aj.stellar_animation.root,type=item_display] run \
function animated_java:stellar_animation/remove/this

execute \
    positioned 1028 136 -129 \
    as @e[sort=arbitrary,distance=..3,tag=aj.sophia.root,type=item_display] run \
function animated_java:sophia/remove/this


execute \
    positioned 1027 136 -129 \
    as @e[sort=arbitrary,distance=..3,tag=aj.isokla.root,type=item_display] run \
function animated_java:isokla/remove/this


weather clear

scoreboard objectives setdisplay sidebar player.death_count

scoreboard players set cutscene.opening.title cutscene.opening.title.timer 0

kill 000000d3-0000-0004-0000-000100000001

execute \
    as @a run \
attribute @s minecraft:movement_speed modifier remove minecraft:cutscene.1

execute \
    as @a run \
attribute @s minecraft:entity_interaction_range modifier remove minecraft:cutscene.1

execute \
    as @a run \
attribute @s minecraft:block_interaction_range modifier remove minecraft:cutscene.1

execute \
    as @a run \
attribute @s minecraft:attack_damage modifier remove minecraft:cutscene.1

execute \
    as @a run \
attribute @s minecraft:jump_strength modifier remove minecraft:cutscene.1

schedule clear cutscene:opening/use
schedule clear cutscene:opening/0/title/main
schedule clear cutscene:opening/0/0
schedule clear cutscene:opening/0/1
schedule clear cutscene:opening/0/use
schedule clear cutscene:opening/1/use
schedule clear cutscene:opening/1/guide
schedule clear cutscene:opening/1/0
schedule clear cutscene:opening/1/1
schedule clear cutscene:opening/1/2
schedule clear cutscene:opening/1/3
schedule clear cutscene:opening/2/0
schedule clear cutscene:opening/3/0
schedule clear cutscene:opening/4/0
schedule clear cutscene:opening/5/0
schedule clear cutscene:opening/6/0
schedule clear cutscene:opening/end/use
schedule clear cutscene:opening/2/use
schedule clear cutscene:opening/3/use
schedule clear cutscene:opening/4/use
schedule clear cutscene:opening/5/use
schedule clear cutscene:opening/6/use
schedule clear cutscene:opening/7/use
schedule clear cutscene:opening/7/0
schedule clear cutscene:opening/7/1
schedule clear cutscene:opening/7/2
schedule clear cutscene:opening/7/3
schedule clear cutscene:opening/7/4
schedule clear cutscene:opening/7/5
schedule clear cutscene:opening/7/6
schedule clear cutscene:opening/7/7
schedule clear cutscene:opening/7/8
schedule clear cutscene:opening/7/9
schedule clear cutscene:opening/7/10
schedule clear cutscene:opening/7/11
schedule clear cutscene:opening/7/12
schedule clear cutscene:opening/8/use
schedule clear cutscene:opening/8/0
schedule clear cutscene:opening/8/1
schedule clear cutscene:opening/8/2
schedule clear cutscene:opening/9/use
schedule clear cutscene:opening/9/0
schedule clear cutscene:opening/9/1
schedule clear cutscene:opening/9/2
schedule clear cutscene:opening/9/3
schedule clear cutscene:opening/9/4
schedule clear cutscene:opening/9/5
schedule clear cutscene:opening/9/6
schedule clear cutscene:opening/9/7
schedule clear cutscene:opening/9/8
schedule clear cutscene:opening/10/use
schedule clear cutscene:opening/10/0
schedule clear cutscene:opening/10/1

schedule clear cutscene:opening/end/use
schedule clear cutscene:opening/end/0
schedule clear cutscene:opening/end/1
schedule clear cutscene:opening/6/2
schedule clear cutscene:opening/1/0_1

function story:chapter_1/mq/stop
function music:cutscene/opening/reset

gamerule minecraft:locator_bar true
gamerule spawner_blocks_work true

schedule clear cutscene:opening/main

scoreboard players set .opening cutscene.story -1


execute \
    positioned 9998 93 10070 \
    as @e[type=item_display,tag=aj.boss_1.root] at @s run \
function animated_java:boss_1/remove/this

stopsound @a record

gamemode survival @a


execute \
    in minecraft:overworld run \
tp @a 9999 131 10071 180 0

function cutscene:opening/remove_camera/1

title @a times 10 40 10
title @a title ""
title @a actionbar ""

tellraw @a {"text": "Cutscene is Stoping!","color": "dark_green"}

item replace entity @a armor.head with air


tag @a remove cutscene.opening
tag @a remove sys.hide_world_area.name

execute \
    if score #cutscene global.main matches 1.. \
    if score #send_command_feedback main.gamerule matches 0 run \
gamerule send_command_feedback false

execute \
    if score #cutscene global.main matches 1.. \
    if score #send_command_feedback main.gamerule matches 1 run \
gamerule send_command_feedback true

scoreboard players reset #cutscene global.main