summon area_effect_cloud ~ ~ ~ {Duration:1,custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Tags:["monster.forest_messenger.cocoon.tp.raycast"]}

scoreboard players reset #temp monster.forest_messenger.cocoon.tp.raycast


execute \
    as @e[tag=monster.forest_messenger.cocoon.tp.raycast,type=area_effect_cloud] at @s run \
function monsters:chapter_2/forest_messenger/cocoon/tp/raycast/main


execute \
    if entity @s[type=player] run \
return 0

execute on passengers run \
kill @s
kill @s