# ===================================================
# detect

    ## Guide [ function armors:type/windriders_legplates/effect/detect ] >>> detect
    ## Guide [ function armors:type/windriders_legplates/use ] >>> use
    ## Guide [ function armors:type/windriders_legplates/take_off ] >>> take off

# ===================================================

execute \
    on attacker \
    if entity @s[type=player,tag=armors.windriders_legplates.effect,tag=armors.windriders_legplates.user] run \
return 1