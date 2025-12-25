summon area_effect_cloud ~ ~ ~ {Tags:["sys.chapter_3.1.monster_wave.point"],Duration:1}

execute positioned 1425 192 -317 run spreadplayers ~ ~ 5 10 under 192 false @n[sort=arbitrary,tag=sys.chapter_3.1.monster_wave.point,type=area_effect_cloud]

execute as @n[sort=arbitrary,tag=sys.chapter_3.1.monster_wave.point,type=area_effect_cloud] at @s run function sys:monster_wave/chapter_3/1/summon/rdm