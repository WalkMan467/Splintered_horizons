particle gust_emitter_large ~ ~ ~ 0 0 0 0 1 force @a
playsound minecraft:entity.generic.explode voice @a ~ ~ ~ 1 1

tag @a[distance=..4] add temp
tag @a[tag=!animation,gamemode=spectator,distance=..4,tag=temp] remove temp

execute \
    as @a[distance=..4,tag=temp] \
    if score @s entity.dummy_mob matches 1.. run \
tag @s remove temp


execute \
    as @a[distance=..4,tag=temp] at @s run \
function cse:sys/status_effects/use {type:"add_multiplied_base", attribute:"movement_speed",duration:100,base:-0.1,value:-0.1,max:0.5, id:"emissary_of_the_temporal_rift"}

tag @s add user.temp


execute \
    as @a[distance=..4,tag=temp] run \
damage @s 5 monsters:chapter_2/emissary_of_the_temporal_rift/key/dmg by @n[tag=user.temp,distance=0..,type=item_display]

tag @s remove user.temp
tag @a remove temp

scoreboard players reset #monster.emissary_of_the_temporal_rift.key.fx particle
function monsters:chapter_3/emissary_of_the_temporal_rift/1/key/fx