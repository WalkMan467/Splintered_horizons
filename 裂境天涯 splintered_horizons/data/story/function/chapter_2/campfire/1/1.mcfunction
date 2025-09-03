#透過scoreboard story(dummy) + schedule 指令運行整個劇情

execute positioned 807 201 149 if score story.chapter_2.campfire.1 story.chapter_2 matches 1 run tellraw @a[distance=..16] [{"translate": "story.chapter_2.campfire.1.1","fallback": "[蘇菲亞] "},{"selector": "@a[distance=..6]","color": "dark_green"}," ",{"translate": "story.chapter_2.campfire.1.2","fallback": "我們到了"}]
execute positioned 807 201 149 if score story.chapter_2.campfire.1 story.chapter_2 matches 2 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.1.3","fallback": "[蘇菲亞] 在前方危機危機四伏的洞穴最深處應該就是第二把魔劍的位置"}
execute positioned 807 201 149 if score story.chapter_2.campfire.1 story.chapter_2 matches 3 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.1.4","fallback": "[蘇菲亞] 準備好了我們就出發吧"}
execute positioned 807 201 149 if score story.chapter_2.campfire.1 story.chapter_2 matches 4 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.1.5","fallback": "[蘇菲亞] 如果我們能拯救世界"}
execute positioned 807 201 149 if score story.chapter_2.campfire.1 story.chapter_2 matches 5 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.1.6","fallback": "[蘇菲亞] 我想與你一同欣賞，一個沒有深淵的新世界"}
execute positioned 807 201 149 if score story.chapter_2.campfire.1 story.chapter_2 matches 6 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.1.7","fallback": "[蘇菲亞] 讓雨不再代表所有人的淚水，而是為新世界帶來生機"}

execute if score story.chapter_2.campfire.1 story.chapter_2 matches 6 run tellraw @a[distance=..16] [{"translate": "story.end","fallback": "對話結束，再次點擊可重複查看對話內容","color":"gold"},{"text":"\n"}]
execute if score story.chapter_2.campfire.1 story.chapter_2 matches 6 run playsound minecraft:entity.player.levelup voice @a ~ ~1 ~ 0.5 1

execute if score story.chapter_2.campfire.1 story.chapter_2 matches 7 run schedule function story:chapter_2/campfire/1/0 1t

data remove entity @s interaction

execute unless score story.chapter_2.campfire.1 story.chapter_2 matches 1..7 run return 0

scoreboard players add story.chapter_2.campfire.1 story.chapter_2 1
playsound minecraft:ui.button.click voice @a ~ ~1 ~ 0.5 1