# 執行者 : 一座還沒有 id 的滑索台 interaction
#
# 鄰接表是拿 id 當鍵的，所以每座塔一定要有一個唯一的號碼
# 舊版本放下去的塔（或是 setup 沒跑到的）id 是未設定，那樣所有比對都會
# 同時成立，選目標就會變成亂數這支就是補號用的

# 先讓 #index 追上場上最大的 id，避免補出來的號碼跟既有的撞號
# @s 自己沒有 id，if score 對未設定的分數不成立，所以不會把自己算進去
execute \
    as @e[tag=sys.zipline_platform.act,type=interaction] \
    if score @s sys.zipline_platform.id > #index sys.zipline_platform.id run \
scoreboard players operation #index sys.zipline_platform.id = @s sys.zipline_platform.id

scoreboard players add #index sys.zipline_platform.id 1

scoreboard players operation @s sys.zipline_platform.id = #index sys.zipline_platform.id

# 盔甲座是畫線的端點，也要拿到同一個號碼（setup 本來就是這樣配的）
execute \
    on passengers \
    if entity @s[tag=sys.zipline_platform.as] run \
scoreboard players operation @s sys.zipline_platform.id = #index sys.zipline_platform.id
