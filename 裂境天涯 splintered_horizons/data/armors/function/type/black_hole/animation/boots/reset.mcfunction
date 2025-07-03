# ===================================================
# Black Hole Boots Main Function

    ## Guide [ function armors:type/black_hole/animation/boots/play ] >>> Play Animation
    ## Guide [ function armors:type/black_hole/animation/boots/reset ] >>> Animation End

# ===================================================
# Animation End

gamemode adventure @s[tag=armor.black_hole.animation.boots.player,scores={main.gamemode=1}]
gamemode creative @s[tag=armor.black_hole.animation.boots.player,scores={main.gamemode=2}]
gamemode spectator @s[tag=armor.black_hole.animation.boots.player,scores={main.gamemode=3}]
gamemode survival @s[tag=armor.black_hole.animation.boots.player,scores={main.gamemode=4}]

attribute @s movement_speed modifier remove armor.black_hole.animation.boots
attribute @s jump_strength modifier remove armor.black_hole.animation.boots

tag @s remove armor.black_hole.animation.boots.player

tag @s remove animation