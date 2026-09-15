# ===================================================
# 弓 終焉凝視者 箭矢 釋放計算 / bow the endwatcher arrow release calculate

    ## Guide [ function weapons:type/bow/the_endwatcher/arrow/release_calc ] >>> 弓 終焉凝視者 箭矢 釋放計算 / bow the endwatcher arrow release calculate
    ## Guide [ function weapons:type/bow/the_endwatcher/arrow/hit ] >>> 弓 終焉凝視者 箭矢 命中 / bow the endwatcher arrow hit
    ## Guide [ function weapons:type/bow/the_endwatcher/ultimate/end ] >>> 弓 終焉凝視者 終焉技 開眼結束 / bow the endwatcher ultimate awaken end

# ===================================================

# 執行者 : 射箭的玩家
#
# 放當下累積值的 20%，放完就從累積值扣掉，所以後面幾發會越來越小。

title @s title {"text":"\uE004","font":"minecraft:screen"}
title @s subtitle ""
title @s times 10 0 10


scoreboard players set #100 weapon.the_endwatcher.stored 100
scoreboard players set #20 weapon.the_endwatcher.stored 20

scoreboard players operation #rel weapon.the_endwatcher.stored = @s weapon.the_endwatcher.stored
scoreboard players operation #rel weapon.the_endwatcher.stored *= #20 weapon.the_endwatcher.stored
scoreboard players operation #rel weapon.the_endwatcher.stored /= #100 weapon.the_endwatcher.stored

scoreboard players operation @s weapon.the_endwatcher.stored -= #rel weapon.the_endwatcher.stored

scoreboard players remove @s weapon.the_endwatcher.awaken 1

# 放完更新顯示 : 還有次數就顯示剩幾次，剛好放完就會變回共鳴值那條

scoreboard players set @s player.actionbar.weapon.the_endwatcher 40

execute \
    unless score @s weapon.the_endwatcher.awaken matches 1.. run \
function weapons:type/bow/the_endwatcher/ultimate/end

execute \
    store result storage weapons:the_endwatcher value float 0.001 run \
scoreboard players get #rel weapon.the_endwatcher.stored
