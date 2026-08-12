tag @s add dmger
tag @p[sort=arbitrary,tag=weapon.thunder_duet.user,tag=!atker] add atker
scoreboard players set @p[sort=arbitrary,tag=weapon.thunder_duet.user,tag=atker] dmg_formula.atk_percentage 75

execute \
    as @p[sort=arbitrary,tag=weapon.thunder_duet.user,tag=atker] run \
function dmg_formula:weapons/type/sword/echo_rhythm/calculate

execute \
    rotated ~ 0 \
    if block ^ ^ ^-1 #penetrate \
    if block ^ ^1 ^-1 #penetrate run \
tp @s[tag=!sys.dummy_mob.interface,tag=!sys.dummy_mob,tag=!sys.no_knockback] ^ ^ ^-1