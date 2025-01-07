execute as @n[type=block_display,tag=cutscene.opening.7,limit=1] at @s run tp @s ~-10 ~5 ~ -90 20

execute store result score #sendCommandFeedback main.gamerule run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
gamemode adventure @a
execute if score #sendCommandFeedback main.gamerule matches 0 run gamerule sendCommandFeedback false
execute if score #sendCommandFeedback main.gamerule matches 1 run gamerule sendCommandFeedback true

schedule function cutscene:opening/end/use 17s