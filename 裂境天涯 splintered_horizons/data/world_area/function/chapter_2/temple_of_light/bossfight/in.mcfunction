advancement revoke @s only world_area:chapter_2/temple_of_light/bossfight/out

execute if score #boss_area.chapter_2.elekiel global.main matches 1 run return 0
execute if entity 000009ed-0000-007b-0000-000100000001 run return 0
execute if entity 00000806-0000-0002-0000-001f00000003 run return 0

summon interaction 912 60 2018 {UUID:[I; 2541, 123, 1, 1],Tags:["world_area.chapter_2.temple_of_light.bossfight.act","bossfight.act"],height:2} 

execute positioned 912 60 2018 as @n[distance=..3,type=item_display,tag=aj.boss_1.root] run function animated_java:boss_1/remove/this
execute positioned 912 62 2018 rotated 0 0 run function animated_java:boss_1/summon {args: {animation: 'idle', start_animation: true}}

schedule function world_area:chapter_2/temple_of_light/bossfight/main 5t