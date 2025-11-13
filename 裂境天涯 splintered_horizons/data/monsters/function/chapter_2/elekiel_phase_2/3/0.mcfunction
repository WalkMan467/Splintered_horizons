summon area_effect_cloud ~ ~ ~ {Tags:["monster.elekiel_phase_2.3.summon_point"],custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Duration:1}
summon area_effect_cloud ~ ~ ~ {Tags:["monster.elekiel_phase_2.3.summon_point"],custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Duration:1}
summon area_effect_cloud ~ ~ ~ {Tags:["monster.elekiel_phase_2.3.summon_point"],custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Duration:1}

spreadplayers -916 2750 2 10 under 60 false @e[distance=..60,limit=5,sort=nearest,type=area_effect_cloud,tag=monster.elekiel_phase_2.3.summon_point]

execute as @e[distance=..60,limit=5,sort=nearest,type=area_effect_cloud,tag=monster.elekiel_phase_2.3.summon_point] at @s run function monsters:chapter_2/elekiel_phase_2/3/1