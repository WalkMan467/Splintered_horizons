# The entire storyline is executed through the scoreboard story(dummy) combined with the schedule command

execute positioned 867 148 949 if score story.chapter_2.campfire.3 story.chapter_2 matches 1 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.3.1","fallback": "［蘇菲亞］看來我們越來越接近魔劍的位置了"}
execute positioned 867 148 949 if score story.chapter_2.campfire.3 story.chapter_2 matches 2 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.3.2","fallback": "［蘇菲亞］昔日的櫻花之城，這裡曾經是我與萊卡的故鄉"}
execute positioned 867 148 949 if score story.chapter_2.campfire.3 story.chapter_2 matches 3 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.3.3","fallback": "［蘇菲亞］也是我們踏上旅途的開始"}
execute positioned 867 148 949 if score story.chapter_2.campfire.3 story.chapter_2 matches 4 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.3.4","fallback": "［蘇菲亞］如同萊卡所說的"}
execute positioned 867 148 949 if score story.chapter_2.campfire.3 story.chapter_2 matches 5 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.3.5","fallback": "［蘇菲亞］在我們世界裡有著六大天啟"}
execute positioned 867 148 949 if score story.chapter_2.campfire.3 story.chapter_2 matches 6 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.3.6","fallback": "［蘇菲亞］與你世界的執政官一樣，在我們的世界成為「天啟」"}
execute positioned 867 148 949 if score story.chapter_2.campfire.3 story.chapter_2 matches 7 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.3.7","fallback": "［蘇菲亞］作為天啟，我們背負著沉重的命運"}
execute positioned 867 148 949 if score story.chapter_2.campfire.3 story.chapter_2 matches 8 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.3.8","fallback": "［蘇菲亞］在以前，萊卡總是問我的夢想是什麼"}
execute positioned 867 148 949 if score story.chapter_2.campfire.3 story.chapter_2 matches 9 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.3.9","fallback": "［蘇菲亞］與你一樣，以前的我總是對夢想感到迷茫"}
execute positioned 867 148 949 if score story.chapter_2.campfire.3 story.chapter_2 matches 10 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.3.10","fallback": "［蘇菲亞］但在每次與深淵怪物交戰過程中無辜的人們"}
execute positioned 867 148 949 if score story.chapter_2.campfire.3 story.chapter_2 matches 11 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.3.11","fallback": "［蘇菲亞］與最在乎我的家人與朋友都會逝去"}
execute positioned 867 148 949 if score story.chapter_2.campfire.3 story.chapter_2 matches 12 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.3.12","fallback": "［蘇菲亞］我才瞭解...救世主的命運是如此沉重的..."}
execute positioned 867 148 949 if score story.chapter_2.campfire.3 story.chapter_2 matches 13 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.3.13","fallback": "［蘇菲亞］願世界能夠不再有深淵"}
execute positioned 867 148 949 if score story.chapter_2.campfire.3 story.chapter_2 matches 14 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.3.14","fallback": "［蘇菲亞］我想守護著你、守護著我無法守護的人"}
execute positioned 867 148 949 if score story.chapter_2.campfire.3 story.chapter_2 matches 15 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.3.15","fallback": "［蘇菲亞］這就是我的夢想"}

execute positioned 867 148 949 if score story.chapter_2.campfire.3 story.chapter_2 matches 15 run tellraw @a[distance=..16] [{"translate": "story.end","fallback": "對話結束，再次點擊可重複查看對話內容","color":"gold"},{"text":"\n"}]
execute positioned 867 148 949 if score story.chapter_2.campfire.3 story.chapter_2 matches 15 run playsound minecraft:entity.player.levelup voice @a ~ ~1 ~ 0.5 1

execute if score story.chapter_2.campfire.3 story.chapter_2 matches 16 run schedule function story:chapter_2/campfire/3/0 1t

data remove entity @s interaction

execute unless score story.chapter_2.campfire.3 story.chapter_2 matches 1..16 run return 0

scoreboard players add story.chapter_2.campfire.3 story.chapter_2 1
playsound minecraft:ui.button.click voice @a ~ ~1 ~ 0.5 1