# timer
scoreboard players add @s particle.otherworld_star 1

# speed
execute if score @s particle.otherworld_star matches ..10 run tp @s ^ ^ ^1
execute at @s unless block ~ ~ ~ #penetrate run tp @s ~ ~1 ~

execute at @s if block ~ ~-1 ~ #penetrate run tp @s ~ ~-1 ~

# text
execute store result score #temp global.main run random value 0..3


execute if score @s particle.otherworld_star matches ..10 if score #temp global.main matches 0 run data merge entity @s {transformation:{left_rotation:[-0.2299779f,0.1463426f,-0.34809434f,0.8969529f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[-0.8472992f,-0.13539907f,-0.117265314f]}}
execute if score @s particle.otherworld_star matches ..10 if score #temp global.main matches 1 run data merge entity @s {transformation:{left_rotation:[0.50460625f,0.77708906f,0.363513f,-0.09676473f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[-0.2995263f,-0.8014896f,-0.13378474f]}}
execute if score @s particle.otherworld_star matches ..10 if score #temp global.main matches 2 run data merge entity @s {transformation:{left_rotation:[-0.46188188f,0.8166798f,0.23923601f,-0.24993092f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.85622936f,0.12763011f,-0.024131775f]}}
execute if score @s particle.otherworld_star matches ..10 if score #temp global.main matches 3 run data merge entity @s {transformation:{left_rotation:[0.2700224f,-0.42945236f,-0.25225452f,0.8240306f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.07815406f,0.07454702f,-0.85926455f]}}

# Color Change

execute if score @s particle.otherworld_star matches 5 run data modify entity @s block_state.Name set value "minecraft:cyan_stained_glass"
execute if score @s particle.otherworld_star matches 10 run data modify entity @s block_state.Name set value "minecraft:light_blue_stained_glass"

# particle
execute if score @s particle.otherworld_star matches 0..6 run particle block{block_state:"minecraft:cyan_stained_glass"} ~ ~ ~ 0.5 0.5 0.5 0 1 normal @a
execute if score @s particle.otherworld_star matches 6..12 run particle block{block_state:"minecraft:light_blue_stained_glass"} ~ ~ ~ 0.5 0.5 0.5 0 1 normal @a

execute if score @s particle.otherworld_star matches 10 run data merge entity @s {start_interpolation:1,interpolation_duration:2,transformation: {scale: [0.0f, 0.0f, 0.0f]}}

# purple ash
scoreboard players operation #temp global.main = @s particle.otherworld_star
scoreboard players operation #temp global.main %= 4 particle.otherworld_star

# reset
execute if score @s particle.otherworld_star matches 15.. run function particle:otherworld_star/ground_ash/end