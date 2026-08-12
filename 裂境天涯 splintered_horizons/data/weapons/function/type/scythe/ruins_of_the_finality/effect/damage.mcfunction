tag @s add dmger
tag @p[tag=!atker] add atker
scoreboard players set @p[tag=atker] dmg_formula.atk_percentage 150

execute \
    as @p[tag=atker] run \
function dmg_formula:weapons/type/scythe/ruins_of_the_finality/calculate