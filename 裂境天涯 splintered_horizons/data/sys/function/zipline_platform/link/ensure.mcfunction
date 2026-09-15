# 執行者 : 還沒有連線資料的滑索台盔甲座，執行位置在它身上
#
# 連線清單存在一個騎在盔甲座上的 marker 裡。
#
# 為什麼用 marker：記分板一個實體只能存一個數字，存不下「這座塔連到哪幾座」
# 這種清單。marker 的 data 欄位是原生的任意 NBT，而且清單存成複合標籤
# （links:[{id:2},{id:4}]）之後，原版就查得動「清單裡有沒有 2」：
#
#     execute if data entity @s data.links[{id:2}] run ...
#
# 配上巨集把 2 換成 $(id)，就能查任意一座塔。這就是鄰接表。
#
# 掛在盔甲座底下而不是 interaction 底下，是因為畫線的端點就是盔甲座，
# on passengers / on vehicle 一步就能在「幾何」和「連線資料」之間互轉。

execute \
    unless score @s sys.zipline_platform.id matches -2147483648..2147483647 run \
return 0

summon marker ~ ~ ~ {Tags:["sys.zipline_platform.link","sys.zipline_platform.link.new"],data:{links:[]}}

scoreboard players operation @n[tag=sys.zipline_platform.link.new,distance=..1,type=marker] sys.zipline_platform.id = @s sys.zipline_platform.id

ride @n[tag=sys.zipline_platform.link.new,distance=..1,type=marker] mount @s

tag @e[tag=sys.zipline_platform.link.new,type=marker] remove sys.zipline_platform.link.new

tag @s add sys.zipline_platform.linked
