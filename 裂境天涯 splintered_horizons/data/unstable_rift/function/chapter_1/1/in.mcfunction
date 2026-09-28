# ===================================================
# 進入破碎之城 / enter the broken city

    ## Guide [ function unstable_rift:chapter_1/1/in ] >>> 進入破碎之城 / enter the broken city
    ## Guide [ function unstable_rift:chapter_1/1/out ] >>> 離開破碎之城 / leave the broken city
    ## Guide [ function unstable_rift:chapter_1/1/timer/use ] >>> 倒數計時 / countdown tick
    ## Guide [ function unstable_rift:chapter_1/1/bossbar/summon ] >>> 建立專屬血條 / create the player's own bossbar
    ## Guide [ function unstable_rift:chapter_1/1/back/record ] >>> 紀錄進入前的座標 / record the position before entering

# ===================================================

advancement revoke @s only unstable_rift:chapter_1/1/out

# 已經在裡面就不要再跑一次。
#
# 沒有這道守衛的話，第二次進來會把「已經被 clear 清空的背包」存回同一個袋子，
# 覆蓋掉第一次存進去的真正家當 —— 玩家的東西就永遠拿不回來了。

execute \
    if entity @s[tag=unstable_rift.chapter_1.1] run \
return 0

# 先記座標再動背包，這時候人還站在進來的那一點上
function unstable_rift:chapter_1/1/back/record

tag @s add unstable_rift.chapter_1.1

function players:inventory/save {bag:"overworld"}

clear @s

scoreboard players set @s unstable_rift.timer 12000

execute \
    unless score @s unstable_rift.chapter_1.1.display.id matches -1073741823..1073741823 \
    store result score @s unstable_rift.chapter_1.1.display.id run \
random value -1073741823..1073741823

execute \
    store result storage unstable_rift:chapter_1.1 temp.id int 1 run \
scoreboard players get @s unstable_rift.chapter_1.1.display.id

function unstable_rift:chapter_1/1/bossbar/summon with storage unstable_rift:chapter_1.1 temp
