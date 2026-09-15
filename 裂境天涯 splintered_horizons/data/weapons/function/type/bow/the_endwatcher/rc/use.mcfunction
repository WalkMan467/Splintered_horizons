# ===================================================
# 弓 終焉凝視者 右鍵 蓄力 / bow the endwatcher right click charge

    ## Guide [ function weapons:type/bow/the_endwatcher/rc/use ] >>> 弓 終焉凝視者 右鍵 蓄力 / bow the endwatcher right click charge
    ## Guide [ function weapons:type/bow/the_endwatcher/rc/stage1 ] >>> 弓 終焉凝視者 右鍵 第一段完成 / bow the endwatcher right click stage 1
    ## Guide [ function weapons:type/bow/the_endwatcher/rc/stage2 ] >>> 弓 終焉凝視者 右鍵 第二段完成 / bow the endwatcher right click stage 2
    ## Guide [ function weapons:type/bow/the_endwatcher/rc/main ] >>> 弓 終焉凝視者 右鍵 主迴圈 / bow the endwatcher right click loop

# ===================================================

# 終末之光
#
# 執行者 : 正在拉弓的玩家
# 由 weapons:rc/1 的 using_item 進度每 tick 呼叫一次（跟射手座同一套）。
#
# 第一段 20t 拉滿；第二段再 10t，開眼期間再縮短 50% 變成 5t。
# 沒有終焉閃電、也不在開眼中的話，第二段不會解鎖。

scoreboard players set @s weapon.the_endwatcher.use 1
tag @s add the_endwatcher.user

scoreboard players add @s weapon.the_endwatcher.hold_down 1

# 第一段

execute \
    if score @s weapon.the_endwatcher.hold_down matches 20 run \
function weapons:type/bow/the_endwatcher/rc/stage1

# 第二段的門檻

scoreboard players set #need weapon.the_endwatcher.hold_down 30

execute \
    if score @s weapon.the_endwatcher.awaken matches 1.. run \
scoreboard players set #need weapon.the_endwatcher.hold_down 25

# 開眼期間不用終焉閃電也能拉第二段

execute \
    unless score @s player.finality_tunder matches 1.. \
    unless score @s weapon.the_endwatcher.awaken matches 1.. run \
return 0

execute \
    if score @s weapon.the_endwatcher.hold_down = #need weapon.the_endwatcher.hold_down run \
function weapons:type/bow/the_endwatcher/rc/stage2

# 已經在第二段的話，每 tick 把「等著標記箭矢」的旗標壓回 5。
# 放開弓之後這個旗標還會再撐 5 tick，剛生出來的箭就是在那幾 tick 內被標到的。

execute \
    if score @s weapon.the_endwatcher.stage matches 2 run \
scoreboard players set @s weapon.the_endwatcher.pending 5
