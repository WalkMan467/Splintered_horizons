# ===================================================
# 確認 / 查看打法 按鈕列 / the confirm and guide button row

    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/ask/tellraw ] >>> 確認介面文字 / the confirm prompt text
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/guide/tellraw ] >>> 打法介紹文字 / the weapon guide text
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/confirm ] >>> 確定選這把 / take this weapon
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/guide ] >>> 查看武器打法 / show the weapon guide

    ## 29 接 confirm，30 接 guide，兩個 id 都註冊在 players:detect/click_event_trigger

# ===================================================

tellraw @s ["",{"font":"minecraft:default","text":"☞ ","color":"dark_gray"},{text:"[",bold:true,color:"dark_green",click_event:{action:"run_command",command:"trigger player.detect.click_event.trigger set 29"}},{translate:"dialog.main.confirm",bold:true,underlined:true,color:"dark_green",click_event:{action:"run_command",command:"trigger player.detect.click_event.trigger set 29"}},{text:"]",bold:true,color:"dark_green",click_event:{action:"run_command",command:"trigger player.detect.click_event.trigger set 29"}},{text:"    "},{text:"[",bold:true,color:"gold",click_event:{action:"run_command",command:"trigger player.detect.click_event.trigger set 30"}},{translate:"unstable_rift.chapter_1.1.weapon_select.guide",fallback:"查看武器打法",bold:true,underlined:true,color:"gold",click_event:{action:"run_command",command:"trigger player.detect.click_event.trigger set 30"}},{text:"]",bold:true,color:"gold",click_event:{action:"run_command",command:"trigger player.detect.click_event.trigger set 30"}}]

# ==============================
# Translate Keys
# ==============================
# "unstable_rift.chapter_1.1.weapon_select.guide" : "查看武器打法",
