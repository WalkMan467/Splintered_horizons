
# player
execute unless score @s weapon.effect.resplendence matches 1.. run scoreboard players set @s weapon.aquilumera.cd 25
execute if score @s weapon.effect.resplendence matches 1.. run scoreboard players set @s weapon.aquilumera.cd 12

effect give @s levitation 1 3 true
effect give @s resistance 2 2 true
effect give @s fire_resistance 2 2 true

scoreboard players set @s player.disable.elytra_switch 50

# particle
title @s times 10 5 10
title @s title {"text":"\uE006","font": "screen"}
particle flash ~ ~1 ~ 0 0 0 1 2 normal @a[scores={main.light_sensitivity=0}]
particle dripping_dripstone_water ~ ~5 ~ 5 5 5 0 600 normal @a
playsound entity.zombie.converted_to_drowned voice @a ~ ~1 ~ 1 0.7
playsound block.beacon.deactivate voice @a ~ ~1 ~ 999999 0.5 1

# dmg
tag @s add water_sword.w_user
effect give @e[type=!#dummy_mob,distance=..16,type=!player] slowness 3 5 true
effect give @e[type=!#dummy_mob,distance=..16,type=!player] weakness 3 255 true
execute as @e[type=!#dummy_mob,distance=..16,type=!player] run data merge entity @s {Motion:[0.0d,-10.0d,0.0d]}