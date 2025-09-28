scoreboard players set #world_area.other.otherworld_portal.4_temp global.main 1

summon minecraft:interaction 949 87.99 492 {height:4.2,width:1.001,UUID:[I;21,2,2,21]}
summon minecraft:interaction 949 87.99 493 {height:4.2,width:1.001,UUID:[I;21,2,2,12]}
summon minecraft:interaction 949 87.99 494 {height:4.2,width:1.001,UUID:[I;21,2,2,51]}
summon minecraft:interaction 949 87.99 495 {height:4.2,width:1.001,UUID:[I;21,2,2,212]}

scoreboard players reset #world_area.other.otherworld_portal.4 world_area.other.otherworld_portal.delay

kill 000000d4-0000-0002-0000-000100000037

execute if score #world_area.other.otherworld_portal.4.lock global.main matches 1.. run function world_area:other/otherworld_portal/4/lock/run
execute if score #world_area.other.otherworld_portal.4.lock global.main matches 1.. run return 0

execute positioned 949.50 88.00 494.00 rotated -90 0 in minecraft:overworld as @e[tag=aj.portal.root,distance=..3] run function animated_java:portal/remove/this

execute positioned 949.50 88.00 494.00 rotated -90 0 in minecraft:overworld run function animated_java:portal/summon {args: {animation: 'spawn', start_animation: true}}

scoreboard players set #world_area.other.otherworld_portal.4 world_area.other.otherworld_portal.delay 0
