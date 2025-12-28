tp @e[tag=weapon.ruins_of_the_finality.effect.chain] ~ -255 ~
kill @e[tag=weapon.ruins_of_the_finality.effect.chain]


execute \
    as @e[tag=ruins_of_the_end.skills_2.play] run \
function animated_java:ruins_of_the_end_skill/remove/this

tag @s remove weapon.ruins_of_the_finality.screen
tag @s add animation
scoreboard players set @s weapon.ruins_of_the_finality.blade.animation 27
scoreboard players set @s player.animation.lock 27

function players:hide/true {duration:27}

scoreboard players set @s weapon.ruins_of_the_finality.effect.count 0
scoreboard players set @s weapon.ruins_of_the_finality.effect.count.delay 0

title @s times 0 0 10
title @s title {"translate":"\uE000","font":"minecraft:screen"}
title @s subtitle ""

tag @s remove weapon.ruins_of_the_finality.animation.player
kill @e[type=creeper,tag=aj.stellar_animation.camera_2]


playsound minecraft:entity.warden.sonic_charge voice @a ~ ~1 ~ 1 1.65

tag @s add weapon.ruins_of_the_finality.animation.player
# Animation
function animated_java:ruins_of_the_finality_skill/summon {args: {animation: 'skills', start_animation: true}}

# Set GameMode
gamemode spectator @s
spectate @n[tag=aj.ruins_of_the_finality_skill.camera]