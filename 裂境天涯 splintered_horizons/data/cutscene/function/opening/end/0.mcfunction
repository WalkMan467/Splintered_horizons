
execute \
    store result score #send_command_feedback main.gamerule run \
gamerule send_command_feedback
gamerule send_command_feedback false
gamemode survival @a

execute \
    if score #send_command_feedback main.gamerule matches 0 run \
gamerule send_command_feedback false

execute \
    if score #send_command_feedback main.gamerule matches 1 run \
gamerule send_command_feedback true

tp @a 38 64 11 180 0


execute \
    as @a at @s run \
tp @s ~ 65 ~ -90 0

title @s times 0 20 40
title @s title {"text":"\uE000","font":"minecraft:screen"}

playsound minecraft:voice.join_game voice @s ~ ~1 ~ 3 1

stopsound @s voice minecraft:voice.in_world_area

schedule function story:chapter_1/mq/1/0 6s

schedule function cutscene:opening/end/1 2s