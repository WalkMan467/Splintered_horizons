# ===================================================
# 烈陽使者 自爆 蓄力排程 / sunfire emissary detonation scheduler

    ## Guide [ function monsters:chapter_3/sunfire_emissary/death/fx/main ] >>> 烈陽使者 自爆 蓄力排程 / sunfire emissary detonation scheduler
    ## Guide [ function monsters:chapter_3/sunfire_emissary/death/use ] >>> 烈陽使者 自爆 入口 / sunfire emissary detonation entry
    ## Guide [ function monsters:chapter_3/sunfire_emissary/death/fx/use ] >>> 烈陽使者 自爆 蓄力計時 / sunfire emissary detonation timer

# ===================================================

# Fx

execute \
    as @e[sort=arbitrary,tag=monsters.sunfire_emissary.fx.main,type=area_effect_cloud] at @s run \
function monsters:chapter_3/sunfire_emissary/death/fx/use


execute \
    if entity @n[sort=arbitrary,tag=monsters.sunfire_emissary.fx.main,type=area_effect_cloud] run \
schedule function monsters:chapter_3/sunfire_emissary/death/fx/main 1t