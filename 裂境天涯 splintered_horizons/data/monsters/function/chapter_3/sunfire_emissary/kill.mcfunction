# ===================================================
# 烈陽使者 死亡 觸發自爆 / sunfire emissary on kill

    ## Guide [ function monsters:chapter_3/sunfire_emissary/kill ] >>> 烈陽使者 死亡 觸發自爆 / sunfire emissary on kill
    ## Guide [ function monsters:chapter_3/sunfire_emissary/death/use ] >>> 烈陽使者 自爆 入口 / sunfire emissary detonation entry

# ===================================================

execute \
    on passengers \
    if entity @s[type=marker,tag=monster.marker] run \
kill @s

execute \
    if score @s sys.silence matches 1.. run \
return 0

execute \
    if score @s sys.skills_freeze matches 1.. run \
return 0

function monsters:chapter_3/sunfire_emissary/death/use