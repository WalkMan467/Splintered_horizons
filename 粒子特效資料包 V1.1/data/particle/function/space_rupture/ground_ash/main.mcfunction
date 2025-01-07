# timer
scoreboard players add @s particle.space_rupture 1

# speed
execute if score @s particle.space_rupture matches ..12 run tp @s ^ ^ ^0.8
execute at @s unless block ~ ~ ~ air run tp @s ~ ~1 ~
execute at @s if block ~ ~-1 ~ air run tp @s ~ ~-1 ~

# text
execute store result score #temp global.main run random value 0..7

execute if score #temp global.main matches 0 run data merge entity @s {text:'{"text":"■■■■","bold":true}'}
execute if score #temp global.main matches 1 run data merge entity @s {text:'{"text":"■■■■■","bold":true}'}
execute if score #temp global.main matches 2 run data merge entity @s {text:'{"text":"■■■■■■","bold":true}'}
execute if score #temp global.main matches 3 run data merge entity @s {text:'{"text":"■■■■■■■","bold":true}'}
execute if score #temp global.main matches 4 run data merge entity @s {text:'{"text":"■■■■■■■■","bold":true}'}
execute if score #temp global.main matches 5 run data merge entity @s {text:'{"text":"■■■■■■■■■","bold":true}'}
execute if score #temp global.main matches 6 run data merge entity @s {text:'{"text":"■■■■■■■■■■","bold":true}'}
execute if score #temp global.main matches 7 run data merge entity @s {text:'{"text":"■■■■■■■■■■■","bold":true}'}

# particle
execute if score @s particle.space_rupture matches 0..6 run particle minecraft:dust{color:[0.984, 0.549, 1.0], scale:3.0} ~ ~ ~ 0 0 0 0 1 force
execute if score @s particle.space_rupture matches 6..12 run particle minecraft:dust{color:[0.529, 0.267, 0.745], scale:3.0} ~ ~ ~ 0 0 0 0 1 force
execute if score @s particle.space_rupture matches 13.. run particle minecraft:dust{color:[0.22, 0.302, 0.624], scale:3.0} ~ ~ ~ 0 0 0 0 1 force
execute if score @s particle.space_rupture matches 13.. run particle minecraft:dust{color:[0.529, 0.267, 0.745], scale:3.0} ^ ^ ^-1 0.5 0 0.5 0 1 force

# purple ash
scoreboard players operation #temp global.main = @s particle.space_rupture
scoreboard players operation #temp global.main %= 4 particle.space_rupture
execute if score #temp global.main matches 1 run function particle:space_rupture/purple_ash/summon

# reset
execute if score @s particle.space_rupture matches 42.. run function particle:space_rupture/ground_ash/end