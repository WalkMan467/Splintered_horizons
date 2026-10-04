# 鍛造台 配方清單 終焉鎬 / forging table recipe list finality_pickaxe
#
# 執行者 : 玩家
#
# 由 sys:forging_table/act/crafting/entry 判斷過序號才會跑到這裡

tellraw @s [{"text":"\n"}]

tellraw @s [{"translate":"weapon.finality_pickaxe","color":"#e00000","italic":false,"bold":true}]

tellraw @s [{"font":"minecraft:space","text":"\ue003\ue002\ue000"},{"translate":"item.finality_ingot","color":"dark_red","italic":false,"font":"minecraft:default"},{"text":"*5","font":"minecraft:default"}]
tellraw @s [{"font":"minecraft:space","text":"\ue003\ue002\ue000"},{"translate":"item.minecraft.iron_pickaxe","color":"white","italic":false,"font":"minecraft:default"},{"text":"*1","font":"minecraft:default"}]
