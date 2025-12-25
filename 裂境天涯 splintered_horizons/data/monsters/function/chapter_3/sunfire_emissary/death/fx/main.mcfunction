# Fx
execute as @e[sort=arbitrary,tag=monsters.sunfire_emissary.fx.main,type=area_effect_cloud] at @s run function monsters:chapter_3/sunfire_emissary/death/fx/use

execute if entity @n[sort=arbitrary,tag=monsters.sunfire_emissary.fx.main,type=area_effect_cloud] run schedule function monsters:chapter_3/sunfire_emissary/death/fx/main 1t