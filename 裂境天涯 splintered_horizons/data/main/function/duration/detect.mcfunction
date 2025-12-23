# execute unless score @n[type=!player,tag=!aj.global.root,tag=!aj.global.camera,tag=!aj.display] duration matches -2147483648..2147483647 run return 0

# Entity Lifetime Timer
execute as @e[sort=arbitrary,type=!player,tag=!aj.global.root,tag=!aj.global.camera,tag=!aj.display] at @s run function main:duration/main