# timer
scoreboard players add @s particle.technological_force_wave 1

# speed
execute if score @s particle.technological_force_wave matches ..10 run tp @s ^ ^ ^1

# execute at @s unless block ~ ~ ~ #penetrate run tp @s ~ ~1 ~
# execute at @s if block ~ ~-1 ~ #penetrate run tp @s ~ ~-1 ~

# purple ash
scoreboard players operation #temp global.main = @s particle.technological_force_wave
scoreboard players operation #temp global.main %= 4 particle.technological_force_wave

# reset
execute if score @s particle.technological_force_wave matches 15.. run function particle:technological_force_wave/ground_ash/end