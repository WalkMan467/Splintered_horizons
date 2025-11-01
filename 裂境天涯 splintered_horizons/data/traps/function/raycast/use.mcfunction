scoreboard players set #traps.raycast main.raycast 25

summon area_effect_cloud ~ ~ ~ {Tags:["traps.raycast"],Duration:1,custom_particle:{type:"block",block_state:"air"},Radius:0}

tp @n[type=area_effect_cloud,tag=traps.raycast] ~ ~ ~ ~ ~
execute as @n[type=area_effect_cloud,tag=traps.raycast] run function traps:raycast/detect
kill @n[type=area_effect_cloud,tag=traps.raycast]