# ===================================================
# 地震之斧 動畫 停止 / earthquake axe animation stop

    ## Guide [ function weapons:type/axe/earthquake_axe/animation/stop ] >>> 地震之斧 動畫 停止 / earthquake axe animation stop
    ## Guide [ function armors:type/black_hole/animation/boots/stop ] >>> black hole 動畫 boots 停止 / black hole animation boots stop
    ## Guide [ function armors:type/black_hole/animation/boots/play ] >>> black hole 動畫 boots play / black hole animation boots play
    ## Guide [ function players:stop_animation ] >>> stop animation / stop animation
    ## Guide [ function weapons:type/axe/earthquake_axe/animation/reset ] >>> 地震之斧 動畫 重置 / earthquake axe animation reset

# ===================================================




# Stop the Animation



title @s title ""

title @s subtitle {"translate": "player.stop_animation","bold":true,"color":"dark_red"}

title @s times 10 20 20



playsound minecraft:entity.zombie_villager.cure voice @s ~ ~1 ~ 1 2



tag @s add weapon.earthquake_axe.stop.user





execute \
    as @e[type=item_display,tag=aj.stellar.root,tag=aj.stellar.animation.earthquake_axe.playing,tag=!delete,distance=..10,limit=1] \
    if score @a[sort=arbitrary,limit=1,tag=armor.black_hole.animation.stop.user] player.id = @s weapon.earthquake_axe.user.id run \
tag @s add delete



execute \
    as @e[type=item_display,tag=aj.stellar.camera,tag=aj.stellar.camera.camera1,tag=!delete,distance=..10,limit=1] \
    if score @a[sort=arbitrary,limit=1,tag=armor.black_hole.animation.stop.user] player.id = @s weapon.earthquake_axe.user.id run \
tag @s add delete



tag @s remove weapon.earthquake_axe.stop.user





execute \
    unless entity @s[tag=forced_interrupt_animation] run \
scoreboard players operation @s player.finality_tunder = @s player.finality_tunder.temp



function weapons:type/axe/earthquake_axe/animation/reset





execute \
    as @n[distance=..10,tag=aj.stellar.root,tag=aj.stellar.animation.earthquake_axe.playing,tag=delete,type=item_display] at @s run \
function aj:stellar/remove/this

kill @n[tag=aj.stellar.camera,tag=aj.stellar.camera.camera1,tag=delete,distance=..10,type=item_display]





execute \
    unless entity @s[tag=forced_interrupt_animation] run \
scoreboard players set @s player.ultimate 0

scoreboard players set @s player.animation.lock 0



stopsound @s voice minecraft:entity.warden.sonic_charge

stopsound @s voice minecraft:voice.attack_sound

stopsound @s voice minecraft:voice.ruins_of_the_end_hurt

stopsound @s voice minecraft:entity.warden.sonic_boom

stopsound @s voice minecraft:entity.generic.explode

stopsound @s voice minecraft:entity.lightning_bolt.thunder