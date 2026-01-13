
execute \
    as @e[distance=0..,tag=aj.global.camera,type=#dummy_mob] at @s \
    if biome ~ ~ ~ world_area:chapter_2/bossfight/normal run \
tp @s ~ ~ ~1000

execute \
    as @e[distance=0..,tag=aj.global.root,type=item_display] at @s \
    if biome ~ ~ ~ world_area:chapter_2/bossfight/normal run \
tp @s ~ ~ ~1000

execute \
    as @e[distance=0..,tag=monster.elekiel.3.player_pos.save,type=area_effect_cloud] at @s \
    if biome ~ ~ ~ world_area:chapter_2/bossfight/normal run \
tp @s ~ ~ ~1000

execute \
    as 00000015-0000-0002-0000-003700000080 at @s \
    if biome ~ ~ ~ world_area:chapter_2/bossfight/normal run \
tp @s ~ ~ ~1000


execute \
    as @a at @s \
    if biome ~ ~ ~ #world_area:chapter_2_bossfight run \
advancement grant @s only monsters:chapter_2/elekiel/1/battlefield/fire


execute \
    if biome ~ ~ ~ world_area:chapter_2/bossfight/normal run \
tp @s 912 60 3018

execute \
    if biome ~ ~ ~ world_area:chapter_2/bossfight/normal run \
data modify entity @s NoAI set value 1b