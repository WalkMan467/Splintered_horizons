# ===================================================
# 確定選這把 / take this weapon

    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/ask ] >>> 跳確認介面 / open the confirm prompt
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/confirm ] >>> 確定選這把 / take this weapon
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/confirm/give ] >>> 發武器 / hand the weapon over
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/success ] >>> 選定特效 / the pick feedback
    ## Guide [ function unstable_rift:chapter_1/1/config ] >>> 破碎之城 參數 / broken city config
    ## Guide [ function unstable_rift:main/start ] >>> 正式開局 / start the run

# ===================================================

# 執行者 : 玩家（players:detect/click_event_trigger 的 29）
#
# 弓額外補 64 隻箭矢，不然進去只能拿弓當棍子用
#
# 最後兩行是正式開局：先跑自己的 config 把參數寫回 storage，再叫 main/start
# 降落、起算倒數、開血條不能省掉 config —— click_event_trigger 跟
# chapter_1/loop 是兩條不同的呼叫路徑，args 裡放的不保證是這一區的參數

execute \
    unless entity @s[tag=unstable_rift.chapter_1.1.weapon_select] run \
return 0

execute \
    unless score @s unstable_rift.player.weapon_select.slot matches 1..3 run \
return 0

execute \
    if score @s unstable_rift.player.weapon_select.slot matches 1 run \
data modify storage unstable_rift:chapter_1.1 weapon_select.ask set from storage unstable_rift:chapter_1.1 weapon_select.slot_1

execute \
    if score @s unstable_rift.player.weapon_select.slot matches 2 run \
data modify storage unstable_rift:chapter_1.1 weapon_select.ask set from storage unstable_rift:chapter_1.1 weapon_select.slot_2

execute \
    if score @s unstable_rift.player.weapon_select.slot matches 3 run \
data modify storage unstable_rift:chapter_1.1 weapon_select.ask set from storage unstable_rift:chapter_1.1 weapon_select.slot_3

function unstable_rift:chapter_1/1/weapon_select/confirm/give with storage unstable_rift:chapter_1.1 weapon_select.ask

execute \
    if data storage unstable_rift:chapter_1.1 weapon_select.ask{arrow:1b} run \
give @s arrow 64

data remove storage unstable_rift:chapter_1.1 weapon_select.ask

tag @s remove unstable_rift.chapter_1.1.weapon_select

scoreboard players reset @s unstable_rift.player.weapon_select
scoreboard players reset @s unstable_rift.player.weapon_select.slot

function unstable_rift:chapter_1/1/weapon_select/success

function unstable_rift:chapter_1/1/config
function unstable_rift:main/start with storage unstable_rift:main args
