scoreboard players set #weapon.kill_sword.raycast main.raycast 100

summon area_effect_cloud ~ ~ ~ {Tags:["weapon.kill_sword.raycast"],Duration:1,custom_particle:{type:"block",block_state:"air"},Radius:0}

tp @n[distance=0..,tag=weapon.kill_sword.raycast,type=area_effect_cloud] ~ ~ ~ ~ ~

execute \
    as @n[tag=weapon.kill_sword.raycast,distance=0..,type=area_effect_cloud] run \
function weapons:type/sword/kill_sword/rc/raycast/detect
kill @n[tag=weapon.kill_sword.raycast,distance=0..,type=area_effect_cloud]