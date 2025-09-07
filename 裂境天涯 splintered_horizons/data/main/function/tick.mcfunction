execute store result score #difficulty global.main run difficulty

execute unless score #difficulty global.main matches 1.. run kill @s[tag=monster.marker,type=marker]


execute as @e[type=!player,tag=!aj.global.root,tag=!aj.global.camera,tag=!aj.display] at @s run function main:guide/main

# Player Guide

execute as @a[tag=!aj.global.root,tag=!aj.global.camera,tag=!aj.display] at @s run function main:guide/player