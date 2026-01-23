execute \
    as @e[sort=arbitrary,distance=0..,tag=monster.nightmare_difficulty.abyss_explode.poison,type=item] at @s run \
function monsters:chapter_1/generic/nightmare_difficulty/abyss_explode/poison/guide

execute \
    as @e[sort=arbitrary,distance=0..,tag=monster.nightmare_difficulty.abyss_explode.point,type=area_effect_cloud] at @s run \
function monsters:chapter_1/generic/nightmare_difficulty/abyss_explode/point/guide

schedule function monsters:chapter_1/generic/nightmare_difficulty/abyss_explode/main 1t