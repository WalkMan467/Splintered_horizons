tp @e[tag=weapon.ruins_of_the_finality.effect.chain] ~ -255 ~
kill @e[tag=weapon.ruins_of_the_finality.effect.chain]

title @s times 0 0 10
title @s title {"translate":"\uE000","font":"minecraft:screen"}
title @s subtitle ""

kill @e[type=creeper,tag=aj.stellar_animation.camera_2]


effect give @s speed 7 1 false

scoreboard players set @s player.animation.lock 40

playsound minecraft:entity.warden.sonic_charge voice @a ~ ~1 ~ 1 1.65

tag @s add weapon.ruins_of_the_finality.animation.player
# Animation
function animated_java:ruins_of_the_finality_skill/summon {args: {animation: 'skills', start_animation: true}}

# Set GameMode
gamemode spectator @s
spectate @n[tag=aj.ruins_of_the_finality_skill.camera]