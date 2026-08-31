# ===================================================
# 魂之神射手 死亡 清除魂鑰 / soul sharpshooter on kill clear keys

    ## Guide [ function monsters:chapter_2/soul_sharpshooter/kill ] >>> 魂之神射手 死亡 清除魂鑰 / soul sharpshooter on kill clear keys
    ## Guide [ function monsters:chapter_2/soul_sharpshooter/2/key/remove/1 ] >>> 追魂體 移除 特效 / ghost key remove fx

# ===================================================

summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Duration:1,Tags:["chapter_2.soul_sharpshooter.key.kill","summon"]}
scoreboard players operation @n[sort=arbitrary,distance=0..,tag=summon,tag=chapter_2.soul_sharpshooter.key.kill,type=area_effect_cloud] monster.emissary_of_the_temporal_rift.id = @s monster.emissary_of_the_temporal_rift.id
tag @n[sort=arbitrary,distance=0..,tag=summon,tag=chapter_2.soul_sharpshooter.key.kill,type=area_effect_cloud] remove summon

execute \
    as @e[distance=0..,tag=chapter_2.soul_sharpshooter.key,type=item_display] at @s \
    if score @s monster.emissary_of_the_temporal_rift.id = @n[sort=arbitrary,distance=0..,tag=!summon,tag=chapter_2.soul_sharpshooter.key.kill,type=area_effect_cloud] monster.emissary_of_the_temporal_rift.id run \
function monsters:chapter_2/soul_sharpshooter/2/key/remove/1

kill @n[sort=arbitrary,distance=0..,tag=!summon,tag=chapter_2.soul_sharpshooter.key.kill,type=area_effect_cloud]