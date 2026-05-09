execute \
    if score #bossfight.elekiel.2 global.main matches 1.. run \
return 0

tellraw @s ["",{translate:"monsters.elekiel.2",bold:true,color:"dark_aqua",hover_event:{action:"show_text",value:[{translate:"monsters.tips.dangerous_skill",color:"gold"}]}},{text:" ⚠",color:"gold",hover_event:{action:"show_text",value:[{translate:"monsters.tips.dangerous_skill",color:"gold"}]}}]
tellraw @s ""
tellraw @s ["",{translate:"monsters.elekiel.2.1",color:"white","bold":false,"with":[{"translate":"monsters.elekiel.2.2","color": "gold","bold": true,"underlined": true}]},{text:"\n"},{translate:"monsters.elekiel.2.3",color:"white","bold":false},{text:"\n"},{translate:"monsters.elekiel.2.4",color:"white","bold":false,"with":[{"translate":"monsters.elekiel.2.5","color": "gold","bold": true,"underlined": true}]},{text:"\n"},{translate:"monsters.elekiel.2.6",color:"dark_red","bold":true,"underlined":true},{text:"\n"},{translate:"monsters.elekiel.2.7",color:"white","bold":false,"with":[{"translate":"effect.minecraft.hunger","color": "dark_red","bold": true,"underlined": true}]},{text:"\n"},{translate:"monsters.elekiel.2.8",color:"white","bold":false,"with":[{"translate":"monsters.elekiel.2.9","color": "gold","bold": true,"underlined": true}]},{text:"\n"},{text:"\n"},{translate:"monsters.elekiel.2.10",color:"white","bold":false},{text:"\n"},{translate:"monsters.elekiel.2.11",color:"white","bold":false,"with":[{"translate":"monsters.elekiel.2.12","color": "gold","bold": true,"underlined": true}]},{translate:"monsters.elekiel.2.13",color:"white","bold":false,"with":[{"translate":"effect.minecraft.absorption","color": "green","bold": true,"underlined": true}]},{translate:"monsters.elekiel.2.14",color:"white","bold":false,"with":[{"translate":"effect.minecraft.saturation","color": "green","bold": true,"underlined": true}]}]
tellraw @s ""

tellraw @s ""

tellraw @s [{"font":"minecraft:space","text":"\ue003\ue002\ue000"},{"font":"minecraft:default","text":"[","color":"white","bold":true},{"font":"minecraft:default","text":"📢","color":"blue","bold":false},{"font":"minecraft:default","text":"]","color":"white","bold":true},{"text":" ","font":"minecraft:default"},{"font":"minecraft:default","text":"\n"},{"font":"minecraft:default","text":"☞ ","color":"dark_gray"},{"translate": "tips.bossfight.5","fallback":"技能文本已更新！","color":"dark_green","bold":true,"underlined":false,"font":"minecraft:default"}]

scoreboard players set #bossfight.elekiel.2 global.main 1
scoreboard players set #bossfight.elekiel.skill_introduction global.main 1

playsound minecraft:entity.player.levelup voice @s ~ ~1 ~ 1 0.5