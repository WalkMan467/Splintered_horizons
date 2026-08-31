# ===================================================
# 暗蝕的烈陽 自爆 引爆 / sun of the abyssal eclipse detonate

    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/death/explosion/use ] >>> 暗蝕的烈陽 自爆 引爆 / sun of the abyssal eclipse detonate
    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/death/fx/use ] >>> 暗蝕的烈陽 自爆 蓄力計時 / sun of the abyssal eclipse detonation timer
    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/death/explosion/summon ] >>> 暗蝕的烈陽 自爆 生成燃燒態本體 / sun of the abyssal eclipse spawn burning form
    ## Guide [ function players:effect/ignite/use ] >>> use

# ===================================================

kill @s[tag=monsters.sun_of_the_abyssal_eclipse.fx.main,type=area_effect_cloud]

particle explosion_emitter ~ ~1 ~ 0 0 0 0 1 force @a
playsound minecraft:entity.generic.explode voice @a ~ ~1 ~ 1 0.5
playsound minecraft:block.fire.extinguish voice @a ~ ~1 ~ 1 0.5
playsound minecraft:block.fire.ambient voice @a ~ ~1 ~ 1 1
playsound minecraft:entity.warden.sonic_boom voice @a ~ ~1 ~ 1 1

function monsters:other/sun_of_the_abyssal_eclipse/death/explosion/summon


execute \
    as @a[distance=..5,gamemode=!spectator,gamemode=!creative] at @s run \
function players:effect/ignite/use {duration:8}

execute \
    as @a[distance=..5,gamemode=!spectator,gamemode=!creative] run \
damage @s 6 explosion by @n[tag=monsters.sun_of_the_abyssal_eclipse,type=husk,distance=..7]