execute store result score #sendCommandFeedback main.gamerule run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
gamemode survival @a
execute if score #sendCommandFeedback main.gamerule matches 0 run gamerule sendCommandFeedback false
execute if score #sendCommandFeedback main.gamerule matches 1 run gamerule sendCommandFeedback true

execute positioned 44 65 10 run spreadplayers ~ ~ 2 4 under 65 false @a

execute as @a at @s run tp @s ~ 65 ~ -90 0
execute as @a at @s run spawnpoint @s ~ ~ ~

schedule function cutscene:opening/end/1 2s