execute store result score #difficulty global.main run difficulty
execute store result score #player.count global.main if entity @a

execute if score #game.start global.main matches 1.. run advancement grant @a only players:new_player

execute at 00000079-0000-0018-0000-000200000209 run particle end_rod ~ ~0.5 ~ ^ ^-1000000 ^ 0.00000005 0 force @a

execute in minecraft:overworld run setworldspawn 9987 165 9978

execute unless score #difficulty global.main matches 1.. if entity @n[type=marker,tag=monster.marker] run kill @e[tag=monster.marker,type=marker]

# Monsters
function monsters:guide

# sys
function sys:main

# Duration Detect
function main:duration/detect

# Tree of World Memory
function sys:tree_of_world_memory/main

# Player Guide

execute as @a at @s run function main:guide/player

# Timer
function #main:timer