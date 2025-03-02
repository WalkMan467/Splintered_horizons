scoreboard players remove @s[scores={armor.black_hole.boots.damage_delay=1..}] armor.black_hole.boots.damage_delay 1

execute unless score @s entity.dummy_mob matches 1.. if entity @s[type=!player,type=!#minecraft:dummy_mob] at @s facing entity @n[tag=armor.black_hole.effect,distance=1..8] feet rotated ~ 0 run function armors:type/black_hole/boots/effect/run