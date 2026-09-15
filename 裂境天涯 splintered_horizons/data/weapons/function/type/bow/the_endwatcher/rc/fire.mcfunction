# ===================================================
# 弓 終焉凝視者 右鍵 放箭 / bow the endwatcher right click fire

    ## Guide [ function weapons:type/bow/the_endwatcher/rc/fire ] >>> 弓 終焉凝視者 右鍵 放箭 / bow the endwatcher right click fire
    ## Guide [ function weapons:type/bow/the_endwatcher/rc/main ] >>> 弓 終焉凝視者 右鍵 主迴圈 / bow the endwatcher right click loop
    ## Guide [ function weapons:type/bow/the_endwatcher/ultimate/use ] >>> 弓 終焉凝視者 終焉技 開眼 / bow the endwatcher ultimate awaken
    ## Guide [ function weapons:type/bow/the_endwatcher/rc/mark_scan ] >>> 弓 終焉凝視者 右鍵 掃描箭矢 / bow the endwatcher right click scan arrow

# ===================================================

# 執行者 : 玩家
#
# 第二段蓄力射出去的那一發：
#   共鳴值滿 100% 且終焉之眼就緒 -> 直接發動終焉迴光（這一發本身就不用扣終焉閃電）
#   否則扣 1 個終焉閃電
#   開眼期間不扣

# 沒有值的玩家當作「現在就緒」

execute \
    unless score @s player.ultimate matches -2147483648..2147483647 run \
scoreboard players operation @s player.ultimate = #gametime global.main

execute \
    if score @s weapon.the_endwatcher.resonance matches 100.. \
    unless score @s weapon.the_endwatcher.awaken matches 1.. \
    if score #gametime global.main >= @s player.ultimate run \
function weapons:type/bow/the_endwatcher/ultimate/use

execute \
    unless score @s weapon.the_endwatcher.awaken matches 1.. \
    if score @s player.finality_tunder matches 1.. run \
scoreboard players remove @s player.finality_tunder 1

# 箭矢的標記交給 rc/mark_scan（每 tick 跑，才抓得到近距離的命中）

particle dust{color:[0.808,0.000,0.000],scale:1.2} ~ ~1 ~ 0.3 0.3 0.3 0 15 normal @a
playsound minecraft:entity.breeze.shoot voice @a ~ ~1 ~ 1 0.6
