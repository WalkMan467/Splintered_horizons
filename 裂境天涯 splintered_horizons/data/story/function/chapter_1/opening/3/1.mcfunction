# The entire storyline is executed through the scoreboard story(dummy) combined with the schedule command

execute positioned 287 182 -187 if score story.chapter_1.campfire.3 story.chapter_1 matches 1 unless score #story:icon/story/chapter_1/scebe_3 global.main matches 1 as @n[type=item_display,tag=aj.rainy_night.root,distance=..3] on passengers run data modify entity @s Glowing set value 0b
execute if score story.chapter_1.campfire.3 story.chapter_1 matches 1 run scoreboard players set #story:icon/story/chapter_1/scebe_3 global.main 1
execute positioned 287 182 -187 if score story.chapter_1.campfire.3 story.chapter_1 matches 1 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.3.1","fallback": "［蘇菲亞］這就是你說得水之魔劍水鏡之光嗎？"}
execute positioned 287 182 -187 if score story.chapter_1.campfire.3 story.chapter_1 matches 2 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.3.2","fallback": "［你］沒錯"}
execute positioned 287 182 -187 if score story.chapter_1.campfire.3 story.chapter_1 matches 3 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.3.3","fallback": "［你］這把魔劍有著足以匹敵深淵的強大力量"}
execute positioned 287 182 -187 if score story.chapter_1.campfire.3 story.chapter_1 matches 4 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.3.4","fallback": "［你］不過，我們真的可以嗎？"}
execute positioned 287 182 -187 if score story.chapter_1.campfire.3 story.chapter_1 matches 5 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.3.5","fallback": "［你］當我感受到它時，過往的片段如潮水般湧出"}
execute positioned 287 182 -187 if score story.chapter_1.campfire.3 story.chapter_1 matches 6 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.3.6","fallback": "［蘇菲亞］我能理解，面對故人，我們從事放不下"}
execute positioned 287 182 -187 if score story.chapter_1.campfire.3 story.chapter_1 matches 7 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.3.7","fallback": "［蘇菲亞］不過我相信一切會好起來的"}
execute positioned 287 182 -187 if score story.chapter_1.campfire.3 story.chapter_1 matches 8 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.3.8","fallback": "［蘇菲亞］即便我總是掙扎，但是失敗乃是成功之母"}
execute positioned 287 182 -187 if score story.chapter_1.campfire.3 story.chapter_1 matches 9 run tellraw @a[distance=..16] [{"translate": "story.chapter_1.campfire.3.9","fallback": "［你］當我誕生於世界樹之下時"}]
execute positioned 287 182 -187 if score story.chapter_1.campfire.3 story.chapter_1 matches 10 run tellraw @a[distance=..16] [{"translate": "story.chapter_1.campfire.3.10","fallback": "［你］我總是很困惑，為什麼要託付給我守護世界的使命"}]
execute positioned 287 182 -187 if score story.chapter_1.campfire.3 story.chapter_1 matches 11 run tellraw @a[distance=..16] [{"translate": "story.chapter_1.campfire.3.11","fallback": "［你］但在舊世界的旅途中，我逐漸了解世界的美"}]
execute positioned 287 182 -187 if score story.chapter_1.campfire.3 story.chapter_1 matches 12 run tellraw @a[distance=..16] [{"translate": "story.chapter_1.campfire.3.12","fallback": "［你］能與朋友們陪伴，去幫助那些被深淵波及的人們"}]
execute positioned 287 182 -187 if score story.chapter_1.campfire.3 story.chapter_1 matches 13 run tellraw @a[distance=..16] [{"translate": "story.chapter_1.campfire.3.13","fallback": "［你］這就是存在的意義，也是守護世界的意義"}]
execute positioned 287 182 -187 if score story.chapter_1.campfire.3 story.chapter_1 matches 14 run tellraw @a[distance=..16] [{"translate": "story.chapter_1.campfire.3.14","fallback": "［蘇菲亞］一切的一切都是具有意義的"}]
execute positioned 287 182 -187 if score story.chapter_1.campfire.3 story.chapter_1 matches 15 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.3.15","fallback": "［蘇菲亞］不過在魔劍身旁似乎有一本破舊的書"}
execute positioned 287 182 -187 if score story.chapter_1.campfire.3 story.chapter_1 matches 16 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.3.16","fallback": "［你］那本書好像是舊世界的傳送書"}
execute positioned 287 182 -187 if score story.chapter_1.campfire.3 story.chapter_1 matches 17 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.3.17","fallback": "［你］他能帶領我們傳送至下一個魔劍的附近島嶼"}
execute positioned 287 182 -187 if score story.chapter_1.campfire.3 story.chapter_1 matches 18 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.3.18","fallback": "［你］但似乎已經不能用了"}
execute positioned 287 182 -187 if score story.chapter_1.campfire.3 story.chapter_1 matches 19 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.3.19","fallback": "［蘇菲亞］似乎可以用我的終焉力量修復看看"}
execute positioned 287 182 -187 if score story.chapter_1.campfire.3 story.chapter_1 matches 20 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.3.20","fallback": "［蘇菲亞］有了，成功了！"}
execute positioned 287 182 -187 if score story.chapter_1.campfire.3 story.chapter_1 matches 21 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.3.21","fallback": "［你］？！"}
execute positioned 287 182 -187 if score story.chapter_1.campfire.3 story.chapter_1 matches 22 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.3.22","fallback": "［你］你居然修復了"}
execute positioned 287 182 -187 if score story.chapter_1.campfire.3 story.chapter_1 matches 23 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.3.23","fallback": "［蘇菲亞］雖然我不是很懂魔法"}
execute positioned 287 182 -187 if score story.chapter_1.campfire.3 story.chapter_1 matches 24 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.3.24","fallback": "［蘇菲亞］但是我就簡單使用我的力量它好像就能用了"}
execute positioned 287 182 -187 if score story.chapter_1.campfire.3 story.chapter_1 matches 25 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.3.25","fallback": "［蘇菲亞］這本書給你，你知道怎麼使用它嗎？"}
execute positioned 287 182 -187 if score story.chapter_1.campfire.3 story.chapter_1 matches 26 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.3.26","fallback": "［你］我嘗試看看"}
execute positioned 287 182 -187 if score story.chapter_1.campfire.3 story.chapter_1 matches 27 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.3.27","fallback": "【目標】右鍵點擊選取傳送位置並且傳送至終焉之地 ","color":"gold"}
execute positioned 287 182 -187 if score story.chapter_1.campfire.3 story.chapter_1 matches 27 run tellraw @a[distance=..16] [{"text":"\n"},{"translate": "story.end","fallback": "對話結束，再次點擊可重複查看對話內容","color":"gold"},{"text":"\n"}]
execute positioned 287 182 -187 if score story.chapter_1.campfire.3 story.chapter_1 matches 27 run playsound minecraft:entity.player.levelup voice @a ~ ~1 ~ 0.5 1

execute positioned 287 182 -187 if score story.chapter_1.campfire.3 story.chapter_1 matches 28 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.3.1","fallback": "［蘇菲亞］這就是你說得水之魔劍水鏡之光嗎？"}
execute if score story.chapter_1.campfire.3 story.chapter_1 matches 28 run scoreboard players set story.chapter_1.campfire.3 story.chapter_1 1

data remove entity @s interaction

execute unless score story.chapter_1.campfire.3 story.chapter_1 matches 1..28 run return 0

scoreboard players add story.chapter_1.campfire.3 story.chapter_1 1
playsound minecraft:ui.button.click voice @a ~ ~1 ~ 0.5 1