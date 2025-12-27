advancement revoke @s only world_area:chapter_2/temple_of_light/bossfight/elekiel_phase_2/bossfight_area/out

execute if score #boss_area.chapter_2.elekiel_phase_2 global.main matches 1 run return 0
execute if entity 00000100-0000-0080-0000-008000000005 run return 0
execute if entity 00000806-0000-0002-0000-001f00000003 run return 0

summon interaction -916 60 2750 {UUID:[I; 2054, 2, 31, 3],height:2,Tags:["bossfight.act"]}

execute positioned -916 62 2750 as @n[distance=..1,type=item_display,tag=aj.boss_1.root] run function animated_java:boss_1/remove/this
execute positioned -916 62 2750 rotated 180 0 run function animated_java:boss_1/summon {args: {animation: 'idle', start_animation: true}}


setblock -916 60 2750 light[level=15]
setblock -916 61 2750 light[level=15]

schedule function world_area:chapter_2/temple_of_light/bossfight/bossfight_area/main 5t