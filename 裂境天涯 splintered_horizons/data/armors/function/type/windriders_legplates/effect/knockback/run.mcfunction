# ===================================================
# run

    ## Guide [ function armors:type/windriders_legplates/effect/knockback/run ] >>> run
    ## Guide [ function armors:type/windriders_legplates/use ] >>> use
    ## Guide [ function armors:type/windriders_legplates/take_off ] >>> take off

# ===================================================

# Damage and Effects

function sys:dummy_mob/interface

execute \
    rotated ~ 0 \
    if block ^ ^ ^-0.5 #penetrate \
    if block ^ ^1 ^-0.5 #penetrate run \
tp @s[tag=!sys.dummy_mob.interface,tag=!sys.dummy_mob,tag=!sys.no_knockback] ^ ^ ^-0.5

execute \
    unless score @s armor.windriders_legplates.leggings.damage_delay matches 1.. run \
scoreboard players set @s armor.windriders_legplates.leggings.damage_delay 3

tag @s remove sys.dummy_mob.interface