# ===================================================
# reset

    ## Guide [ function armors:type/black_hole/animation/boots/reset ] >>> reset
    ## Guide [ function armors:type/black_hole/animation/boots/play ] >>> play
    ## Guide [ function armors:type/black_hole/animation/boots/main ] >>> boots main

# ===================================================

# Animation End

gamemode adventure @s[tag=armor.black_hole.animation.boots.player,scores={main.gamemode=1}]
gamemode creative @s[tag=armor.black_hole.animation.boots.player,scores={main.gamemode=2}]
gamemode spectator @s[tag=armor.black_hole.animation.boots.player,scores={main.gamemode=3}]
gamemode survival @s[tag=armor.black_hole.animation.boots.player,scores={main.gamemode=4}]

scoreboard players reset @s player.gamemode

attribute @s movement_speed modifier remove armor.black_hole.animation.boots
attribute @s jump_strength modifier remove armor.black_hole.animation.boots

tag @s remove armor.black_hole.animation.boots.player

tag @s remove animation