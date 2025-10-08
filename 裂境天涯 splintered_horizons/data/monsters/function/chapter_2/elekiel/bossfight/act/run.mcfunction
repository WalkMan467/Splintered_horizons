execute on target run tellraw @s {"translate": "monsters.chapter_2.bossfight.main.1","fallback": "--------------- BOSS 戰 ---------------"}
execute on target run tellraw @s {"translate": "monsters.chapter_2.bossfight.main.2","fallback": "BOSS: 「空之支配者」伊萊克爾"}
execute on target run tellraw @s "\n"
execute on target run tellraw @s {"translate": "monsters.chapter_2.bossfight.main.2","fallback": "來自其他舊世界的「空之支配者」伊萊克爾 ",italic:true,color:gray}
execute on target run tellraw @s {"translate": "monsters.chapter_2.bossfight.main.3","fallback": "除了擁有操控時間與空間的能力",italic:true,color:gray}
execute on target run tellraw @s {"translate": "monsters.chapter_2.bossfight.main.4","fallback": "因獲得 草之魔劍 - 翠綠茵草 力量獲得進一步提升",italic:true,color:gray}
execute on target run tellraw @s {"translate": "monsters.chapter_2.bossfight.main.5","fallback": "在戰鬥中會隨機使用 草之魔劍 力量與 它曾用來摧毀舊世界的 空之權能",italic:true,color:gray}
execute on target run tellraw @s "\n"
execute on target run tellraw @s "--------------------------------------"

execute on target run tellraw @s [{"font":"minecraft:default","text":"☞ ","color":"dark_gray"},{"translate": "monsters.bossfight.skill_introduction","fallback": "【查看技能介紹】","color":"dark_green","click_event":{action:"run_command",command:"/function monsters:chapter_2/elekiel/bossfight/act/skill_introduction"}}]
execute on target run tellraw @s [{"font":"minecraft:default","text":"☞ ","color":"dark_gray"},{"translate": "monsters.bossfight.tp","fallback": "【傳送回入口】","color":"dark_green","click_event":{action:"run_command",command:"/tp @s 1109 82 373"}}]
execute on target run tellraw @s [{"font":"minecraft:default","text":"☞ ","color":"dark_gray"},{"translate": "monsters.bossfight.start","fallback": "【點擊即可開始戰鬥！】","color":"dark_green","click_event":{action:"run_command",command:"/function monsters:summon/chapter_2/elekiel"}}]

data remove entity @s interaction

# 註: 之後在執行點擊事件前添加一個偵測是否有效來防止玩家在戰鬥中點擊有效事件

particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 0 0 0 1 1 normal @a
playsound minecraft:item.trident.return voice @a ~ ~1 ~ 1 1
playsound minecraft:item.hoe.till voice @a ~ ~1 ~ 1 1