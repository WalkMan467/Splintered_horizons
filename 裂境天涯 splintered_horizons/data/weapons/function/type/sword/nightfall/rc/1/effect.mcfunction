execute on attacker if score @s player.health matches 4.. run damage @s 3 weapons:type/sword/nightfall
execute on attacker unless score @s player.health matches 4.. run return 0

particle minecraft:scrape ~ ~1 ~ 0 0 0 15 20 normal @a
particle minecraft:electric_spark ~ ~1 ~ 0 0 0 1.5 10 normal @a

tag @e[type=!player,type=!#minecraft:dummy_mob,distance=..1] add dmger
scoreboard players set @s atk 50
function dmg_formula:weapons/type/sword/nightfall/calculate