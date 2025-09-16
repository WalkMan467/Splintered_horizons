# exe : dummy

# identify item
data modify storage wma:data id set string entity @e[type=item,sort=nearest,limit=1] Item.id -6
execute if data storage wma:data {id:_boots} run function wma:dummy/exchange_armor/1 {slot:0}
execute if data storage wma:data {id:_boots} run title @a[distance=..7] actionbar [{"text": "<訓練人偶> 嗯？新鞋子？ 謝謝主人owo"}]
execute if data storage wma:data {id:_boots} run return 0

data modify storage wma:data id set string entity @e[type=item,sort=nearest,limit=1] Item.id -9
execute if data storage wma:data {id:_leggings} run function wma:dummy/exchange_armor/1 {slot:1}
execute if data storage wma:data {id:_leggings} run title @a[distance=..7] actionbar [{"text": "<訓練人偶> 嗯？新褲子？ 勇者才不穿褲子呢... 但為了你我願意穿一下"}]
execute if data storage wma:data {id:_leggings} run return 0

data modify storage wma:data id set string entity @e[type=item,sort=nearest,limit=1] Item.id -11
execute if data storage wma:data {id:_chestplate} run function wma:dummy/exchange_armor/1 {slot:2}
execute if data storage wma:data {id:_chestplate} run title @a[distance=..7] actionbar [{"text": "<訓練人偶> 嗯？新衣服？ 謝謝主人owo"}]
execute if data storage wma:data {id:_chestplate} run return 0

scoreboard players set 3 wma.life 3
function wma:dummy/exchange_armor/1 {slot:3}
title @a[distance=..7] actionbar [{"text": "<訓練人偶> 嗯？新帽子？ 謝謝主人owo"}]