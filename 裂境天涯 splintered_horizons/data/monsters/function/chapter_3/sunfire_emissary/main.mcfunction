# ===================================================
# 烈陽使者 主程式 / sunfire emissary main

    ## Guide [ function monsters:chapter_3/sunfire_emissary/main ] >>> 烈陽使者 主程式 / sunfire emissary main
    ## Guide [ function monsters:main ] >>> 怪物 主程式 / monsters main
    ## Guide [ function monsters:chapter_3/sunfire_emissary/1/main ] >>> 烈陽使者 技能1 分鏡 / sunfire emissary skill 1 timeline
    ## Guide [ function monsters:chapter_3/sunfire_emissary/death/actived_loop/main ] >>> 烈陽使者 燃燒態 環境音 / sunfire emissary burning ambience
    ## Guide [ function monsters:chapter_3/sunfire_emissary/main.monster ] >>> 烈陽使者 本體 冷卻檢查 / sunfire emissary self cooldown check

# ===================================================

# Skill 1

execute \
    as @s[tag=chapter_3.sunfire_emissary.1,type=husk] run \
function monsters:chapter_3/sunfire_emissary/1/main

# Monster Self

execute \
    as @s[tag=monsters.sunfire_emissary,type=husk] run \
function monsters:chapter_3/sunfire_emissary/main.monster


execute \
    as @s[tag=sunfire_actived,type=husk,tag=monsters.sunfire_emissary] at @s run \
particle minecraft:wax_on ~ ~1 ~ 0 0 0 40 5 normal @a

execute \
    as @s[tag=sunfire_actived,type=husk,tag=monsters.sunfire_emissary] at @s run \
scoreboard players add @s monster.sunfire_emissary.1.sunfire_actived.sfx 1

execute \
    as @s[tag=sunfire_actived,type=husk,tag=monsters.sunfire_emissary] at @s run \
function monsters:chapter_3/sunfire_emissary/death/actived_loop/main