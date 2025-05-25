scoreboard players set #world_area.main.safe_zone.amysis_temp global.main 1

kill 00000002-0000-0016-0000-003300000005
execute as @n[tag=aj.amysis.root,limit=1] run function animated_java:amysis/remove/this

execute positioned 752 146 993 rotated -145 0 run function animated_java:amysis/summon {args: {animation: 'idle', start_animation: true}}

execute positioned 752 146 993 run tag @n[tag=aj.amysis.root,distance=..2] add world_area.main.safe_zone.amysis

summon interaction 752 146 993 {Tags:["world_area.main.safe_zone.amysis.act","interaction.sound.default"],height:2,UUID:[I; 2, 22, 51, 5]}