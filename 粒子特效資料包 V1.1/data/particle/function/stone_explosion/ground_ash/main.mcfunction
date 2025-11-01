# timer
scoreboard players add @s particle.g-zone 1

# speed
execute if score @s particle.g-zone matches ..10 run tp @s ^ ^ ^0.8
execute at @s unless block ~ ~ ~ air run tp @s ~ ~1 ~

execute at @s if block ~ ~-1 ~ air run tp @s ~ ~-1 ~


# text
execute store result score #temp global.main run random value 0..3


execute if score #temp global.main matches 0 run data merge entity @s {transformation:{left_rotation:[-0.2299779f,0.1463426f,-0.34809434f,0.8969529f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0000006f,1.0000004f,1.0000002f],translation:[-0.8472992f,-0.13539907f,-0.117265314f]}}
execute if score #temp global.main matches 1 run data merge entity @s {transformation:{left_rotation:[0.50460625f,0.77708906f,0.363513f,-0.09676473f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.000001f,1.0000012f,1.0000008f],translation:[-0.2995263f,-0.8014896f,-0.13378474f]}}
execute if score #temp global.main matches 2 run data merge entity @s {transformation:{left_rotation:[-0.46188188f,0.8166798f,0.23923601f,-0.24993092f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0000011f,1.0000014f,1.0000012f],translation:[0.85622936f,0.12763011f,-0.024131775f]}}
execute if score #temp global.main matches 3 run data merge entity @s {transformation:{left_rotation:[0.2700224f,-0.42945236f,-0.25225452f,0.8240306f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0000012f,1.0000021f,1.0000013f],translation:[0.07815406f,0.07454702f,-0.85926455f]}}



# particle
execute if score @s particle.g-zone matches 0..6 run particle block{block_state:"minecraft:stone"} ~ ~-1 ~ 0.5 0.5 0.5 1 10 normal
execute if score @s particle.g-zone matches 1 run particle minecraft:lava ~ ~ ~ 0 0 0 0 1
execute if score @s particle.g-zone matches 6 run particle minecraft:explosion ~ ~ ~ 1 1 1 0 1
execute if score @s particle.g-zone matches 6..12 run particle minecraft:lava ~ ~ ~ 0 0 0 0 1
execute if score @s particle.g-zone matches 12 run particle minecraft:explosion ~ ~ ~ 1 1 1 0 1
execute if score @s particle.g-zone matches 13.. run particle block{block_state:"minecraft:stone"} ~ ~-1 ~ 0.5 0.5 0.5 1 10 normal
execute if score @s particle.g-zone matches 13.. run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.25 0.25 0.25 0 1

# purple ash
scoreboard players operation #temp global.main = @s particle.g-zone
scoreboard players operation #temp global.main %= 4 particle.g-zone
execute if score #temp global.main matches 1 run function particle:stone_explosion/purple_ash/summon

# reset
execute if score @s particle.g-zone matches 42.. run function particle:stone_explosion/ground_ash/end