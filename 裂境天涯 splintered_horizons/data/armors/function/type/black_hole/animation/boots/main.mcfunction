# ===================================================
# Black Hole Boots Main Function

    ## Guide [ function armors:type/black_hole/animation/boots/main ] >>> Animation Main
    ## Guide [ function armors:type/black_hole/animation/boots/play ] >>> Play Animation
    ## Guide [ function armors:type/black_hole/animation/boots/reset ] >>> Animation End
    ## Guide [ function armors:type/black_hole/animation/boots/stop ] >>> Animation Stop

# ===================================================
# Object ID Owner Detect; Execute Camera positioning


execute \
    as @e[tag=!delete,tag=aj.stellar_animation.camera,tag=aj.stellar_animation.camera.camera3,tag=!armor.black_hole.animation.camera,type=item_display] at @s \
    if score @a[limit=1,tag=armor.black_hole.animation.boots.player,distance=..10] player.id = @s armor.black_hole.boots.aj.id run \
tag @s add armor.black_hole.animation.camera

execute \
    if score @s[tag=armor.black_hole.animation.boots.player,tag=!armor.black_hole.animation.camera.player] player.id = @n[tag=!delete,tag=aj.stellar_animation.camera,tag=aj.stellar_animation.camera.camera3,tag=armor.black_hole.animation.camera,type=item_display,distance=..10] armor.black_hole.boots.aj.id run \
tag @s add armor.black_hole.animation.camera.player


execute \
    as @s[tag=armor.black_hole.animation.boots.player,tag=armor.black_hole.animation.camera.player] run \
spectate @n[tag=!delete,tag=aj.stellar_animation.camera,tag=aj.stellar_animation.camera.camera3,tag=armor.black_hole.animation.camera,type=item_display,distance=..10]

tag @s remove armor.black_hole.animation.camera.player
tag @e[tag=aj.stellar_animation.camera,tag=aj.stellar_animation.camera.camera3,tag=armor.black_hole.animation.camera,type=item_display] remove armor.black_hole.animation.camera