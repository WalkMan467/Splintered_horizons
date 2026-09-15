# 執行者 : 連線模式中的玩家，執行位置在玩家身上
#
# 把起點塔標出來，不然按了左鍵之後看不出自己選到哪一座。

scoreboard players operation #origin sys.zipline_platform.link = @s sys.zipline_platform.link

execute \
    as @e[tag=sys.zipline_platform.as,distance=..60,type=armor_stand] \
    if score @s sys.zipline_platform.id = #origin sys.zipline_platform.link at @s run \
particle end_rod ~ ~ ~ 0.3 1.5 0.3 0 12 force @a
