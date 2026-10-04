# ===================================================
# 正式開局 / start the run

    ## Guide [ function unstable_rift:main/in ] >>> 進入裂隙 / enter the rift
    ## Guide [ function unstable_rift:main/start ] >>> 正式開局 / start the run
    ## Guide [ function unstable_rift:chapter_1/1/land ] >>> 破碎之城 降落點 / broken city landing spots
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/confirm ] >>> 確定選這把 / take this weapon
    ## Guide [ function unstable_rift:main/timer/use ] >>> 倒數計時 / countdown tick
    ## Guide [ function unstable_rift:main/bossbar/summon ] >>> 建立專屬血條 / create the player's own bossbar

# ===================================================
# 參數 : path | area | time 倒數 tick | title / fallback 血條標題
#
# 執行者 : 玩家
#
# 從 main/in 拆出來的後半段：降落、起算倒數、開血條
# 沒有選武器房的區域由 main/in 直接接過來，有的話是 weapon_select/confirm
# 按下確定之後才呼叫 —— 這樣選武器的時間不會被算進那 20 分鐘
#
# 標籤跟背包在 main/in 就處理掉了，這裡不碰

$function unstable_rift:$(path)/land

$scoreboard players set @s unstable_rift.timer $(time)

$execute \
    unless score @s unstable_rift.$(area).display.id matches -1073741823..1073741823 \
    store result score @s unstable_rift.$(area).display.id run \
random value -1073741823..1073741823

$execute \
    store result storage unstable_rift:main args.id int 1 run \
scoreboard players get @s unstable_rift.$(area).display.id

function unstable_rift:main/bossbar/summon with storage unstable_rift:main args
