execute store result score #sendCommandFeedback main.gamerule run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
gamemode survival @a
execute if score #sendCommandFeedback main.gamerule matches 0 run gamerule sendCommandFeedback false
execute if score #sendCommandFeedback main.gamerule matches 1 run gamerule sendCommandFeedback true

forceload remove 9984 10077 10015 10064