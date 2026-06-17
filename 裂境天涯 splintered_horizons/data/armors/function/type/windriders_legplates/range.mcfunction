# ===================================================
# range

    ## Guide [ function armors:type/windriders_legplates/range ] >>> range
    ## Guide [ function armors:type/windriders_legplates/use ] >>> use
    ## Guide [ function armors:type/windriders_legplates/take_off ] >>> take off

# ===================================================

scoreboard players add @s particle 3

execute \
    if score @s particle matches 360.. run \
    return run \
scoreboard players reset @s particle

particle cloud ^ ^1 ^4 ^ ^ ^-1000000 0.0000005 0 force

execute \
    rotated ~3 0 run \
function armors:type/windriders_legplates/range