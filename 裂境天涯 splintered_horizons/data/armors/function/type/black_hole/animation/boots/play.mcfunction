tag @s add animation

scoreboard players set @s armor.black_hole.boots.cd 60
scoreboard players set @a player.animation.lock 37

scoreboard players set @s armor.black_hole.boots.effect 20
playsound minecraft:entity.warden.sonic_charge voice @a ~ ~1 ~ 1 1.65

attribute @s movement_speed modifier add armor.black_hole.animation.boots -1 add_multiplied_base
attribute @s jump_strength modifier add armor.black_hole.animation.boots -1 add_multiplied_base

title @s times 0 0 10
title @s title {"translate":"\uE000","font":"minecraft:screen"}
title @s subtitle ""

execute if score @s main.3d_dizziness matches 1 run return 0

tag @s add armor.black_hole.animation.boots.player

scoreboard players set @s[gamemode=adventure] main.gamemode 1
scoreboard players set @s[gamemode=creative] main.gamemode 2
scoreboard players set @s[gamemode=spectator] main.gamemode 3
scoreboard players set @s[gamemode=survival] main.gamemode 4

function animated_java:stellar_animation/summon {args: {animation: 'boots_of_the_black_hole', start_animation: true}}

gamemode spectator @s
spectate @n[tag=aj.stellar_animation.camera]