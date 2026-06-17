execute \
    if score #bossfight.segrina.1 global.main matches 1.. run \
return 0

tellraw @s ["",{translate:"monsters.segrina.1",bold:true,color:"dark_aqua",hover_event:{action:"show_text",value:[{translate:"monsters.tips.dangerous_skill",color:"gold"}]}},{text:" ⚠",color:"gold",hover_event:{action:"show_text",value:[{translate:"monsters.tips.dangerous_skill",color:"gold"}]}}]
tellraw @s ""
tellraw @s ["",{translate:"monsters.segrina.1.1","underlined":false,color:"white","bold":false},{text:"\n"},{translate:"monsters.segrina.1.2",color:"white","bold":false},{text:"\n"},{translate:"monsters.segrina.1.3",color:"white","bold":false},{text:"\n"},{translate:"monsters.segrina.1.4",color:"white","bold":false},{text:"\n"},{translate:"monsters.segrina.1.5",color:"white","bold":false},{text:"\n"},{translate:"monsters.segrina.1.6",color:"white","bold":false}]
tellraw @s ""

tellraw @s ""

tellraw @s [{"font":"minecraft:space","text":"\ue003\ue002\ue000"},{"font":"minecraft:default","text":"[","color":"white","bold":true},{"font":"minecraft:default","text":"📢","color":"blue","bold":false},{"font":"minecraft:default","text":"]","color":"white","bold":true},{"text":" ","font":"minecraft:default"},{"font":"minecraft:default","text":"\n"},{"font":"minecraft:default","text":"☞ ","color":"dark_gray"},{"translate": "tips.bossfight.5","fallback":"技能文本已更新！","color":"dark_green","bold":true,"underlined":false,"font":"minecraft:default"}]

scoreboard players set #bossfight.segrina.1 global.main 1
scoreboard players set #bossfight.segrina.skill_introduction global.main 1

playsound minecraft:entity.player.levelup voice @s ~ ~1 ~ 1 0.5