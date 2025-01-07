# timer
scoreboard players add @s particle.space_rupture 1

# speed
execute if score @s particle.space_rupture matches ..12 run tp @s ^ ^ ^-0.8
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

# reset
execute if score @s particle.space_rupture matches 42.. run kill @s