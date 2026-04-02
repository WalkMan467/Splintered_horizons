playsound minecraft:entity.cat.death voice @s ~ ~ ~ 1 1 1
playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 .5 1
playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 .61 1


tellraw @s ""
tellraw @s [{"font":"minecraft:space","text":"\ue003\ue002\ue000"},{"font":"minecraft:default","text":"[","color":"white","bold":true},{"font":"minecraft:default","text":"📢","color":"blue","bold":false},{"font":"minecraft:default","text":"]","color":"white","bold":true},{"text":" ","font":"minecraft:default"},{"font":"minecraft:default","text":"\n"},{"font":"minecraft:default","text":"☞ ","color":"dark_gray"},{"translate":"tips.sys.monument.sowrd.lost_items.failure.1","color":"red","font":"default","bold":false,"fallback": "似乎沒有偵測到目標物品在這個世界上"}]