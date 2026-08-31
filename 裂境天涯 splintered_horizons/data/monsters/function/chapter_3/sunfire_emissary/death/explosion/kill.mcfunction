# ===================================================
# 烈陽使者 自爆 清除計時 Marker / sunfire emissary clear timer marker

    ## Guide [ function monsters:chapter_3/sunfire_emissary/death/explosion/kill ] >>> 烈陽使者 自爆 清除計時 Marker / sunfire emissary clear timer marker

# ===================================================

execute \
    on passengers \
    if entity @s[type=marker,tag=main.duration.timer] run \
kill @s