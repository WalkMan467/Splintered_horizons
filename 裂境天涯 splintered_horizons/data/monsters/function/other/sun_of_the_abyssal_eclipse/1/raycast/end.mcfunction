# ===================================================
# 暗蝕的烈陽 技能1 射線 終點 / sun of the abyssal eclipse skill 1 raycast end

    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/1/raycast/end ] >>> 暗蝕的烈陽 技能1 射線 終點 / sun of the abyssal eclipse skill 1 raycast end
    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/1/raycast/detect ] >>> 暗蝕的烈陽 技能1 射線 逐格前進 / sun of the abyssal eclipse skill 1 raycast step
    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/1/raycast/fx ] >>> 暗蝕的烈陽 技能1 射線 終點特效 / sun of the abyssal eclipse skill 1 raycast fx

# ===================================================

scoreboard players reset #monster.sun_of_the_abyssal_eclipse monster.sun_of_the_abyssal_eclipse.1.raycast

scoreboard players reset #monster.sun_of_the_abyssal_eclipse.1.fx_range particle
function monsters:other/sun_of_the_abyssal_eclipse/1/raycast/fx