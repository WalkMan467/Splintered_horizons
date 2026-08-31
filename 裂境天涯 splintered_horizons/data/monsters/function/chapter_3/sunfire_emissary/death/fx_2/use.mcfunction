# ===================================================
# 烈陽使者 自爆 球狀特效 入口 / sunfire emissary sphere fx entry

    ## Guide [ function monsters:chapter_3/sunfire_emissary/death/fx_2/use ] >>> 烈陽使者 自爆 球狀特效 入口 / sunfire emissary sphere fx entry
    ## Guide [ function monsters:chapter_3/sunfire_emissary/death/use ] >>> 烈陽使者 自爆 入口 / sunfire emissary detonation entry
    ## Guide [ function monsters:chapter_3/sunfire_emissary/death/fx_2/guide ] >>> 烈陽使者 自爆 球狀特效 遞迴 / sunfire emissary sphere fx recurse

# ===================================================

scoreboard players set #monsters.sunfire_emissary.y particle -90
scoreboard players set #monsters.sunfire_emissary.x particle 0

function monsters:chapter_3/sunfire_emissary/death/fx_2/guide