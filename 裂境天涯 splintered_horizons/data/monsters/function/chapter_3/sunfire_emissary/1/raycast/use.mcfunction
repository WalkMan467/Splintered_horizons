# ===================================================
# 烈陽使者 技能1 射線 入口 / sunfire emissary skill 1 raycast entry

    ## Guide [ function monsters:chapter_3/sunfire_emissary/1/raycast/use ] >>> 烈陽使者 技能1 射線 入口 / sunfire emissary skill 1 raycast entry
    ## Guide [ function monsters:chapter_3/sunfire_emissary/1/main ] >>> 烈陽使者 技能1 分鏡 / sunfire emissary skill 1 timeline
    ## Guide [ function monsters:chapter_3/sunfire_emissary/1/raycast/detect ] >>> 烈陽使者 技能1 射線 逐格前進 / sunfire emissary skill 1 raycast step

# ===================================================

scoreboard players set #monster.sunfire_emissary monster.sunfire_emissary.1.raycast 25

summon area_effect_cloud ~ ~ ~ {Tags:["monster.sunfire_emissary.1.raycast"],Duration:1,custom_particle:{type:"block",block_state:"air"},Radius:0}

tp @e[type=area_effect_cloud,tag=monster.sunfire_emissary.1.raycast] ~ ~ ~ ~ ~

execute \
    as @e[type=area_effect_cloud,tag=monster.sunfire_emissary.1.raycast] run \
function monsters:chapter_3/sunfire_emissary/1/raycast/detect
kill @e[type=area_effect_cloud,tag=monster.sunfire_emissary.1.raycast]