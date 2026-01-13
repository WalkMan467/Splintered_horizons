
execute \
    as @e[distance=0..,tag=monsters.chapter_2.elekiel.1.fx,type=minecraft:area_effect_cloud] at @s run \
function monsters:chapter_2/elekiel/1/fx/guide


execute \
    unless entity @n[distance=0..,tag=monsters.chapter_2.elekiel.1.fx,type=minecraft:area_effect_cloud] run \
return 0
schedule function monsters:chapter_2/elekiel/1/fx/main 1t