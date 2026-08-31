# ===================================================
# 暗蝕的烈陽 自爆 球狀特效 入口 / sun of the abyssal eclipse sphere fx entry

    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/death/fx_2/use ] >>> 暗蝕的烈陽 自爆 球狀特效 入口 / sun of the abyssal eclipse sphere fx entry
    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/death/use ] >>> 暗蝕的烈陽 自爆 入口 / sun of the abyssal eclipse detonation entry
    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/death/fx_2/guide ] >>> 暗蝕的烈陽 自爆 球狀特效 遞迴 / sun of the abyssal eclipse sphere fx recurse

# ===================================================

scoreboard players set #monsters.sun_of_the_abyssal_eclipse.y particle -90
scoreboard players set #monsters.sun_of_the_abyssal_eclipse.x particle 0

function monsters:other/sun_of_the_abyssal_eclipse/death/fx_2/guide