scoreboard players set #world_area.main.safe_zone.elina_temp global.main 1

kill 00000002-0000-0016-0000-003300000016
execute as @n[tag=aj.elina.root,limit=1] run function animated_java:elina/remove/this

function story:story_trigger_reset

execute positioned 741 145 968 rotated 45 0 run function animated_java:elina/summon {args: {animation: 'idle', start_animation: true}}

execute positioned 741 145 968 run tag @n[tag=aj.elina.root,distance=..2] add world_area.main.safe_zone.elina

summon interaction 741 145 968 {Tags:["world_area.main.safe_zone.elina.act","interaction.sound.default"],height:2,UUID:[I; 2, 22, 51, 22]}

scoreboard players set story.safe_area.elina.1 story.safe_area 1