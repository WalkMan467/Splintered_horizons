# ===================================================
# 烈陽使者 自爆 引爆 / sunfire emissary detonate

    ## Guide [ function monsters:chapter_3/sunfire_emissary/death/explosion/use ] >>> 烈陽使者 自爆 引爆 / sunfire emissary detonate
    ## Guide [ function monsters:chapter_3/sunfire_emissary/death/fx/use ] >>> 烈陽使者 自爆 蓄力計時 / sunfire emissary detonation timer
    ## Guide [ function monsters:chapter_3/sunfire_emissary/death/explosion/run ] >>> 烈陽使者 自爆 生成燃燒態本體 / sunfire emissary spawn burning form

# ===================================================

particle explosion_emitter ~ ~1 ~ 0 0 0 0 1 force @a
playsound minecraft:entity.generic.explode voice @a ~ ~1 ~ 1 0.5
playsound minecraft:block.fire.extinguish voice @a ~ ~1 ~ 1 0.5
playsound minecraft:block.fire.ambient voice @a ~ ~1 ~ 1 1
playsound minecraft:entity.warden.sonic_boom voice @a ~ ~1 ~ 1 1

function monsters:chapter_3/sunfire_emissary/death/explosion/run

function particle:time_space_wave/use

kill @s[tag=monsters.sunfire_emissary.fx.main,type=area_effect_cloud]