execute \
    if score #bossfight.segrina.3 global.main matches 1.. run \
return 0

tellraw @s ["",{translate:"monsters.segrina.3",bold:true,color:"dark_aqua",hover_event:{action:"show_text",value:[{translate:"monsters.tips.fatal_skill",color:"dark_red"}]}},{text:" ☠",color:"dark_red",hover_event:{action:"show_text",value:[{translate:"monsters.tips.fatal_skill",color:"dark_red"}]}}]
tellraw @s ""
tellraw @s ["",{translate:"monsters.segrina.3.1","underlined":false,color:"white","bold":false},{text:"\n"},{translate:"monsters.segrina.3.2",color:"white","underlined":false,"bold":false},{text:"\n"},{translate:"monsters.segrina.3.3",color:"white","underlined":false,"bold":false,with:[{translate:"monsters.segrina.3.4",color:"dark_green","bold":false,"underlined":true}]},{text:"\n"},{translate:"monsters.segrina.3.5",color:"white","underlined":false,"bold":false,with:[{translate:"monsters.segrina.3.6",color:"red","bold":false,"underlined":true}]},{text:"\n"},{translate:"monsters.segrina.3.7",color:"white","bold":false,"underlined":false,with:[{translate:"monsters.segrina.3.8",color:"red","bold":false,"underlined":true}]},{text:"\n"},{translate:"monsters.segrina.3.9","underlined":false,color:"white","bold":false,with:[{translate:"monsters.segrina.3.10",color:"dark_red","bold":false,"underlined":true}]}]
tellraw @s ""

tellraw @s ""

tellraw @s [{"font":"minecraft:space","text":"\ue003\ue002\ue000"},{"font":"minecraft:default","text":"[","color":"white","bold":true},{"font":"minecraft:default","text":"📢","color":"blue","bold":false},{"font":"minecraft:default","text":"]","color":"white","bold":true},{"text":" ","font":"minecraft:default"},{"font":"minecraft:default","text":"\n"},{"font":"minecraft:default","text":"☞ ","color":"dark_gray"},{"translate": "tips.bossfight.5","fallback":"技能文本已更新！","color":"dark_green","bold":true,"underlined":false,"font":"minecraft:default"}]

scoreboard players set #bossfight.segrina.3 global.main 1
scoreboard players set #bossfight.segrina.skill_introduction global.main 1

playsound minecraft:entity.player.levelup voice @s ~ ~1 ~ 1 0.5