# ===================================================
# Black Hole Boots Main Function

    ## Guide [ function armors:type/black_hole/animation/boots/play ] >>> Play Animation
    ## Guide [ function armors:type/black_hole/animation/boots/reset ] >>> Animation End
    ## Guide [ function armors:type/black_hole/animation/boots/main ] >>> Animation Main
    ## Guide [ function armors:type/black_hole/animation/boots/stop ] >>> Animation Stop

# ===================================================
# Play Animation

tag @s add animation

scoreboard players set @s armor.black_hole.boots.cd 30
scoreboard players set @s player.animation.lock 37

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
execute unless score @n[type=item_display,tag=!delete,tag=aj.stellar_animation.root,tag=aj.stellar_animation.animation.boots_of_the_black_hole.playing,distance=..10] armor.black_hole.boots.aj.id matches -2147483648..2147483647 run scoreboard players operation @n[type=item_display,tag=aj.global.root,tag=aj.stellar_animation.animation.boots_of_the_black_hole.playing,distance=..10] armor.black_hole.boots.aj.id = @s player.id
execute unless score @n[type=item_display,tag=!delete,tag=aj.stellar_animation.camera,tag=aj.stellar_animation.camera.camera3,distance=..10] armor.black_hole.boots.aj.id matches -2147483648..2147483647 run scoreboard players operation @n[type=item_display,tag=aj.global.camera,tag=aj.stellar_animation.camera.camera3,distance=..10] armor.black_hole.boots.aj.id = @s player.id

gamemode spectator @s
spectate @n[tag=aj.stellar_animation.camera,type=item_display]