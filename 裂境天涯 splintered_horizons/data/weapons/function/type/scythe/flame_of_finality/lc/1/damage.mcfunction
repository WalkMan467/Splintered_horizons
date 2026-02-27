tag @s add dmger
tag @p[sort=arbitrary,tag=!atker,tag=weapon.flame_of_finality.user] add atker
scoreboard players set @p[sort=arbitrary,tag=atker,tag=weapon.flame_of_finality.user] atk 150

execute \
    as @p[sort=arbitrary,tag=atker,tag=weapon.flame_of_finality.user] run \
function dmg_formula:weapons/type/scythe/flame_of_finality/attack/1/calculate