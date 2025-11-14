execute as @n[type=block_display,tag=cutscene.opening.7,limit=1] at @s run tp @s ~-10 ~5 ~ -90 20

execute store result score #send_command_feedback main.gamerule run gamerule send_command_feedback
gamerule send_command_feedback false
gamemode adventure @a
execute if score #send_command_feedback main.gamerule matches 0 run gamerule send_command_feedback false
execute if score #send_command_feedback main.gamerule matches 1 run gamerule send_command_feedback true

schedule function cutscene:opening/end/use 29s