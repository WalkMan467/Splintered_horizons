# ===================================================
# 選武器逾時倒數 / weapon select timeout tick

    ## Guide [ function unstable_rift:main/weapon_select/use ] >>> 選武器逾時倒數 / weapon select timeout tick
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/tp ] >>> 進入選武器房 / enter the weapon select room
    ## Guide [ function unstable_rift:chapter_1/1/weapon_select/confirm ] >>> 確定選這把 / take this weapon
    ## Guide [ function unstable_rift:main/clear ] >>> 收尾清理 / tear down

# ===================================================

# 參數 : area（其餘轉給 clear）
#
# 執行者 : 玩家（chapter_1/loop 每 tick 呼叫）
#
# 選武器房還沒起算 unstable_rift.timer，所以那條倒數救不了卡在房間裡的人
# 這支是唯一的保險：時間到就當作沒選，還背包、送回進來前的座標
# 斷線重連的人也靠它救 —— 標籤跟分數都留在玩家身上，重連後繼續倒數

$execute \
    unless entity @s[tag=unstable_rift.$(area).weapon_select] run \
return 0

execute \
    unless score @s unstable_rift.player.weapon_select matches 1.. run \
return 0

scoreboard players remove @s unstable_rift.player.weapon_select 1

execute \
    if score @s unstable_rift.player.weapon_select matches 1.. run \
return 0

$tag @s remove unstable_rift.$(area).weapon_select

scoreboard players reset @s unstable_rift.player.weapon_select.slot

tellraw @s [{"text":"[","color":"white"},{"text":"⚔","color":"#b96cff"},{"text":"]","color":"white"},{"text":" "},{"translate":"unstable_rift.weapon_select.timeout","fallback":"太久沒選武器，你被送回來了","color":"red","bold":true}]

playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 .5 1

function unstable_rift:main/clear with storage unstable_rift:main args

# ==============================
# Translate Keys
# ==============================
# "unstable_rift.weapon_select.timeout" : "太久沒選武器，你被送回來了",
