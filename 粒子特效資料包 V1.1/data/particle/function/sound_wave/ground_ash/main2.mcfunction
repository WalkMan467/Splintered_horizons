# timer
scoreboard players add @s particle.sound_wave 1

# speed
execute if score @s particle.sound_wave matches ..10 run tp @s ^ ^ ^-0.8
execute at @s unless block ~ ~ ~ air run tp @s ~ ~1 ~

execute at @s if block ~ ~-1 ~ air run tp @s ~ ~-1 ~

# text
execute store result score #temp global.main run random value 0..3

# reset
execute if score @s particle.sound_wave matches 42.. run kill @s