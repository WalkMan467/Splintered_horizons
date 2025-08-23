execute if entity @s[tag=monster.forest_messenger.cocoon.tp.raycast.true,type=area_effect_cloud] run return 0

tag @s add monster.forest_messenger.cocoon.tp.raycast.true

summon area_effect_cloud ~ ~ ~ {Duration:1,custom_particle:{type:"block",block_state:"minecraft:air"},Radius:0f,Tags:["monster.forest_messenger.cocoon.tp.raycast.tp"]}

function monsters:chapter_2/forest_messenger/cocoon/tp/use