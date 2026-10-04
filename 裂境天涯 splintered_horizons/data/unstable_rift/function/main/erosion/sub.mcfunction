# ===================================================
# 扣除侵蝕度 / subtract erosion

    ## Guide [ function unstable_rift:main/erosion/kill/any ] >>> 擊殺 普通怪物 / normal kill
    ## Guide [ function unstable_rift:chapter_1/erosion_kill ] >>> 第一章的擊殺扣除 / chapter 1 kill deduction
    ## Guide [ function unstable_rift:main/erosion/sub ] >>> 扣除侵蝕度 / subtract erosion

# ===================================================

# 參數 : area | erosion 開關
#
# 執行者 : 擊殺的玩家
#
# 扣除量放在 #unstable_rift.erosion.kill global.main，由 kill/* 設好再進來。
# 人不在這個區域裡就不扣 —— 在外面打怪不應該影響裂隙

# 這行不能開頭加 $ —— 開頭是 $ 的行必須至少含一個 $(...)，
# 不然載入時會噴 No variables in macro，整支 function 都進不去
execute \
    unless data storage unstable_rift:main args{erosion_sys:1b} run \
return 0

$execute \
    unless entity @s[tag=unstable_rift.$(area)] run \
return 0

$scoreboard players operation #unstable_rift.$(area).erosion global.main -= #unstable_rift.erosion.kill global.main

$execute \
    if score #unstable_rift.$(area).erosion global.main matches ..-1 run \
scoreboard players set #unstable_rift.$(area).erosion global.main 0
