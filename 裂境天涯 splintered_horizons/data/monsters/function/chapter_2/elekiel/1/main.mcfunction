execute if score @s monster.skill.casting matches 1 run function monsters:chapter_2/elekiel/1/fallstar/use
execute if score @s monster.skill.casting matches 1 run schedule function monsters:chapter_2/elekiel/1/fx/use 1t
execute if score @s monster.skill.casting matches 1..101 run particle minecraft:trial_spawner_detection_ominous 912 60 2018 20 0.25 20 0.5 500 normal @a

execute if score @s monster.skill.casting matches 101 run kill 000000fb-0000-0228-0000-000100000018

execute if score @s monster.skill.casting matches 101.. run function monsters:chapter_2/elekiel/1/detect
execute if score @s monster.skill.casting matches 101.. as @e[tag=monsters.elekiel.1.abyss_crystal,type=item_display] at @s run function monsters:chapter_2/elekiel/1/abyss_crystal/main

execute if score @s monster.skill.casting matches 101 run function monsters:chapter_2/elekiel/1/0
execute if score @s monster.skill.casting matches 102 as @a at @s if biome ~ ~ ~ world_area:chapter_2/bossfight/fire run function monsters:chapter_2/elekiel/1/1
execute if score @s monster.skill.casting matches 141 run function monsters:chapter_2/elekiel/1/2
execute if score @s monster.skill.casting matches 161 as @a at @s run function monsters:chapter_2/elekiel/1/3

execute if score @s monster.skill.casting matches 201 run function monsters:chapter_2/elekiel/1/abyss_crystal/use

execute if score @s monster.skill.casting matches 221 run function monsters:chapter_2/elekiel/1/abyss_crystal/use

execute if score @s monster.skill.casting matches 241 run function monsters:chapter_2/elekiel/1/abyss_crystal/use

execute if score @s monster.skill.casting matches 261 run function monsters:chapter_2/elekiel/1/abyss_crystal/use

execute if score @s monster.skill.casting matches 291 as @e[tag=monsters.elekiel.1.abyss_crystal,type=item_display] at @s run function monsters:chapter_2/elekiel/1/4

execute if score @s monster.skill.casting matches 311 as @e[tag=monsters.elekiel.1.abyss_crystal,type=item_display] at @s run function monsters:chapter_2/elekiel/1/5

execute if score @s monster.skill.casting matches 495 as @a at @s if biome ~ ~ ~ world_area:chapter_2/bossfight/fire run function monsters:chapter_2/elekiel/1/6
execute if score @s monster.skill.casting matches 530 run function monsters:chapter_2/elekiel/1/7
execute if score @s monster.skill.casting matches 531 as @a at @s run function monsters:chapter_2/elekiel/1/8
execute if score @s monster.skill.casting matches 540..550 run particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 8 0 8 1 2

execute if score @s monster.skill.casting matches 550.. run function monsters:chapter_2/elekiel/cast/end