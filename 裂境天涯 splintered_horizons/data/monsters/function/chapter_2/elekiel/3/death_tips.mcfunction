execute \
    if score #bossfight.elekiel.3 global.main matches 1.. run \
return 0

tellraw @s ["",{translate:"monsters.elekiel.3",bold:true,color:"dark_aqua",hover_event:{action:"show_text",value:[{translate:"monsters.tips.fatal_skill",color:"dark_red"}]}},{text:" ☠",color:"dark_red",hover_event:{action:"show_text",value:[{translate:"monsters.tips.fatal_skill",color:"dark_red"}]}}]
tellraw @s ""
tellraw @s ["",{translate:"monsters.elekiel.3.1",color:"gold","bold":true,"underlined":true},{text:"\n"},{translate:"monsters.elekiel.3.2",color:"white","underlined":false,"bold":false,"with":[{"translate":"monsters.elekiel.3.3","color": "dark_red","bold": true,"underlined": true}]},{text:"\n"},{translate:"monsters.elekiel.3.4",color:"white","bold":false,"with":[{"keybind":"key.use","color": "dark_green","bold": true,"underlined": true}]},{translate:"monsters.elekiel.3.5",color:"white","bold":false,"with":[{"translate":"monsters.elekiel.3.6","color": "green","bold": true,"underlined": true}]},{text:"\n"},{translate:"monsters.elekiel.3.7",color:"white","bold":false,"with":[{"translate":"monsters.elekiel.3.8","color": "gold","bold": true,"underlined": true}]}]
tellraw @s ""

tellraw @s ""

tellraw @s [{"font":"minecraft:space","text":"\ue003\ue002\ue000"},{"font":"minecraft:default","text":"[","color":"white","bold":true},{"font":"minecraft:default","text":"📢","color":"blue","bold":false},{"font":"minecraft:default","text":"]","color":"white","bold":true},{"text":" ","font":"minecraft:default"},{"font":"minecraft:default","text":"\n"},{"font":"minecraft:default","text":"☞ ","color":"dark_gray"},{"translate": "tips.bossfight.5","fallback":"技能文本已更新！","color":"dark_green","bold":true,"underlined":false,"font":"minecraft:default"}]

scoreboard players set #bossfight.elekiel.3 global.main 1
scoreboard players set #bossfight.elekiel.skill_introduction global.main 1

playsound minecraft:entity.player.levelup voice @s ~ ~1 ~ 1 0.5