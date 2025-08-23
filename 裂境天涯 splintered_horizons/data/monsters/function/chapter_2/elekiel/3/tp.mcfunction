summon area_effect_cloud ~ ~ ~ {Duration:1,custom_particle:{type:"block",block_state:"minecraft:air"},NoGravity:1b,Radius:0f,Tags:["monsters.elekiel.3.tp.point"]}

spreadplayers 912 2018 5 10 under 60 false @e[tag=monsters.elekiel.3.tp.point,type=area_effect_cloud]

execute as @e[tag=monsters.elekiel.3.tp.point,type=area_effect_cloud] at @s run tp @s ~ 60 ~

execute as 00000015-0000-0002-0000-003700000080 at @e[tag=monsters.elekiel.3.tp.point,type=area_effect_cloud,limit=1,sort=random] run tp @s ~ ~ ~ ~ ~

kill @e[tag=monsters.elekiel.3.tp.point,type=area_effect_cloud]

scoreboard players set .global monster.elekiel.3.timer 15