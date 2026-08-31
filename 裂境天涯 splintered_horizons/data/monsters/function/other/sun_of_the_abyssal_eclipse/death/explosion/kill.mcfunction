# ===================================================
# 暗蝕的烈陽 自爆 清除計時 Marker / sun of the abyssal eclipse clear timer marker

    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/death/explosion/kill ] >>> 暗蝕的烈陽 自爆 清除計時 Marker / sun of the abyssal eclipse clear timer marker

# ===================================================

execute \
    on passengers \
    if entity @s[type=marker,tag=main.duration.timer] run \
kill @s