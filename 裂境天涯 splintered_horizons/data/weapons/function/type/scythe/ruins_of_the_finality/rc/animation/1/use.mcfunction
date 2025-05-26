kill @e[tag=weapon.ruins_of_the_finality.effect.chain]

title @s times 0 0 20
title @s title {"translate":"\uE000","font":"minecraft:screen"}
title @s subtitle ""

tag @s add animation

tag @s add weapon.ruins_of_the_finality.input.disable
effect give @s speed 7 1 false

scoreboard players set @s player.animation.lock 110

playsound minecraft:entity.warden.sonic_charge voice @a ~ ~1 ~ 1 1.65

tag @s add weapon.ruins_of_the_finality.animation.player

# Get GameMode
scoreboard players set @s[gamemode=adventure] main.gamemode 1
scoreboard players set @s[gamemode=creative] main.gamemode 2
scoreboard players set @s[gamemode=spectator] main.gamemode 3
scoreboard players set @s[gamemode=survival] main.gamemode 4

# Animation
function animated_java:stellar_animation/summon {args: {animation: 'ruins_of_the_finality_2', start_animation: true}}

# Set GameMode
gamemode spectator @s
execute unless score @s main.3d_dizziness matches 1.. run spectate @n[tag=aj.stellar_animation.camera]
execute if score @s main.3d_dizziness matches 1.. run spectate @n[tag=3d_dizziness]