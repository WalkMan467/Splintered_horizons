# ===================================================
# 烈陽使者 技能1 射線 終點 / sunfire emissary skill 1 raycast end

    ## Guide [ function monsters:chapter_3/sunfire_emissary/1/raycast/end ] >>> 烈陽使者 技能1 射線 終點 / sunfire emissary skill 1 raycast end
    ## Guide [ function monsters:chapter_3/sunfire_emissary/1/raycast/detect ] >>> 烈陽使者 技能1 射線 逐格前進 / sunfire emissary skill 1 raycast step
    ## Guide [ function monsters:chapter_3/sunfire_emissary/1/raycast/fx ] >>> 烈陽使者 技能1 射線 終點特效 / sunfire emissary skill 1 raycast fx

# ===================================================

scoreboard players reset #monster.sunfire_emissary monster.sunfire_emissary.1.raycast

scoreboard players reset #monster.sunfire_emissary.1.fx_range particle
function monsters:chapter_3/sunfire_emissary/1/raycast/fx