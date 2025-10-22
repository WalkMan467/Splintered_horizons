tag @e[type=!player,type=!#dummy_mob,distance=..8] add dmger
tag @s[tag=!atker] add atker
scoreboard players set @s[tag=atker] atk 200
function dmg_formula:weapons/type/sword/otherworld_star/calculate

schedule function weapons:type/sword/otherworld_star/effect_dmg 1t