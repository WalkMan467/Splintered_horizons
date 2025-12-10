scoreboard players add @s player.ultimate 0
execute unless score @s player.ultimate matches ..0 run function weapons:ultimate_use_failed
execute unless score @s player.ultimate matches ..0 run return 0

scoreboard players operation @s player.finality_tunder.temp = @s player.finality_tunder

schedule function weapons:type/axe/earthquake_axe/animation/main 1t

scoreboard players set @s player.click.interval 20

title @s title {"text":"\uE000","font":"minecraft:screen"}
title @s subtitle ""
title @s times 0 0 10
playsound minecraft:entity.warden.sonic_charge voice @a ~ ~1 ~ 1 1.65

function players:hide/true {duration:60}

tag @s add weapon.earthquake_axe.user
tag @s add animation

scoreboard players set @s player.ultimate 500

execute if score @s player.finality_tunder matches 1.. run tag @s add weapon.earthquake_axe.finality_tunder
execute if score @s player.finality_tunder matches 1.. run scoreboard players set @s weapon.earthquake_axe.animation 60
execute unless score @s player.finality_tunder matches 1.. run scoreboard players set @s weapon.earthquake_axe.animation 30
scoreboard players operation @s player.animation.lock = @s weapon.earthquake_axe.animation

scoreboard players add #index weapon.earthquake_axe.user.id 1
scoreboard players operation @s[type=player] weapon.earthquake_axe.user.id = #index weapon.earthquake_axe.user.id

function animated_java:stellar_animation/summon {args: {animation: 'earthquake_axe', start_animation: true}}

execute as @n[tag=!aj.setup,tag=aj.stellar_animation.camera.camera3,distance=..10,type=item_display] run function weapons:type/axe/earthquake_axe/animation/camera/setup
execute as @n[tag=!aj.setup,tag=aj.stellar_animation.root,tag=aj.stellar_animation.animation.earthquake_axe.playing,distance=..10,type=item_display] run function weapons:type/axe/earthquake_axe/animation/camera/setup