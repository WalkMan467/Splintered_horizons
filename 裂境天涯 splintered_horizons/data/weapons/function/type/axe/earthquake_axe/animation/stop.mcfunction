# ===================================================
# Black Hole Boots Main Function

    ## Guide [ function armors:type/black_hole/animation/boots/stop ] >>> Animation Stop
    ## Guide [ function armors:type/black_hole/animation/boots/play ] >>> Play Animation
    ## Guide [ function armors:type/black_hole/animation/boots/reset ] >>> Animation End
    ## Guide [ function armors:type/black_hole/animation/boots/main ] >>> Animation Main

# ===================================================
# Stop the Animation

title @s title ""
title @s subtitle {"translate": "player.stop_animation","bold":true,"color":"dark_red"}
title @s times 10 20 20

playsound minecraft:entity.zombie_villager.cure voice @s ~ ~1 ~ 1 2

tag @s add weapon.earthquake_axe.stop.user

execute as @e[type=item_display,tag=aj.stellar_animation.root,tag=aj.stellar_animation.animation.earthquake_axe.playing,tag=!delete,distance=..10,limit=1] if score @a[sort=arbitrary,limit=1,tag=armor.black_hole.animation.stop.user] player.id = @s weapon.earthquake_axe.user.id run tag @s add delete
execute as @e[type=item_display,tag=aj.stellar_animation.camera,tag=aj.stellar_animation.camera.camera3,tag=!delete,distance=..10,limit=1] if score @a[sort=arbitrary,limit=1,tag=armor.black_hole.animation.stop.user] player.id = @s weapon.earthquake_axe.user.id run tag @s add delete

tag @s remove weapon.earthquake_axe.stop.user

execute unless entity @s[tag=forced_interrupt_animation] run scoreboard players operation @s player.finality_tunder = @s player.finality_tunder.temp

function weapons:type/axe/earthquake_axe/animation/reset

execute as @n[type=item_display,distance=..10,tag=aj.stellar_animation.root,tag=aj.stellar_animation.animation.earthquake_axe.playing,tag=delete] at @s run function animated_java:stellar_animation/remove/this
kill @n[tag=aj.stellar_animation.camera,tag=aj.stellar_animation.camera.camera3,tag=delete,type=item_display,distance=..10]

execute unless entity @s[tag=forced_interrupt_animation] run scoreboard players set @s player.ultimate 0
scoreboard players set @s player.animation.lock 0

stopsound @s voice minecraft:entity.warden.sonic_charge
stopsound @s voice minecraft:voice.attack_sound
stopsound @s voice minecraft:voice.ruins_of_the_end_hurt
stopsound @s voice minecraft:entity.warden.sonic_boom
stopsound @s voice minecraft:entity.generic.explode
stopsound @s voice minecraft:entity.lightning_bolt.thunder