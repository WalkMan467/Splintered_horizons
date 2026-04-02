tag @a remove cutscene.opening.end

scoreboard players set #game.start global.main 1
advancement grant @a only players:new_player

item replace entity @a armor.head with air
gamemode adventure @a
title @a title {"text":"\uE000","font":"minecraft:screen"}
title @a subtitle ""
title @a times 0 0 40

function cutscene:opening/remove_camera/1

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


execute \
    in minecraft:overworld run \
function cutscene:opening/remove_forceload

execute \
    as @a run \
attribute @s waypoint_receive_range modifier remove cutscene

execute \
    as @a run \
attribute @s waypoint_receive_range modifier remove cutscene.1

execute \
    as @a run \
attribute @s waypoint_transmit_range modifier remove cutscene

execute \
    as @a run \
attribute @s waypoint_transmit_range modifier remove cutscene.1

execute \
    as @a run \
attribute @s movement_speed modifier remove cutscene.1

execute \
    as @a run \
attribute @s jump_strength modifier remove cutscene.1

execute \
    as @a run \
attribute @s attack_damage modifier remove cutscene.1

execute \
    as @a run \
attribute @s entity_interaction_range modifier remove cutscene.1

execute \
    as @a run \
attribute @s block_interaction_range modifier remove cutscene.1


stopsound @a voice minecraft:voice.in_world_area

gamerule minecraft:locator_bar true
gamerule spawner_blocks_work true

execute \
    if score #cutscene global.main matches 1.. \
    if score #send_command_feedback main.gamerule matches 0 run \
gamerule send_command_feedback false

execute \
    if score #cutscene global.main matches 1.. \
    if score #send_command_feedback main.gamerule matches 1 run \
gamerule send_command_feedback true

scoreboard players reset #cutscene global.main

schedule function cutscene:opening/end/3 2s