gamemode adventure @a

item replace entity @a armor.head with air 1

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