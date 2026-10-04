# 鍛造台 配方清單 盤岩頭盔 / forging table recipe list coiled_rock_helmet
#
# 執行者 : 玩家
#
# 由 sys:forging_table/act/crafting/entry 判斷過序號才會跑到這裡

tellraw @s [{"text":"\n"}]

tellraw @s [{"translate":"armor.coiled_rock_helmet","color":"#b37400","italic":false,"bold":true}]

tellraw @s [{"font":"minecraft:space","text":"\ue003\ue002\ue000"},{"translate":"item.rockbound_crystal","color":"#b19000","italic":false,"font":"minecraft:default"},{"text":"*5","font":"minecraft:default"}]
tellraw @s [{"font":"minecraft:space","text":"\ue003\ue002\ue000"},{"translate":"item.minecraft.leather_helmet","color":"white","italic":false,"font":"minecraft:default"},{"text":"*1","font":"minecraft:default"}]
