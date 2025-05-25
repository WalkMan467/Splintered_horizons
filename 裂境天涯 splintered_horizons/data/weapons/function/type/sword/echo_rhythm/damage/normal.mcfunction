tag @e[type=!player,type=!#dummy_mob,distance=..8] add dmger
tag @p[tag=!atker] add atker
scoreboard players set @p[tag=atker] atk 150
execute as @p run function dmg_formula:weapons/type/sword/echo_rhythm/calculate