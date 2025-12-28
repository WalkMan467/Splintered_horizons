tag @e[type=!#minecraft:dummy_mob,type=!player,distance=..8] add dmger
tag @p[tag=!atker] add atker
scoreboard players set @p[tag=atker] atk 250

execute \
    as @p run \
function dmg_formula:weapons/type/scythe/ruins_of_the_finality/calculate