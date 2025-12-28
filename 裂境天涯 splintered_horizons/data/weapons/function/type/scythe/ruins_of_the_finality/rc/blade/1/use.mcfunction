tag @s add animation
tag @s add weapon.ruins_of_the_finality.blade.1.animation

scoreboard players set @s weapon.ruins_of_the_finality.blade.animation 11
scoreboard players set @s player.animation.lock 11

title @s title {"text":"\uE000","font": "screen"}
title @s times 0 0 10


execute rotated ~180 0 run \
function animated_java:ruins_of_the_finality_skill/summon {args: {animation: 'skills_3', start_animation: true}}

function animated_java:chain_lock/summon {args: {animation: 'unlock', start_animation: true}}

function players:hide/true {duration:40}

spectate @n[tag=aj.ruins_of_the_finality_skill.camera,type=minecraft:item_display]