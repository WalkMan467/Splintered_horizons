# ===================================================
# Black Hole Boots Main Function

    ## Guide [ function armors:type/black_hole/effect/main ] >>> Main Function
    ## Guide [ function armors:type/black_hole/effect/run ] >>> Damage and Effects
    ## Guide [ function armors:type/black_hole/effect/use ] >>> Summon Black Hole Boots Range Effect

# ===================================================
# Damage and Effects

tp @s ^ ^ ^-0.25


execute \
    unless score @s armor.windriders_legplates.leggings.damage_delay matches 1.. run \
scoreboard players set @s armor.windriders_legplates.leggings.damage_delay 3