advancement revoke @s only world_area:chapter_2/temple_of_light/bossfight/in

execute as @a at @s if biome ~ ~ ~ world_area:chapter_2/bossfight/normal run return 0

kill 000009ed-0000-007b-0000-000100000001
execute positioned 912 60 2018 as @n[distance=..3,type=item_display,tag=aj.global.root] run function animated_java:boss_1/remove/this