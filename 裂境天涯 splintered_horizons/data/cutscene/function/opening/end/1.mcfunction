tag @a remove cutscene.opening.end

execute \
    store result score #send_command_feedback main.gamerule run \
gamerule send_command_feedback

scoreboard players set #game.start global.main 1
advancement grant @a only players:new_player

gamerule send_command_feedback false
gamemode adventure @a

function cutscene:opening/remove_camera/1


execute \
    in minecraft:overworld run \
function cutscene:opening/remove_forceload

execute \
    if score #send_command_feedback main.gamerule matches 0 run \
gamerule send_command_feedback false

execute \
    if score #send_command_feedback main.gamerule matches 1 run \
gamerule send_command_feedback true


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

stopsound @a voice minecraft:voice.in_world_area