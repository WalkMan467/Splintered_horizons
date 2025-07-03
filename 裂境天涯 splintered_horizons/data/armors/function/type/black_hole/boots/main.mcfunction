# ===================================================
# Black Hole Boots Main Function

    ## Guide [ function armors:type/black_hole/boots/main ] >>> Main Function
    ## Guide [ function armors:type/black_hole/boots/eqipment ] >>> Boots Eqipment
    ## Guide [ function armors:type/black_hole/boots/take_off ] >>> Boots Take Off

# ===================================================
# Detect Sneak ; Play Animation Function

execute if predicate players:detect/input/sneak run scoreboard players add @s armor.black_hole.boots.sneak 1

execute unless function armors:type/black_hole/boots/detect unless entity @s[gamemode=spectator] unless score @s player.animation.lock matches 1.. unless predicate players:detect/input/sneak if score @s armor.black_hole.boots.sneak matches 1..3 run function armors:type/black_hole/animation/boots/play
execute unless predicate players:detect/input/sneak run scoreboard players set @s armor.black_hole.boots.sneak 0