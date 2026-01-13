summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Duration:1,Tags:["chapter_3.emissary_of_the_temporal_rift.key.kill","summon"]}
scoreboard players operation @n[sort=arbitrary,distance=0..,tag=summon,tag=chapter_3.emissary_of_the_temporal_rift.key.kill,type=area_effect_cloud] monster.emissary_of_the_temporal_rift.id = @s monster.emissary_of_the_temporal_rift.id
tag @n[sort=arbitrary,distance=0..,tag=summon,tag=chapter_3.emissary_of_the_temporal_rift.key.kill,type=area_effect_cloud] remove summon

execute \
    as @e[distance=0..,tag=chapter_3.emissary_of_the_temporal_rift.key,type=item_display] at @s \
    if score @s monster.emissary_of_the_temporal_rift.id = @n[sort=arbitrary,distance=0..,tag=!summon,tag=chapter_3.emissary_of_the_temporal_rift.key.kill,type=area_effect_cloud] monster.emissary_of_the_temporal_rift.id run \
kill @s

kill @n[sort=arbitrary,distance=0..,tag=!summon,tag=chapter_3.emissary_of_the_temporal_rift.key.kill,type=area_effect_cloud]