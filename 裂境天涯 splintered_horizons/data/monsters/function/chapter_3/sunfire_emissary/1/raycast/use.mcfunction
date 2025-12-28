scoreboard players set #monster.sunfire_emissary monster.sunfire_emissary.1.raycast 25

summon area_effect_cloud ~ ~ ~ {Tags:["monster.sunfire_emissary.1.raycast"],Duration:1,custom_particle:{type:"block",block_state:"air"},Radius:0}

tp @e[type=area_effect_cloud,tag=monster.sunfire_emissary.1.raycast] ~ ~ ~ ~ ~

execute \
    as @e[type=area_effect_cloud,tag=monster.sunfire_emissary.1.raycast] run \
function monsters:chapter_3/sunfire_emissary/1/raycast/detect
kill @e[type=area_effect_cloud,tag=monster.sunfire_emissary.1.raycast]