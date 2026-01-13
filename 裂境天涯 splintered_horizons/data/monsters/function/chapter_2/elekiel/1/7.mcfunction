
execute \
    positioned 912 60 3018 \
    as @e[sort=arbitrary,tag=aj.global.camera,distance=..60,type=#dummy_mob] at @s \
    if biome ~ ~ ~ world_area:chapter_2/bossfight/fire run \
tp @s ~ ~ ~-1000

execute \
    positioned 912 60 3018 \
    as @e[sort=arbitrary,tag=aj.global.root,distance=..60,type=item_display] at @s \
    if biome ~ ~ ~ world_area:chapter_2/bossfight/fire run \
tp @s ~ ~ ~-1000

execute \
    positioned 912 60 3018 \
    as @e[tag=monster.elekiel.3.player_pos.save,distance=..60,type=area_effect_cloud] at @s \
    if biome ~ ~ ~ world_area:chapter_2/bossfight/fire run \
tp @s ~ ~ ~-1000

execute \
    positioned 912 60 3018 \
    as 00000015-0000-0002-0000-003700000080 at @s \
    if biome ~ ~ ~ world_area:chapter_2/bossfight/fire run \
tp @s ~ ~ ~-1000


execute \
    positioned 912 60 3018 \
    as @e[distance=..60,type=minecraft:experience_orb] at @s \
    if biome ~ ~ ~ world_area:chapter_2/bossfight/fire run \
kill @s

execute \
    positioned 912 60 3018 \
    as @e[distance=..60,type=#arrows] at @s \
    if biome ~ ~ ~ world_area:chapter_2/bossfight/fire run \
kill @s


execute \
    positioned 912 60 3018 \
    as @e[tag=monsters.chapter_2.elekiel.1.tree.monsters,distance=..60,type=!#minecraft:dummy_mob] at @s \
    if biome ~ ~ ~ world_area:chapter_2/bossfight/fire run \
function monsters:chapter_2/elekiel/1/void

execute \
    positioned 912 60 3018 \
    as @e[tag=monsters.soul_tree_remnant,distance=..60,type=!#minecraft:dummy_mob] at @s \
    if biome ~ ~ ~ world_area:chapter_2/bossfight/fire run \
function monsters:chapter_2/elekiel/1/void


execute \
    as @a at @s \
    if biome ~ ~ ~ #world_area:chapter_2_bossfight run \
advancement grant @s only monsters:chapter_2/elekiel/1/battlefield/normal


execute \
    if biome ~ ~ ~ world_area:chapter_2/bossfight/fire run \
tp @s 912 60 2018

data modify entity @s NoAI set value 0b