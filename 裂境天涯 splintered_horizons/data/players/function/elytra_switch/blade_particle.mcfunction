scoreboard players add #airborne.range global.main 3

particle minecraft:end_rod ^ ^ ^1 ^ ^ ^1000000 0.0000014 0 force

execute rotated ~3 ~ if score #airborne.range global.main matches ..360 run function players:elytra_switch/blade_particle
execute rotated ~3 ~ if score #airborne.range global.main matches 360 run scoreboard players reset #airborne.range global.main