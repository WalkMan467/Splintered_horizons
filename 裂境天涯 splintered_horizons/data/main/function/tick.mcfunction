execute store result score #difficulty global.main run difficulty

execute in minecraft:overworld run setworldspawn 9987 165 9978

execute unless score #difficulty global.main matches 1.. if entity @n[type=marker,tag=monster.marker] run kill @e[tag=monster.marker,type=marker]

# Monsters
function monsters:guide

# System
function system:main

function main:duration/detect

# Tree of World Memory
function system:tree_of_world_memory/main

# Player Guide

execute as @a[tag=!aj.global.root,tag=!aj.global.camera,tag=!aj.display] at @s run function main:guide/player

function #main:timer