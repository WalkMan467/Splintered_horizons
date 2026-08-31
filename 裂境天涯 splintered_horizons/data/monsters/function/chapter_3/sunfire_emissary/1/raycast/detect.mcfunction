# ===================================================
# 烈陽使者 技能1 射線 逐格前進 / sunfire emissary skill 1 raycast step

    ## Guide [ function monsters:chapter_3/sunfire_emissary/1/raycast/detect ] >>> 烈陽使者 技能1 射線 逐格前進 / sunfire emissary skill 1 raycast step
    ## Guide [ function monsters:chapter_3/sunfire_emissary/1/raycast/use ] >>> 烈陽使者 技能1 射線 入口 / sunfire emissary skill 1 raycast entry
    ## Guide [ function monsters:chapter_3/sunfire_emissary/1/raycast/end ] >>> 烈陽使者 技能1 射線 終點 / sunfire emissary skill 1 raycast end

# ===================================================

scoreboard players remove #monster.sunfire_emissary monster.sunfire_emissary.1.raycast 1

particle dust{color:[1.000,0.369,0.000],scale:1} ~ ~ ~ 0 0 0 0 1 force

# 擊中方塊

execute \
    if score #monster.sunfire_emissary monster.sunfire_emissary.1.raycast matches 2.. \
    positioned ^ ^ ^0.25 run \
function monsters:chapter_3/sunfire_emissary/1/raycast/detect

# 到達最大距離

execute \
    if score #monster.sunfire_emissary monster.sunfire_emissary.1.raycast matches 1 \
    positioned ^ ^ ^0.25 run \
function monsters:chapter_3/sunfire_emissary/1/raycast/end