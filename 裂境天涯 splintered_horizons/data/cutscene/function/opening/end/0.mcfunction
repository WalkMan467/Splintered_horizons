execute \
    store result score #send_command_feedback main.gamerule run \
gamerule send_command_feedback

gamerule send_command_feedback false
gamemode adventure @a

item replace entity @a armor.head with air 1

execute \
    if score #send_command_feedback main.gamerule matches 0 run \
gamerule send_command_feedback false

execute \
    if score #send_command_feedback main.gamerule matches 1 run \
gamerule send_command_feedback true

execute \
    in minecraft:overworld run \
tp @a 38 64 11 180 0

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