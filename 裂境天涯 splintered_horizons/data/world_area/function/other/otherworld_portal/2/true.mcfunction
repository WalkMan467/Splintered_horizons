scoreboard players set #world_area.other.otherworld_portal.2_temp global.main 1

summon minecraft:interaction 162 90.9 -427 {height:4.2,width:1.001,UUID:[I;21,2,2,1]}
summon minecraft:interaction 161 90.9 -427 {height:4.2,width:1.001,UUID:[I;21,2,2,2]}
summon minecraft:interaction 160 90.9 -427 {height:4.2,width:1.001,UUID:[I;21,2,2,3]}
summon minecraft:interaction 159 90.9 -427 {height:4.2,width:1.001,UUID:[I;21,2,2,4]}

scoreboard players reset #world_area.other.otherworld_portal.2 world_area.other.otherworld_portal.delay

kill 000000d4-0000-0002-0000-000100000033

execute if score #world_area.other.otherworld_portal.2.lock global.main matches 1.. run function world_area:other/otherworld_portal/2/lock/run
execute if score #world_area.other.otherworld_portal.2.lock global.main matches 1.. run return 0

execute positioned 161.0 91 -427 rotated 0 0 in minecraft:overworld as @e[tag=aj.portal.root,distance=..3] run function animated_java:portal/remove/this

execute positioned 161.0 91 -427 rotated 0 0 in minecraft:overworld run function animated_java:portal/summon {args: {animation: 'spawn', start_animation: true}}

scoreboard players set #world_area.other.otherworld_portal.2 world_area.other.otherworld_portal.delay 0
