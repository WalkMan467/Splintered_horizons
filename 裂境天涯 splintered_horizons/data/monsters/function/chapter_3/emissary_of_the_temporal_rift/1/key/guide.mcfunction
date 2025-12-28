scoreboard players remove @s monster.emissary_of_the_temporal_rift.key.timer 1

rotate @s ~ 0

tag @a add temp
tag @a[tag=!animation,gamemode=spectator] remove temp

execute \
    as @a[tag=temp] \
    if score @s entity.dummy_mob matches 1.. run \
tag @s remove temp


execute facing entity @p[tag=temp,distance=0.25..] feet run \
tp @s ^ ^ ^0.15

tag @a remove temp

particle minecraft:cloud ~ ~3 ~ 0.5 0.5 0.5 0 1 normal @a
particle ominous_spawning ~ ~3 ~ 0.5 0.5 0.5 0 5 normal @a



execute \
    if score @s monster.emissary_of_the_temporal_rift.key.timer matches 220 run \
function monsters:chapter_3/emissary_of_the_temporal_rift/1/key/tips

execute \
    if score @s monster.emissary_of_the_temporal_rift.key.timer matches 200 run \
function monsters:chapter_3/emissary_of_the_temporal_rift/1/key/run


execute \
    if score @s monster.emissary_of_the_temporal_rift.key.timer matches 120 run \
function monsters:chapter_3/emissary_of_the_temporal_rift/1/key/tips

execute \
    if score @s monster.emissary_of_the_temporal_rift.key.timer matches 100 run \
function monsters:chapter_3/emissary_of_the_temporal_rift/1/key/run


execute \
    if score @s monster.emissary_of_the_temporal_rift.key.timer matches 20 run \
function monsters:chapter_3/emissary_of_the_temporal_rift/1/key/tips

execute \
    if score @s monster.emissary_of_the_temporal_rift.key.timer matches 0 run \
function monsters:chapter_3/emissary_of_the_temporal_rift/1/key/run


execute \
    if score @s monster.emissary_of_the_temporal_rift.key.timer matches ..0 run \
kill @s