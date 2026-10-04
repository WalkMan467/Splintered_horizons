# 鍛造台 配方清單 夜幕 / forging table recipe list nightfall
#
# 執行者 : 玩家
#
# 由 sys:forging_table/act/crafting/entry 判斷過序號才會跑到這裡

tellraw @s [{"text":"\n"}]

tellraw @s [{"translate":"weapon.nightfall","color":"#b30000","italic":false,"bold":true}]

tellraw @s [{"font":"minecraft:space","text":"\ue003\ue002\ue000"},{"translate":"item.moonlight_star","color":"dark_purple","italic":false,"font":"minecraft:default"},{"text":"*5","font":"minecraft:default"}]
tellraw @s [{"font":"minecraft:space","text":"\ue003\ue002\ue000"},{"translate":"item.minecraft.stone_sword","color":"white","italic":false,"font":"minecraft:default"},{"text":"*1","font":"minecraft:default"},{"text":" ","font":"minecraft:default"},{"text":"(","color":"gray","font":"minecraft:default"},{"translate":"tips.sys.forging_table.crafting.or","color":"gray","font":"minecraft:default"},{"text":" ","font":"minecraft:default"},{"translate":"item.minecraft.copper_sword","color":"gray","italic":false,"font":"minecraft:default"},{"text":"*1","font":"minecraft:default","color":"gray"},{"text":")","color":"gray","font":"minecraft:default"}]
