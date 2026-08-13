scoreboard players add @s monster.soul_sharpshooter.timer 1

rotate @s ~ 0

tag @a add temp
tag @a[tag=!animation,gamemode=spectator] remove temp
tag @a[gamemode=creative] remove temp
tag @a[gamemode=!creative,gamemode=!spectator,gamemode=!adventure,gamemode=!survival] remove temp

execute \
    as @a[tag=temp] \
    if score @s sys.dummy_mob matches 1.. run \
tag @s remove temp

execute \
    if entity @p[sort=arbitrary,distance=..1,tag=temp] run \
function monsters:chapter_2/soul_sharpshooter/2/key/on_hit_player

execute \
    facing entity @p[tag=temp,distance=..20] feet run \
tp @s ^ ^ ^0.15 facing entity @p[tag=temp,distance=..20] feet

tag @a remove temp

particle minecraft:cloud ~ ~3 ~ 0.5 0.5 0.5 0 1 normal @a
particle ominous_spawning ~ ~3 ~ 0.5 0.5 0.5 0 5 normal @a

execute \
    if score @s monster.soul_sharpshooter.timer matches 100.. run \
function monsters:chapter_2/soul_sharpshooter/2/key/remove/1