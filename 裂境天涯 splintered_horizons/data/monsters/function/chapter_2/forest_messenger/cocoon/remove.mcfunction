function monsters:chapter_2/forest_messenger/cast/end
effect clear @s glowing
item replace entity @s weapon.offhand with air

scoreboard players operation #detect monster.forest_messenger.cocoon.id = @s[tag=skeleton] monster.forest_messenger.cocoon.id

execute as @e[type=block_display,tag=monster.forest_messenger.cocoon] if score @s monster.forest_messenger.cocoon.id = #detect monster.forest_messenger.cocoon.id run tag @s add monster.forest_messenger.cocoon.remove

execute as @e[type=block_display,tag=monster.forest_messenger.cocoon,tag=monster.forest_messenger.cocoon.remove] at @s run function monsters:chapter_2/forest_messenger/cocoon/remove_guide