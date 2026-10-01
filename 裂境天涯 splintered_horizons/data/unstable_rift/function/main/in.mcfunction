# ===================================================
# 進入裂隙 / enter the rift

    ## Guide [ function unstable_rift:main/in ] >>> 進入裂隙 / enter the rift
    ## Guide [ function unstable_rift:main/back/record ] >>> 紀錄進入前的座標 / record the position before entering
    ## Guide [ function unstable_rift:chapter_1/1/tp ] >>> 進入破碎之城 / enter the broken city
    ## Guide [ function unstable_rift:main/timer/use ] >>> 倒數計時 / countdown tick
    ## Guide [ function unstable_rift:main/bossbar/summon ] >>> 建立專屬血條 / create the player's own bossbar
    ## Guide [ function unstable_rift:main/clear ] >>> 收尾清理 / tear down

# ===================================================
# 參數 : path | area | time 倒數 tick | bag 背包袋子名
#        title / fallback 血條標題

$advancement revoke @s only unstable_rift:$(path)/out

# 已經在裡面就不要再跑一次。
#
# 沒有這道守衛的話，第二次進來會把「已經被 clear 清空的背包」存回同一個袋子，
# 覆蓋掉第一次存進去的真正家當 —— 玩家的東西就永遠拿不回來了。
# 座標也會被覆蓋成裂隙內部的座標，回程就等於沒出去。

$execute \
    if entity @s[tag=unstable_rift.$(area)] run \
return 0

# 先記座標，這時候人還站在進來的那一點上

function unstable_rift:main/back/record

# 再傳進去。降落點由各區域自己的 land 決定 —— 固定一點或隨機表都行，
# 這一層不需要知道。

$function unstable_rift:$(path)/land

$tag @s add unstable_rift.$(area)

$function players:inventory/save {bag:"$(bag)"}

clear @s

$scoreboard players set @s unstable_rift.timer $(time)

$execute \
    unless score @s unstable_rift.$(area).display.id matches -1073741823..1073741823 \
    store result score @s unstable_rift.$(area).display.id run \
random value -1073741823..1073741823

$execute \
    store result storage unstable_rift:main args.id int 1 run \
scoreboard players get @s unstable_rift.$(area).display.id

function unstable_rift:main/bossbar/summon with storage unstable_rift:main args
