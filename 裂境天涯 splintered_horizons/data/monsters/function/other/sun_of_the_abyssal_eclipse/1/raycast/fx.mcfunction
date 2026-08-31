# ===================================================
# 暗蝕的烈陽 技能1 射線 終點特效 / sun of the abyssal eclipse skill 1 raycast fx

    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/1/raycast/fx ] >>> 暗蝕的烈陽 技能1 射線 終點特效 / sun of the abyssal eclipse skill 1 raycast fx
    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/1/raycast/end ] >>> 暗蝕的烈陽 技能1 射線 終點 / sun of the abyssal eclipse skill 1 raycast end

# ===================================================

scoreboard players add #monster.sun_of_the_abyssal_eclipse.1.fx_range particle 10

particle small_flame ^ ^0.5 ^3 0.1 0 0.1 0 2 force @a


execute rotated ~10 0 \
    if score #monster.sun_of_the_abyssal_eclipse.1.fx_range particle matches ..360 run \
function monsters:other/sun_of_the_abyssal_eclipse/1/raycast/fx