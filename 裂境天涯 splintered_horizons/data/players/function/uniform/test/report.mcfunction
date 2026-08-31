# 執行者 : 玩家
# 把目前狀態印出來，方便驗證不變式：
#     櫃子有東西 (tag player.uniform.locker) ⟺ 玩家身上是制服

tellraw @s [{"text":"[制服] ","color":"gray"},{"text":"目前 player.uniform = ","color":"white"},{score:{name:"@s",objective:"player.uniform"},"color":"aqua"}]

execute \
    if entity @s[tag=player.uniform.locker] run \
tellraw @s [{"text":"[制服] ","color":"gray"},{"text":"櫃子: 有東西（身上應該是制服）","color":"gold"}]

execute \
    unless entity @s[tag=player.uniform.locker] run \
tellraw @s [{"text":"[制服] ","color":"gray"},{"text":"櫃子: 空的（身上應該是便服）","color":"green"}]
