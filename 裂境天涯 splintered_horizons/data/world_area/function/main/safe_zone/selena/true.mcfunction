scoreboard players set #world_area.main.safe_zone.selena_temp global.main 1

kill 00000002-0000-0016-0000-003300000037
execute as @n[tag=aj.selena.root,limit=1,distance=..3] run function animated_java:selena/remove/this

execute positioned 766 145 966 rotated 135 0 run function animated_java:selena/summon {args: {animation: 'idle', start_animation: true}}

execute positioned 766 145 966 run tag @n[tag=aj.selena.root,distance=..2] add world_area.main.safe_zone.selena

summon interaction 766 145 966 {Tags:["world_area.main.safe_zone.selena.act","interaction.sound.default"],height:2,UUID:[I; 2, 22, 51, 55]}

scoreboard players set story.safe_area.selena.1 story.safe_area 1