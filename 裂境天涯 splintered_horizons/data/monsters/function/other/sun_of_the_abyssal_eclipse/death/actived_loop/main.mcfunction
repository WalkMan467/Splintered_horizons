# ===================================================
# 暗蝕的烈陽 燃燒態 環境音 / sun of the abyssal eclipse burning ambience

    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/death/actived_loop/main ] >>> 暗蝕的烈陽 燃燒態 環境音 / sun of the abyssal eclipse burning ambience
    ## Guide [ function monsters:other/sun_of_the_abyssal_eclipse/main ] >>> 暗蝕的烈陽 主程式 / sun of the abyssal eclipse main

# ===================================================

execute \
    unless score @s monster.sun_of_the_abyssal_eclipse.1.sunfire_actived.sfx matches 10.. run \
return 0

playsound minecraft:block.fire.ambient voice @a ~ ~1 ~ 1 2

scoreboard players reset @s monster.sun_of_the_abyssal_eclipse.1.sunfire_actived.sfx