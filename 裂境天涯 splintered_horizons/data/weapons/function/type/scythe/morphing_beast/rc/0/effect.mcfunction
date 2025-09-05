execute on attacker store result score @s player.max_health run attribute @s minecraft:max_health get
execute on attacker if score @s player.health >= @s player.max_health run return 0

execute on attacker run function weapons:type/sword/nightfall/rc/0/calculate

execute on attacker run effect give @s instant_health 1 0 true


particle minecraft:scrape ~ ~1 ~ 0 0 0 15 20 normal @a
particle minecraft:electric_spark ~ ~1 ~ 0 0 0 1.5 10 normal @a

tag @e[type=!player,type=!#minecraft:dummy_mob,distance=..1] add dmger
execute on attacker run scoreboard players operation @s atk = #temp player.max_health
execute on attacker run function dmg_formula:weapons/type/sword/nightfall/calculate