#水星初始離開太空站對話劇情

#透過scoreboard story(dummy) + schedule 指令運行整個劇情


execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 1 run weather clear
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 1 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.1.1","fallback": "[？？？] 恩? 你醒了"}
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 2 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.1.2","fallback": "[你] 是你拯救了我嗎?"}
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 3 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.1.3","fallback": "[？？？] 是的"}
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 4 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.1.4","fallback": "[蘇菲亞] 初次見面，我叫蘇菲亞"}
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 5 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.1.5","fallback": "[蘇菲亞] 在黑暗壟罩這個世界之後"}
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 6 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.1.6","fallback": "[蘇菲亞] 除了你以外，我已經很久很久沒看到其他人了"}
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 7 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.1.7","fallback": "[蘇菲亞] 你沉睡的時候，我恰好看到了你"}
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 8 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.1.8","fallback": "[蘇菲亞] 因為四周的怪物很危險，所以我就把你送往最近的島嶼"}
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 9 run tellraw @a[distance=..16] [{"translate": "story.chapter_1.campfire.1.9","fallback": "[你] 謝謝妳救了我，我叫"},{"selector": "@p","color": "gold","bold": true}]
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 10 run tellraw @a[distance=..16] [{"translate": "story.chapter_1.campfire.1.10","fallback": "[蘇菲亞] 真是個好聽的名子，很高興認識你，"},{"selector": "@p","color": "gold","bold": true}]
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 11 run tellraw @a[distance=..16] [{"translate": "story.chapter_1.campfire.1.11","fallback": "[蘇菲亞] 不過，世界已被黑暗壟罩"}]
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 12 run tellraw @a[distance=..16] [{"translate": "story.chapter_1.campfire.1.12","fallback": "[蘇菲亞] 你怎麼出現在這麼危險的地方"}]
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 13 run tellraw @a[distance=..16] [{"translate": "story.chapter_1.campfire.1.13","fallback": "[你] 整件事或許要從很久很久以前說起"}]
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 14 run tellraw @a[distance=..16] [{"translate": "story.chapter_1.campfire.1.14","fallback": "[你] 這個世界曾發生過一場慘烈的戰爭 "},{"bold":true,"color":"gold","hoverEvent":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"story.icon.proper_noun.war_of_light_and_darkness","underlined":true}]
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 15 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.1.15","fallback": "[你] 那時深淵在那戰場中勝利了"}
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 16 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.1.16","fallback": "[你] 在世界樹即將毀滅之前，世界樹的守護者們透過力量創造了我"}
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 17 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.1.17","fallback": "[你] 並托福我收集魔劍重新決戰深淵"}
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 18 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.1.18","fallback": "[你] 我收集了很多魔劍，也找到了很多同伴"}
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 19 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.1.19","fallback": "[你] 但是最終..."}
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 20 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.1.20","fallback": "[你] 我們失敗了"}
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 21 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.1.21","fallback": "[你] 深淵把時空交錯再一起並且重起了整個宇宙"}
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 22 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.1.22","fallback": "[你] 世界也徹底陷入黑暗"}
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 23 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.1.23","fallback": "[你] 或許是因為我還有殘餘世界樹力量的庇護"}
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 24 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.1.24","fallback": "[你] 才導致我奇蹟般的逃離深淵的視線"}
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 25 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.1.25","fallback": "[你] 除了我以外的人都死於那場最終之戰"}
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 26 run scoreboard players add story.chapter_1.campfire.1 story.chapter_1 1
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 27 run scoreboard players add story.chapter_1.campfire.1 story.chapter_1 1
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 28 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.1.28","fallback": "[你] 命運從未公平，留下我的，只有虛無與悲傷"}
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 29 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.1.29","fallback": "[你] 所以...我得重新收集魔劍"}
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 30 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.1.30","fallback": "[你] 不過這是一個非常漫長的旅途"}
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 31 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.1.31","fallback": "[蘇菲亞] 或許是命運捉弄了你..."}
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 32 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.1.32","fallback": "[蘇菲亞] 你的經歷讓我想起一名昔日的故人..."}
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 33 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.1.33","fallback": "[蘇菲亞] 但他已經不在了"}
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 34 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.1.34","fallback": "[蘇菲亞] 我們曾經也為了擊敗深淵貢獻出最終力量"}
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 35 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.1.35","fallback": "[蘇菲亞] 但最終與你一樣"}
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 36 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.1.36","fallback": "[蘇菲亞] 只剩下我，同時，我也背負著一股神秘的力量"}
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 37 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.1.37","fallback": "[蘇菲亞] 宇宙萬物總有盡頭，這是深淵與死亡力量的結合體"}
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 38 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.1.38","fallback": "[蘇菲亞] 名為 終焉之眼 的終極力量"}
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 39 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.1.39","fallback": "[蘇菲亞] 足以斬斷一切，但是力量太強會讓自身會受到反噬"}
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 40 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.1.40","fallback": "[蘇菲亞] 如果可以，我想與你同行"}
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 41 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.1.41","fallback": "[蘇菲亞] 或許你會需要一點裝備與食物"}
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 42 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.1.42","fallback": "[蘇菲亞] 如果你準備好了，我們就離開這裡吧"}
execute if score story.chapter_1.campfire.1 story.chapter_1 matches 42 run scoreboard players set #story:icon/proper_noun/new_story global.main 1
execute if score story.chapter_1.campfire.1 story.chapter_1 matches 42 run scoreboard players set #story:icon/character/sophia/icon global.main 1
execute if score story.chapter_1.campfire.1 story.chapter_1 matches 42 run scoreboard players set #story:icon/character/sophia/story_1 global.main 1
execute if score story.chapter_1.campfire.1 story.chapter_1 matches 42 run scoreboard players set #story:icon/character/sophia/story_1_1 global.main 1
execute if score story.chapter_1.campfire.1 story.chapter_1 matches 42 run scoreboard players set #story:icon/story/chapter_1/scebe_1 global.main 1
execute if score story.chapter_1.campfire.1 story.chapter_1 matches 42 run scoreboard players set #story:icon/story/chapter_1 global.main 1

execute if score story.chapter_1.campfire.1 story.chapter_1 matches 42 unless score story.chapter_1.campfire.1.2 story.chapter_1 matches 2.. run schedule function story:chapter_1/opening/2/0 5s
execute if score story.chapter_1.campfire.1 story.chapter_1 matches 42 run tellraw @a[distance=..16] [{"translate": "story.end","fallback": "對話結束，再次點擊可重複查看對話內容","color":"gold"},{"text":"\n"}]
execute if score story.chapter_1.campfire.1 story.chapter_1 matches 42 run playsound minecraft:entity.player.levelup voice @a ~ ~1 ~ 0.5 1
execute positioned 38 64 9 if score story.chapter_1.campfire.1 story.chapter_1 matches 43 run tellraw @a[distance=..16] {"translate": "story.chapter_1.campfire.1.1","fallback": "[？？？] 恩? 你醒了"}
execute if score story.chapter_1.campfire.1 story.chapter_1 matches 43 run scoreboard players set story.chapter_1.campfire.1 story.chapter_1 1

data remove entity @s interaction

execute unless score story.chapter_1.campfire.1 story.chapter_1 matches 1..43 run return 0

scoreboard players add story.chapter_1.campfire.1 story.chapter_1 1
playsound minecraft:ui.button.click voice @a ~ ~1 ~ 0.5 1