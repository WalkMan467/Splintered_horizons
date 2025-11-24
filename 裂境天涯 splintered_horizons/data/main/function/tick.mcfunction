execute store result score #difficulty global.main run difficulty
execute store result score #player.count global.main if entity @a

execute if score #game.start global.main matches 1.. run advancement grant @a only players:new_player

execute at 00000079-0000-0018-0000-000200000209 run particle dust{color:[1.000,0.957,0.957],scale:1} ~ ~0.5 ~ 0.25 0.25 0.25 0 1 force @a

execute in minecraft:overworld run setworldspawn 9987 165 9978

execute unless score #difficulty global.main matches 1.. if entity @n[type=marker,tag=monster.marker] run kill @e[tag=monster.marker,type=marker]

# Monsters
function monsters:guide

# System
function system:main

# Duration Detect
function main:duration/detect

# Tree of World Memory
function system:tree_of_world_memory/main

# Player Guide

execute as @a at @s run function main:guide/player

# Timer
function #main:timer