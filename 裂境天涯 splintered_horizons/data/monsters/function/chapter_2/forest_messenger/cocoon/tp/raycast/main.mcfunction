scoreboard players add #temp monster.forest_messenger.cocoon.tp.raycast 3

function monsters:chapter_2/forest_messenger/cocoon/tp/raycast/start

execute if entity @s[tag=monster.forest_messenger.cocoon.tp.raycast.true,type=area_effect_cloud] run scoreboard players set #temp monster.forest_messenger.cocoon.tp.raycast 360
execute if entity @s[tag=monster.forest_messenger.cocoon.tp.raycast.true,type=area_effect_cloud] run return 0

execute rotated ~3 0 if score #temp monster.forest_messenger.cocoon.tp.raycast matches ..360 run function monsters:chapter_2/forest_messenger/cocoon/tp/raycast/main