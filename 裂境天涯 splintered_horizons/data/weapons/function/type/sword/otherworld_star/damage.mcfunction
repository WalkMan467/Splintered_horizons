tag @e[type=!player,type=!#dummy_mob,distance=..8] add dmger

tag @p[tag=weapon.otherworld_star.effect.user] add atker

scoreboard players set @p[sort=arbitrary,tag=weapon.otherworld_star.effect.user,tag=atker] dmg_formula.atk_percentage 200
function dmg_formula:weapons/type/sword/otherworld_star/calculate

tag @p[sort=arbitrary,tag=weapon.otherworld_star.effect.user] remove weapon.otherworld_star.effect.user

schedule function weapons:type/sword/otherworld_star/effect_dmg 1t