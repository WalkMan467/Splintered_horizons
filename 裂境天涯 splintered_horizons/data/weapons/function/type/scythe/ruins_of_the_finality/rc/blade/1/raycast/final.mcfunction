
execute \
    as @e[distance=..3,type=!#minecraft:dummy_mob,type=!player] run \
effect give @s glowing 1 255 true
tp @p[tag=weapon.ruins_of_the_finality.blade.1.user] ~ ~ ~

execute \
    as @p[tag=weapon.ruins_of_the_finality.blade.1.user] at @s run \
function weapons:type/scythe/ruins_of_the_finality/rc/blade/1/use

function animated_java:chain_lock/summon {args: {animation: 'unlock', start_animation: true}}
function animated_java:ruins_of_the_finality_skill/summon {args: {animation: 'skills_2', start_animation: true}}

tag @e[distance=..3,type=!#minecraft:dummy_mob,type=!player] add dmger
tag @p[tag=weapon.ruins_of_the_finality.blade.1.user] add atker
scoreboard players set @p[tag=atker,tag=weapon.ruins_of_the_finality.blade.1.user] atk 150

execute \
    as @p[tag=weapon.ruins_of_the_finality.blade.1.user] run \
function dmg_formula:weapons/type/scythe/ruins_of_the_finality/calculate

particle minecraft:flame ~ ~ ~ 0 0 0 0.5 100
playsound minecraft:voice.ruins_of_the_end_hurt voice @a ~ ~1 ~ 1 0.75
playsound minecraft:voice.deep_base voice @a ~ ~1 ~ 1 1

scoreboard players set #temp weapon.ruins_of_the_finality.effect.range 0
tag @p[tag=weapon.ruins_of_the_finality.blade.1.user] remove weapon.ruins_of_the_finality.blade.1.user