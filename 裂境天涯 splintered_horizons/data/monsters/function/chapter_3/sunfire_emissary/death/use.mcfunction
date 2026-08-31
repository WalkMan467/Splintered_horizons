# ===================================================
# 烈陽使者 自爆 入口 / sunfire emissary detonation entry

    ## Guide [ function monsters:chapter_3/sunfire_emissary/death/use ] >>> 烈陽使者 自爆 入口 / sunfire emissary detonation entry
    ## Guide [ function monsters:chapter_3/sunfire_emissary/kill ] >>> 烈陽使者 死亡 觸發自爆 / sunfire emissary on kill
    ## Guide [ function monsters:chapter_3/sunfire_emissary/death/fx/main ] >>> 烈陽使者 自爆 蓄力排程 / sunfire emissary detonation scheduler
    ## Guide [ function monsters:chapter_3/sunfire_emissary/death/fx_2/use ] >>> 烈陽使者 自爆 球狀特效 入口 / sunfire emissary sphere fx entry

# ===================================================

summon area_effect_cloud ~ ~ ~ {Tags:["monsters.sunfire_emissary.fx.main"],custom_particle:{type:"block",block_state:"air"},Radius:0,Duration:42}
summon area_effect_cloud ~ ~1.5 ~ {Tags:["monsters.sunfire_emissary.fx_2.main","summon"],custom_particle:{type:"block",block_state:"air"},Radius:0,Duration:1}


execute \
    as @e[distance=..3,tag=monsters.sunfire_emissary.fx_2.main,tag=summon,type=area_effect_cloud] at @s rotated 0 -90 run \
function monsters:chapter_3/sunfire_emissary/death/fx_2/use

schedule function monsters:chapter_3/sunfire_emissary/death/fx/main 1t

playsound minecraft:entity.illusioner.prepare_blindness voice @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.warden.sonic_charge voice @a ~ ~1 ~ 0.75 1
playsound minecraft:voice.epic_choir voice @a ~ ~1 ~ 0.5 1.025