
execute store result score @s sys.monster_wave.rdm run \
random value 1..3


execute \
    if score @s[tag=sys.chapter_3.1.monster_wave.point,type=area_effect_cloud] sys.monster_wave.rdm matches 1 run \
function monsters:summon/chapter_3/emissary_of_the_temporal_rift

execute \
    if score @s[tag=sys.chapter_3.1.monster_wave.point,type=area_effect_cloud] sys.monster_wave.rdm matches 2 run \
function monsters:summon/chapter_2/soul_tree_remnant

execute \
    if score @s[tag=sys.chapter_3.1.monster_wave.point,type=area_effect_cloud] sys.monster_wave.rdm matches 3 run \
function monsters:summon/chapter_3/bloody_blade_spider

execute \
    if score @s[tag=sys.chapter_3.1.monster_wave.point,type=area_effect_cloud] sys.monster_wave.rdm matches 4 run \
summon creeper ~ ~ ~

execute \
    if score @s[tag=sys.chapter_3.1.monster_wave.point,type=area_effect_cloud] sys.monster_wave.rdm matches 5 run \
function monsters:summon/chapter_3/bloody_blade_spider


execute \
    as @n[distance=..1,tag=!sys.chapter_3.1.monster_wave,type=!#minecraft:dummy_mob] at @s run \
function sys:monster_wave/chapter_3/1/summon/setup

kill @s