# ===================================================
# 暗蝕的烈陽 死亡 觸發自爆 / sun of the abyssal eclipse on kill

    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/kill ] >>> 暗蝕的烈陽 死亡 觸發自爆 / sun of the abyssal eclipse on kill
    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/death/use ] >>> 暗蝕的烈陽 自爆 入口 / sun of the abyssal eclipse detonation entry

# ===================================================

function monsters:other/sun_of_the_abyssal_eclipse/death/use


execute \
    on passengers \
    if entity @s[type=marker,tag=monster.marker] run \
kill @s