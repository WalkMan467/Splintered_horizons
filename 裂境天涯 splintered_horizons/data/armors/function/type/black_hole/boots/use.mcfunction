# ===================================================
# Black Hole Boots Main Function

    ## Guide [ function armors:type/black_hole/boots/main ] >>> Main Function
    ## Guide [ function armors:type/black_hole/boots/eqipment ] >>> Boots Eqipment
    ## Guide [ function armors:type/black_hole/boots/take_off ] >>> Boots Take Off

# ===================================================
# Detect Sneak ; Play Animation Function

scoreboard players operation @s armor.animation_skills.feet.cd = @s armor.black_hole.boots.cd


execute \
    if score @s armor.black_hole.boots.cd matches 1.. run \
return 0

execute \
    if score @s player.animation.lock matches 1.. run \
return 0

function armors:type/black_hole/animation/boots/play