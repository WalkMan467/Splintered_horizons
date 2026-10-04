# ===================================================
# 進入選武器房 / enter the weapon select room

    ## Guide [ function unstable_rift:main/in ] >>> 進入裂隙 / enter the rift
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/tp ] >>> 進入選武器房 / enter the weapon select room
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/roll ] >>> 骰 3 把防身武器 / roll the three starter weapons
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/act ] >>> 點到座位 / a pedestal got clicked
    ## Guide [ function unstable_rift:main/weapon_select/use ] >>> 選武器逾時倒數 / weapon select timeout tick
    ## Guide [ function unstable_rift:main/start ] >>> 正式開局 / start the run

# ===================================================

# 執行者 : 玩家
#
# 由 main/in 呼叫（config 的 weapon_select 要開）這支是區域專屬的：
# 房間座標、武器池、座位位置都在 weapon_select/ 底下，main/ 不需要知道
#
# 首位進房的玩家才會骰，之後進來的人看到的是同一組三把；
# 房間空了由 chapter_1/tick 收掉座位，下一輪才會重骰
#
# 選武器房不在裂隙入口的生態域裡，所以 main/detect 的離開判定不會踩到 ——
# 玩家身上有 unstable_rift.chapter_1.1 標籤就一律不算離開

tag @s add unstable_rift.chapter_1.1.weapon_select

scoreboard players reset @s unstable_rift.player.weapon_select.slot

execute \
    unless data storage unstable_rift:chapter_1.1 weapon_select.slot_1 run \
function unstable_rift:chapter_1/1/weapon_select/roll

# 逾時用的計時沒有這個的話選武器房沒有任何出口 ——
# 這裡還沒起算 unstable_rift.timer，玩家不選就會永遠卡在房間裡

$scoreboard players set @s unstable_rift.player.weapon_select $(select_time)

# execute in 會一併換維度，tp 只給座標是不換維度的

execute \
    in minecraft:the_end run \
tp @s 5590 60 4389 0 0

execute \
    if entity @s[tag=sys.exclude_display_world_area_title] run \
return 0

execute \
    if score @s sys.exclude_display_world_area_title matches 0.. run \
return 0

title @s title [{"text":""},{"text":"《","bold":true,"color":"#b96cff"},{"translate":"unstable_rift.chapter_1.1.name","fallback":"重塑空間","bold":true,"color":"#b96cff"},{"text":"》","bold":true,"color":"#b96cff"}]
title @s subtitle ["",{"text":"⚔","color":"#b96cff"},{"translate":"unstable_rift.chapter_1.1.weapon_select.area","fallback":"選擇 1 把武器作為防身","underlined":true,"color":"#b96cff"},{"text":"⚔","color":"#b96cff"}]
title @s times 20 40 10

playsound minecraft:voice.in_world_area voice @s ~ ~1 ~ 1 1

# ==============================
# Translate Keys
# ==============================
# "unstable_rift.chapter_1.1.name" : "重塑空間",
# "unstable_rift.chapter_1.1.weapon_select.area" : "選擇 1 把武器作為防身",
