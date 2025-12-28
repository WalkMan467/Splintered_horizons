scoreboard players set #monster.sun_of_the_abyssal_eclipse monster.sun_of_the_abyssal_eclipse.1.raycast 25

summon area_effect_cloud ~ ~ ~ {Tags:["monster.sun_of_the_abyssal_eclipse.1.raycast"],Duration:1,custom_particle:{type:"block",block_state:"air"},Radius:0}

tp @e[type=area_effect_cloud,tag=monster.sun_of_the_abyssal_eclipse.1.raycast] ~ ~ ~ ~ ~

execute \
    as @e[type=area_effect_cloud,tag=monster.sun_of_the_abyssal_eclipse.1.raycast] run \
function monsters:other/sun_of_the_abyssal_eclipse/1/raycast/detect
kill @e[type=area_effect_cloud,tag=monster.sun_of_the_abyssal_eclipse.1.raycast]