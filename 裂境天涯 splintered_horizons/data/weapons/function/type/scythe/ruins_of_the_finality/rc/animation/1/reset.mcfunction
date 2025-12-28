# Reset the animation
kill @e[type=creeper,tag=aj.stellar_animation.camera_2]

scoreboard players set @a weapon.ruins_of_the_finality.effect.count 4

title @s subtitle [{"translate":"weapon.ruins_of_the_finality.tips.1","color":"gray","with": [{"keybind":"key.jump","underlined":true,"color":"dark_green"}]}]

tag @s remove weapon.ruins_of_the_finality.input.disable
tag @s add weapon.ruins_of_the_finality.screen

effect clear @s darkness

execute \
    positioned ^ ^ ^-6 run \
function particle:ruins_of_the_finality_rupture/use

execute \
    positioned ^ ^ ^-6 run \
scoreboard players set @e[type=!#dummy_mob,type=!player] monster.skill.silence 100

execute \
    positioned ^ ^ ^-6 run \
effect give @e[type=!#dummy_mob,type=!player] slowness 5 255 true


execute \
    positioned ^ ^ ^-6 run \
summon area_effect_cloud ~ ~ ~ {Tags:["weapon.ruins_of_the_finality.effect"],custom_particle:{type:"block",block_state:"air"},Radius:0,Duration:100}
summon creeper ^ ^10 ^ {DeathLootTable:"",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["aj.stellar_animation.camera_2","summon"],active_effects:[{id:"minecraft:invisibility",amplifier:255,duration:-1,show_particles:0b,show_icon:0b,ambient:0b}],attributes:[{id:"minecraft:scale",base:0.00001}]}
scoreboard players add #screen weapon.ruins_of_the_finality.id 1
scoreboard players operation @n[tag=aj.stellar_animation.camera_2,tag=summon] weapon.ruins_of_the_finality.id = #screen weapon.ruins_of_the_finality.id
scoreboard players operation @s weapon.ruins_of_the_finality.id = #screen weapon.ruins_of_the_finality.id



execute \
    as @n[tag=summon,type=creeper] at @s facing entity @n[tag=aj.stellar_animation.root] eyes run \
rotate @s ~180 0

execute \
    as @n[tag=summon,type=creeper] at @s run \
tp @s ^ ^ ^12

rotate @n[tag=summon,type=creeper] ~ 60

spectate @n[tag=aj.stellar_animation.camera_2,tag=summon]
title @s title {"text":"\uE002","font":"screen"}
title @s times 20 40 20

tag @n[tag=aj.stellar_animation.camera_2,tag=summon] remove summon