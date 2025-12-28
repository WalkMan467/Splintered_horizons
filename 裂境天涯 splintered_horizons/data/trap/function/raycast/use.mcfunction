scoreboard players set #trap.raycast main.raycast 25

summon area_effect_cloud ~ ~ ~ {Tags:["trap.raycast"],Duration:1,custom_particle:{type:"block",block_state:"air"},Radius:0}

tp @n[type=area_effect_cloud,tag=trap.raycast] ~ ~ ~ ~ ~

execute \
    as @n[type=area_effect_cloud,tag=trap.raycast] run \
function trap:raycast/detect
kill @n[type=area_effect_cloud,tag=trap.raycast]