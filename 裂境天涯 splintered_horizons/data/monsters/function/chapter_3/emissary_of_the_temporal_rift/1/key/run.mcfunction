particle gust_emitter_large ~ ~ ~ 0 0 0 0 1 force @a
playsound minecraft:entity.generic.explode voice @a ~ ~ ~ 1 1

tag @a[distance=..4] add temp
tag @a[tag=!animation,gamemode=spectator,distance=..4,tag=temp] remove temp
execute as @a[distance=..4,tag=temp] if score @s entity.dummy_mob matches 1.. run tag @s remove temp

execute as @a[distance=..4,tag=temp] at @s run function cse:status_effects/apply/monsters/emissary_of_the_temporal_rift/key/slowness/use {duration:200,base:0.1, value:0.1,max:0.5}

tag @s add user.temp

execute as @a[distance=..4,tag=temp] run damage @s 5 weapons:bypasses_cooldown by @n[type=item_display,tag=user.temp]

tag @s remove user.temp
tag @a remove temp

scoreboard players reset #monster.emissary_of_the_temporal_rift.key.fx particle
function monsters:chapter_3/emissary_of_the_temporal_rift/1/key/fx