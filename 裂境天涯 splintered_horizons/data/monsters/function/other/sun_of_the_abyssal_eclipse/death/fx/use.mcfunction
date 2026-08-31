# ===================================================
# 暗蝕的烈陽 自爆 蓄力計時 / sun of the abyssal eclipse detonation timer

    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/death/fx/use ] >>> 暗蝕的烈陽 自爆 蓄力計時 / sun of the abyssal eclipse detonation timer
    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/main ] >>> 暗蝕的烈陽 主程式 / sun of the abyssal eclipse main
    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/death/explosion/use ] >>> 暗蝕的烈陽 自爆 引爆 / sun of the abyssal eclipse detonate
    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/death/fx/main ] >>> 暗蝕的烈陽 自爆 蓄力特效 / sun of the abyssal eclipse detonation charge fx

# ===================================================

scoreboard players reset @s monster.sun_of_the_abyssal_eclipse.death.fx
function monsters:other/sun_of_the_abyssal_eclipse/death/fx/main

scoreboard players add @s monster.sun_of_the_abyssal_eclipse.death.timer 1

execute \
    if score @s monster.sun_of_the_abyssal_eclipse.death.timer matches 40.. run \
function monsters:other/sun_of_the_abyssal_eclipse/death/explosion/use