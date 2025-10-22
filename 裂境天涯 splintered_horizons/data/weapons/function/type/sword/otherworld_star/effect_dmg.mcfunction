execute as @a[tag=weapon.otherworld_star.effect.user] at @s if score @s weapon.otherworld_star.effect matches 1.. run damage @e[distance=..8,type=!player,type=!#minecraft:dummy_mob,limit=1,sort=random] 2 weapons:type/sword/otherworld_star_effect
scoreboard players remove @a[tag=weapon.otherworld_star.effect.user,scores={weapon.otherworld_star.effect=1..}] weapon.otherworld_star.effect 1

execute as @a[tag=weapon.otherworld_star.effect.user] unless score @s weapon.otherworld_star.effect matches 1.. run tag @s remove weapon.otherworld_star.effect.user

execute as @a[tag=weapon.otherworld_star.effect.user] if score @s weapon.otherworld_star.effect matches 1.. run schedule function weapons:type/sword/otherworld_star/effect_dmg 1t