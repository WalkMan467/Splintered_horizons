execute as @e[tag=monster.spawn_area.chapter_1.main,type=marker] at @s run function monsters:spawn_area/summon_point

execute as @e[tag=monster.spawn_area.chapter_1.point,type=area_effect_cloud] at @s run particle flame ~ ~ ~ 0 0 0 0.1 100 force @a