tag @s add dmger
tag @p[sort=arbitrary,tag=weapon.thunder_duet.user,tag=!atker] add atker
scoreboard players set @p[sort=arbitrary,tag=weapon.thunder_duet.user,tag=atker] atk 75

execute \
    as @p[sort=arbitrary,tag=weapon.thunder_duet.user,tag=atker] run \
function dmg_formula:weapons/type/sword/echo_rhythm/calculate

tp @s ^ ^ ^-1