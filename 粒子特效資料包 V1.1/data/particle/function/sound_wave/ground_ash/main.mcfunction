# timer
scoreboard players add @s particle.sound_wave 1

# speed
execute if score @s particle.sound_wave matches ..10 run tp @s ^ ^ ^0.8
execute at @s unless block ~ ~ ~ air run tp @s ~ ~1 ~

execute at @s if block ~ ~-1 ~ air run tp @s ~ ~-1 ~


# particle
execute if score @s particle.sound_wave matches 0..6 run particle minecraft:note ~ ~ ~ 0.5 0.5 0.5 1 1 normal
execute if score @s particle.sound_wave matches 12 run particle minecraft:sonic_boom ~ ~ ~ 0.5 0 0.5 0 1
execute if score @s particle.sound_wave matches 13.. run particle minecraft:note ~ ~ ~ 0.5 0.5 0.5 1 1 normal

# purple ash
scoreboard players operation #temp global.main = @s particle.sound_wave
scoreboard players operation #temp global.main %= 4 particle.sound_wave

# reset
execute if score @s particle.sound_wave matches 42.. run function particle:sound_wave/ground_ash/end