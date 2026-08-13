execute \
    if score @s sys.silence matches 1.. run \
return 0

summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Duration:11,Tags:["monster.nightmare_difficulty.abyss_explode.point"]}

particle minecraft:sonic_boom ~ ~ ~ 0 0 0 0 1 force @a