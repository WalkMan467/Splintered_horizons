advancement revoke @s only world_area:chapter_2/temple_of_light/bossfight/elekiel_phase_2/bossfight_area/in

schedule clear world_area:chapter_2/temple_of_light/bossfight/bossfight_area/main

forceload add -916 2750 -916 2750

kill 00000806-0000-0002-0000-001f00000003
execute positioned -916 62 2750 as @n[distance=..1,type=item_display,tag=aj.boss_1.root] run function animated_java:boss_1/remove/this