# ===================================================
# main

    ## Guide [ function armors:type/black_hole/animation/boots/main ] >>> main
    ## Guide [ function armors:type/black_hole/animation/boots/play ] >>> play
    ## Guide [ function armors:type/black_hole/animation/boots/reset ] >>> reset
    ## Guide [ function armors:loop ] >>> armors:loop

# ===================================================

# Object ID Owner Detect; Execute Camera positioning


execute \
    as @e[distance=0..,tag=!delete,tag=aj.stellar_animation.camera,tag=aj.stellar_animation.camera.camera3,tag=!armor.black_hole.animation.camera,type=item_display] at @s \
    if score @a[limit=1,tag=armor.black_hole.animation.boots.player,distance=..10] player.id = @s armor.black_hole.boots.aj.id run \
tag @s add armor.black_hole.animation.camera

execute \
    if score @s[tag=armor.black_hole.animation.boots.player,tag=!armor.black_hole.animation.camera.player,distance=0..] player.id = @n[tag=!delete,tag=aj.stellar_animation.camera,tag=aj.stellar_animation.camera.camera3,tag=armor.black_hole.animation.camera,distance=..10,type=item_display] armor.black_hole.boots.aj.id run \
tag @s add armor.black_hole.animation.camera.player


execute \
    as @s[tag=armor.black_hole.animation.boots.player,tag=armor.black_hole.animation.camera.player] run \
spectate @n[tag=!delete,tag=aj.stellar_animation.camera,tag=aj.stellar_animation.camera.camera3,tag=armor.black_hole.animation.camera,distance=..10,type=item_display]

tag @s remove armor.black_hole.animation.camera.player
tag @e[tag=aj.stellar_animation.camera,tag=aj.stellar_animation.camera.camera3,tag=armor.black_hole.animation.camera,distance=0..,type=item_display] remove armor.black_hole.animation.camera