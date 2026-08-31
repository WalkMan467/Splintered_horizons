# ===================================================
# 暗蝕的烈陽 主程式 / sun of the abyssal eclipse main

    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/main ] >>> 暗蝕的烈陽 主程式 / sun of the abyssal eclipse main
    ## Guide [ function monsters:main ] >>> 怪物 主程式 / monsters main
    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/1/main ] >>> 暗蝕的烈陽 技能1 分鏡 / sun of the abyssal eclipse skill 1 timeline
    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/death/actived_loop/main ] >>> 暗蝕的烈陽 燃燒態 環境音 / sun of the abyssal eclipse burning ambience
    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/death/fx/use ] >>> 暗蝕的烈陽 自爆 蓄力計時 / sun of the abyssal eclipse detonation timer
    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/main.monster ] >>> 暗蝕的烈陽 本體 冷卻檢查 / sun of the abyssal eclipse self cooldown check

# ===================================================

execute \
    if score @s sys.skills_freeze matches 0.. run \
return 0

# Skill 1

execute \
    as @s[tag=other.sun_of_the_abyssal_eclipse.1,type=husk] run \
function monsters:other/sun_of_the_abyssal_eclipse/1/main

# Monster Self

execute \
    as @s[tag=monsters.sun_of_the_abyssal_eclipse,type=husk] run \
function monsters:other/sun_of_the_abyssal_eclipse/main.monster

# Fx

execute \
    as @s[tag=monsters.sun_of_the_abyssal_eclipse.fx.main,type=area_effect_cloud] at @s run \
function monsters:other/sun_of_the_abyssal_eclipse/death/fx/use


execute \
    as @s[tag=sunfire_actived,type=husk,tag=monsters.sun_of_the_abyssal_eclipse] at @s run \
particle squid_ink ~ ~1 ~ 0 0 0 0.25 5 normal @a

execute \
    as @s[tag=sunfire_actived,type=husk,tag=monsters.sun_of_the_abyssal_eclipse] at @s run \
scoreboard players add @s monster.sun_of_the_abyssal_eclipse.1.sunfire_actived.sfx 1

execute \
    as @s[tag=sunfire_actived,type=husk,tag=monsters.sun_of_the_abyssal_eclipse] at @s run \
function monsters:other/sun_of_the_abyssal_eclipse/death/actived_loop/main