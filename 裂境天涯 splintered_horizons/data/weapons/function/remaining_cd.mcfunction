# 執行者 : 玩家
# 到期時間制專用顯示剩餘冷卻時間
#
# 參數 : weapon  武器名，對應 objective weapon.<weapon>.cd
#          該 objective 存的是「到期時的 #gametime」，不是剩餘 tick
#
# 依賴 : #gametime global.main（每 tick 遞增的全域計時器）
#
# 與 weapons:rc/failure/skill_use_failed 同一套換算，差別只在於
# 倒數制直接拿 cd 值，到期時間制要先減掉現在的 gametime。

scoreboard players set %2 weapon.cd.math 2
scoreboard players set %10 weapon.cd.math 10

$scoreboard players operation %temp weapon.cd.math = @s weapon.$(weapon).cd
scoreboard players operation %temp weapon.cd.math -= #gametime global.main

# 注：nbt 文字元件渲染字串標籤時會連 SNBT 的引號一起印出來，
#     所以改用 score 元件：整數位、"."、小數位三段拼。
scoreboard players operation %temp weapon.cd.math /= %2 weapon.cd.math

scoreboard players operation %sec weapon.cd.math = %temp weapon.cd.math
scoreboard players operation %sec weapon.cd.math /= %10 weapon.cd.math

scoreboard players operation %dec weapon.cd.math = %temp weapon.cd.math
scoreboard players operation %dec weapon.cd.math %= %10 weapon.cd.math

title @s title ""
title @s subtitle [{"translate": "weapon.cd","color": "green"},{"text":"\uE000\uE010","font":"space"},{score:{name:"%sec",objective:"weapon.cd.math"},"color":"gold"},{"text":".","color":"gold"},{score:{name:"%dec",objective:"weapon.cd.math"},"color":"gold"},{"text":"s","color":"gold"}]
title @s times 0 20 20

playsound minecraft:block.respawn_anchor.deplete voice @s ~ ~1 ~ 3 2

scoreboard players set @s player.click.interval 20
