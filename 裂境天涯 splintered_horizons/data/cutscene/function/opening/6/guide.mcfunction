
execute store result score #send_command_feedback main.gamerule run \
gamerule send_command_feedback
gamerule send_command_feedback false
gamemode survival @a

execute \
    if score #send_command_feedback main.gamerule matches 0 run \
gamerule send_command_feedback false

execute \
    if score #send_command_feedback main.gamerule matches 1 run \
gamerule send_command_feedback true

forceload remove 9984 10077 10015 10064