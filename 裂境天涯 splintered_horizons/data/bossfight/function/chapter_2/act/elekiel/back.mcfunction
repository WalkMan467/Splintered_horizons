tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"

tellraw @s {"translate": "monsters.tips.bossfight","fallback": "--------------- BOSS 戰 ---------------"}
tellraw @s {"translate": "monsters.elekiel.disc.1","fallback": "BOSS: 「空之支配者」伊萊克爾"}
tellraw @s "\n"
tellraw @s {"translate": "monsters.elekiel.disc.1","fallback": "BOSS: 「永劫」支配者: 伊萊克爾",italic:true,color:gray}
tellraw @s {"translate": "monsters.elekiel.disc.2","fallback": "來自賽琳娜舊世界的「永劫」支配者: 伊萊克爾",italic:true,color:gray}
tellraw @s {"translate": "monsters.elekiel.disc.3","fallback": "在掙脫世界記憶之樹的輪迴之後",italic:true,color:gray}
tellraw @s {"translate": "monsters.elekiel.disc.4","fallback": "除了擁有操控時間與空間的能力",italic:true,color:gray}
tellraw @s {"translate": "monsters.elekiel.disc.5","fallback": "也獲得了操控記憶的能力",italic:true,color:gray}
tellraw @s "\n"
tellraw @s "--------------------------------------"
tellraw @s ""

tellraw @s [{"font":"minecraft:default","text":"☞ ","color":"dark_gray"},{"translate": "monsters.bossfight.skill_introduction","fallback": "【查看技能介紹】","color":"dark_green","click_event":{action:"run_command",command:"/trigger player.detect.click_event.trigger set 20"}}]
tellraw @s [{"font":"minecraft:default","text":"☞ ","color":"dark_gray"},{"translate": "monsters.bossfight.tp","fallback": "【傳送回入口】","color":"dark_green","click_event":{action:"run_command",command:"/trigger player.detect.click_event.trigger set 13"}}]
tellraw @s [{"font":"minecraft:default","text":"☞ ","color":"dark_gray"},{"translate": "monsters.bossfight.start","fallback": "【點擊即可開始戰鬥！】","color":"dark_green","click_event":{action:"run_command",command:"/trigger player.detect.click_event.trigger set 19"}}]

playsound minecraft:item.trident.return voice @s ~ ~1 ~ 1 1
playsound minecraft:item.hoe.till voice @s ~ ~1 ~ 1 1