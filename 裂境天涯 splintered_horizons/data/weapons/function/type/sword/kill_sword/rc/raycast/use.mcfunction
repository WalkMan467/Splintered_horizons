scoreboard players set #weapon.kill_sword.raycast main.raycast 100

summon area_effect_cloud ~ ~ ~ {Tags:["weapon.kill_sword.raycast"],Duration:1,custom_particle:{type:"block",block_state:"air"},Radius:0}

tp @n[type=area_effect_cloud,tag=weapon.kill_sword.raycast] ~ ~ ~ ~ ~

execute \
    as @n[type=area_effect_cloud,tag=weapon.kill_sword.raycast] run \
function weapons:type/sword/kill_sword/rc/raycast/detect
kill @n[type=area_effect_cloud,tag=weapon.kill_sword.raycast]