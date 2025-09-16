
$summon marker ^ ^ ^$(strength) {Tags:[mob.move,temp]}

execute store result score #x1 wma.main run data get entity @s Pos[0] 1000
execute store result score #y1 wma.main run data get entity @s Pos[1] 1000
execute store result score #z1 wma.main run data get entity @s Pos[2] 1000

execute store result score #x2 wma.main run data get entity @e[tag=temp,limit=1] Pos[0] 1000
execute store result score #y2 wma.main run data get entity @e[tag=temp,limit=1] Pos[1] 1000
execute store result score #z2 wma.main run data get entity @e[tag=temp,limit=1] Pos[2] 1000

scoreboard players operation #x2 wma.main -= #x1 wma.main
scoreboard players operation #y2 wma.main -= #y1 wma.main
scoreboard players operation #z2 wma.main -= #z1 wma.main

execute store result entity @s Motion[0] double 0.0001 run scoreboard players get #x2 wma.main
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get #y2 wma.main
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get #z2 wma.main

kill @e[type=marker,tag=temp,limit=1]