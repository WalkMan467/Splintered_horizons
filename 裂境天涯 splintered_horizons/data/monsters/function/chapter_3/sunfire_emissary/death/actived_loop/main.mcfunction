# ===================================================
# 烈陽使者 燃燒態 環境音 / sunfire emissary burning ambience

    ## Guide [ function monsters:chapter_3/sunfire_emissary/death/actived_loop/main ] >>> 烈陽使者 燃燒態 環境音 / sunfire emissary burning ambience
    ## Guide [ function monsters:chapter_3/sunfire_emissary/main ] >>> 烈陽使者 主程式 / sunfire emissary main

# ===================================================

execute \
    unless score @s monster.sunfire_emissary.1.sunfire_actived.sfx matches 10.. run \
return 0

playsound minecraft:block.fire.ambient voice @a ~ ~1 ~ 1 2

scoreboard players reset @s monster.sunfire_emissary.1.sunfire_actived.sfx