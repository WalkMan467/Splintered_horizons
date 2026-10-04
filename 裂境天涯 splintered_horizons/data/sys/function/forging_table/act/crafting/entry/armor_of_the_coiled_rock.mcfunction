# 鍛造台 配方清單 盤岩之甲 / forging table recipe list armor_of_the_coiled_rock
#
# 執行者 : 玩家
#
# 由 sys:forging_table/act/crafting/entry 判斷過序號才會跑到這裡

tellraw @s [{"text":"\n"}]

tellraw @s [{"translate":"armor.armor_of_the_coiled_rock","color":"#b37400","italic":false,"bold":true}]

tellraw @s [{"font":"minecraft:space","text":"\ue003\ue002\ue000"},{"translate":"item.rockbound_crystal","color":"#b19000","italic":false,"font":"minecraft:default"},{"text":"*3","font":"minecraft:default"}]
tellraw @s [{"font":"minecraft:space","text":"\ue003\ue002\ue000"},{"translate":"item.minecraft.leather_chestplate","color":"white","italic":false,"font":"minecraft:default"},{"text":"*1","font":"minecraft:default"}]
