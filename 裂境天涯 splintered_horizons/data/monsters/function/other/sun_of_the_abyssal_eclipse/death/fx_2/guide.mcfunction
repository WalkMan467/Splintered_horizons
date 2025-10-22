execute positioned ^ ^ ^1.25 run particle dust{color:[1.000,0.369,0.000],scale:1.5} ~ ~ ~ 0 0 0 1 0 normal @a
execute positioned ^ ^ ^0.4 run particle flame ~ ~ ~ ^ ^ ^1000000 0.00000025 0 normal @a

scoreboard players add #monsters.sun_of_the_abyssal_eclipse.x particle 15
scoreboard players set #monsters.sun_of_the_abyssal_eclipse.rot_y particle 0
execute if score #monsters.sun_of_the_abyssal_eclipse.x particle matches 360.. run scoreboard players set #monsters.sun_of_the_abyssal_eclipse.rot_y particle 1
execute if score #monsters.sun_of_the_abyssal_eclipse.x particle matches 360.. run scoreboard players add #monsters.sun_of_the_abyssal_eclipse.y particle 15
execute if score #monsters.sun_of_the_abyssal_eclipse.x particle matches 360.. run scoreboard players set #monsters.sun_of_the_abyssal_eclipse.x particle 0

execute if score #monsters.sun_of_the_abyssal_eclipse.y particle matches ..90 if score #monsters.sun_of_the_abyssal_eclipse.rot_y particle matches 0 rotated ~15 ~ run function monsters:other/sun_of_the_abyssal_eclipse/death/fx_2/guide
execute if score #monsters.sun_of_the_abyssal_eclipse.y particle matches ..90 if score #monsters.sun_of_the_abyssal_eclipse.rot_y particle matches 1 rotated ~15 ~15 run function monsters:other/sun_of_the_abyssal_eclipse/death/fx_2/guide

kill @s[tag=monsters.sun_of_the_abyssal_eclipse.fx_2.main,type=area_effect_cloud,tag=summon]