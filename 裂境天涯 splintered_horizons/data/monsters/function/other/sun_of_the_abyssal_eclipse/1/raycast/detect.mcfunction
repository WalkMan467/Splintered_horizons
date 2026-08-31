# ===================================================
# 暗蝕的烈陽 技能1 射線 逐格前進 / sun of the abyssal eclipse skill 1 raycast step

    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/1/raycast/detect ] >>> 暗蝕的烈陽 技能1 射線 逐格前進 / sun of the abyssal eclipse skill 1 raycast step
    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/1/raycast/use ] >>> 暗蝕的烈陽 技能1 射線 入口 / sun of the abyssal eclipse skill 1 raycast entry
    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/1/raycast/end ] >>> 暗蝕的烈陽 技能1 射線 終點 / sun of the abyssal eclipse skill 1 raycast end

# ===================================================

scoreboard players remove #monster.sun_of_the_abyssal_eclipse monster.sun_of_the_abyssal_eclipse.1.raycast 1

particle dust{color:[1.000,0.369,0.000],scale:1} ~ ~ ~ 0 0 0 0 1 force

# 擊中方塊

execute \
    if score #monster.sun_of_the_abyssal_eclipse monster.sun_of_the_abyssal_eclipse.1.raycast matches 2.. \
    positioned ^ ^ ^0.25 run \
function monsters:other/sun_of_the_abyssal_eclipse/1/raycast/detect

# 到達最大距離

execute \
    if score #monster.sun_of_the_abyssal_eclipse monster.sun_of_the_abyssal_eclipse.1.raycast matches 1 \
    positioned ^ ^ ^0.25 run \
function monsters:other/sun_of_the_abyssal_eclipse/1/raycast/end