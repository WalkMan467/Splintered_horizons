scoreboard players set @s armor.black_hole.boots.power 0

execute if score @s main.3d_dizziness matches 1 run function particle:space_rupture/use
execute if score @s main.3d_dizziness matches 1 run return 0

title @s times 0 0 10
title @s title {"translate":"\uE000","font":"minecraft:screen"}
title @s subtitle ""

playsound minecraft:entity.warden.sonic_charge voice @a ~ ~1 ~ 1 1.65

tag @s add armor.black_hole.animation.boots.player

scoreboard players set @s[gamemode=adventure] main.gamemode 1
scoreboard players set @s[gamemode=creative] main.gamemode 2
scoreboard players set @s[gamemode=spectator] main.gamemode 3
scoreboard players set @s[gamemode=survival] main.gamemode 4

function animated_java:stellar/summon {args:{}}

gamemode spectator @s
spectate @n[tag=aj.stellar.camera]

execute as @n[tag=aj.stellar.root] run function animated_java:stellar/animations/boots_of_the_black_hole/play