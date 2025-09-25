tag @s add armor.black_hole.animation.stop.user

execute as @e[type=item_display,tag=aj.stellar_animation.root,tag=aj.stellar_animation.animation.boots_of_the_black_hole.playing,tag=!delete,distance=..10,limit=1] if score @p[tag=armor.black_hole.animation.stop.user] player.id = @s armor.black_hole.boots.aj.id run tag @s add delete
execute as @e[type=item_display,tag=aj.stellar_animation.camera,tag=aj.stellar_animation.camera.camera3,tag=!delete,distance=..10,limit=1] if score @p[tag=armor.black_hole.animation.stop.user] player.id = @s armor.black_hole.boots.aj.id run tag @s add delete
execute as @e[type=area_effect_cloud,tag=armor.black_hole.effect,tag=!delete,distance=..10,limit=1] if score @p[tag=armor.black_hole.animation.stop.user] player.id = @s armor.black_hole.boots.aj.id run tag @s add delete

tag @s remove armor.black_hole.animation.stop.user

function armors:type/black_hole/animation/boots/reset

execute as @n[type=item_display,distance=..10,tag=aj.stellar_animation.root,tag=aj.stellar_animation.animation.boots_of_the_black_hole.playing,tag=delete] at @s run function animated_java:stellar_animation/remove/this
kill @n[tag=aj.stellar_animation.camera,tag=aj.stellar_animation.camera.camera3,tag=delete,type=item_display,distance=..10]
kill @n[type=area_effect_cloud,tag=armor.black_hole.effect,tag=delete,distance=..10]

scoreboard players set @s armor.black_hole.boots.cd 0
scoreboard players set @s player.animation.lock 0
scoreboard players set @s armor.black_hole.boots.effect 0

stopsound @s voice minecraft:entity.warden.sonic_charge
stopsound @s voice minecraft:voice.time_and_space_portal_open

title @s times 20 20 20
title @s title ""
title @s subtitle ""