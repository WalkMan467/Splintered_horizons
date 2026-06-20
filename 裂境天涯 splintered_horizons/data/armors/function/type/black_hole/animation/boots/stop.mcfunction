# ===================================================

# stop



    ## Guide [ function armors:type/black_hole/animation/boots/stop ] >>> stop

    ## Guide [ function armors:type/black_hole/animation/boots/play ] >>> play

    ## Guide [ function armors:type/black_hole/animation/boots/reset ] >>> reset



# ===================================================



# Stop the Animation



title @s title ""

title @s subtitle {"translate": "player.stop_animation","bold":true,"color":"dark_red"}

title @s times 10 20 20



playsound minecraft:entity.zombie_villager.cure voice @s ~ ~1 ~ 1 2



tag @s add armor.black_hole.animation.stop.user





execute \
    as @e[tag=aj.stellar.root,tag=aj.stellar.animation.boots_of_the_black_hole.playing,tag=!delete,distance=..10,limit=1,type=item_display] \
    if score @p[tag=armor.black_hole.animation.stop.user] player.id = @s armor.black_hole.boots.aj.id run \
tag @s add delete



execute \
    as @e[tag=aj.stellar.camera,tag=aj.stellar.camera.camera3,tag=!delete,distance=..10,limit=1,type=item_display] \
    if score @p[tag=armor.black_hole.animation.stop.user] player.id = @s armor.black_hole.boots.aj.id run \
tag @s add delete



execute \
    as @e[tag=armor.black_hole.effect,tag=!delete,distance=..10,limit=1,type=area_effect_cloud] \
    if score @p[tag=armor.black_hole.animation.stop.user] player.id = @s armor.black_hole.boots.aj.id run \
tag @s add delete



tag @s remove armor.black_hole.animation.stop.user



function armors:type/black_hole/animation/boots/reset





execute \
    as @n[distance=..10,tag=aj.stellar.root,tag=aj.stellar.animation.boots_of_the_black_hole.playing,tag=delete,type=item_display] at @s run \
function aj:stellar/remove/this

kill @n[tag=aj.stellar.camera,tag=aj.stellar.camera.camera3,tag=delete,distance=..10,type=item_display]

kill @n[tag=armor.black_hole.effect,tag=delete,distance=..10,type=area_effect_cloud]





execute \
    unless entity @s[tag=forced_interrupt_animation] run \
scoreboard players set @s armor.black_hole.boots.cd 0

scoreboard players set @s player.animation.lock 0

scoreboard players set @s armor.black_hole.boots.effect 0



stopsound @s voice minecraft:entity.warden.sonic_charge

stopsound @s voice minecraft:voice.time_and_space_portal_open