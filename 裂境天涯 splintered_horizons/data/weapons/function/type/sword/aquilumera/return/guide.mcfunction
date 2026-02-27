playsound minecraft:entity.cat.death voice @s ~ ~ ~ 1 1 1
playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 .5 1
playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 .61 1

tag @s add weapon.aquilumera.return

tellraw @s ""
tellraw @s [{"font":"minecraft:space","text":"\ue003\ue002\ue000"},{"font":"minecraft:default","text":"[","color":"white","bold":true},{"font":"minecraft:default","text":"📢","color":"blue","bold":false},{"font":"minecraft:default","text":"]","color":"white","bold":true},{"text":" ","font":"minecraft:default"},{"font":"minecraft:default","text":"\n"},{"font":"minecraft:default","text":"☞ ","color":"dark_gray"},{"translate":"weapon.aquilumera.return.1","color":"red","font":"default","bold":false,"fallback": "似乎沒有偵測到目標物品在這個世界上"}]
tellraw @s [{"font":"minecraft:space","text":"\ue003\ue002\ue000"},{"font":"minecraft:default","text":"[","color":"white","bold":true},{"font":"minecraft:default","text":"📢","color":"blue","bold":false},{"font":"minecraft:default","text":"]","color":"white","bold":true},{"text":" ","font":"minecraft:default"},{"font":"minecraft:default","text":"\n"},{"font":"minecraft:default","text":"☞ ","color":"dark_gray"},{"translate":"weapon.aquilumera.return.2","color":"red","font":"default","bold":false,"fallback": "如果你需要獲得過往的目標物品，請使用 %s ","with": [{"keybind": "key.quickActions","font":"default","color":"dark_green","bold": true}]},{"translate":"weapon.aquilumera.return.3","color":"white","font":"default","bold": false,"fallback": "(獲得遺失的目標物品 -> 選擇對應的目標物品)"}]