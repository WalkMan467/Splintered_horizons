#透過scoreboard story(dummy) + schedule 指令運行整個劇情

execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 1 run tellraw @a[distance=..16] {"translate": "story.chapter_2.ml.1","fallback": "[蘇菲亞] 這片世界雖然已被毀滅，但世界風景依舊美麗"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 2 run tellraw @a[distance=..16] {"translate": "story.chapter_2.ml.2","fallback": "[蘇菲亞] 但即便如此，隨著時間流逝，一切終將歸於虛無"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 3 run tellraw @a[distance=..16] {"translate": "story.chapter_2.ml.2","fallback": "[蘇菲亞] 之前與你提到的那位故人是萊卡"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 4 run tellraw @a[distance=..16] {"translate": "story.chapter_2.ml.2","fallback": "[蘇菲亞] 在我們的世界之中"}

execute if score story.chapter_2.campfire.2 story.chapter_2 matches 4 run tellraw @a[distance=..16] [{"translate": "story.end","fallback": "對話結束，再次點擊可重複查看對話內容","color":"gold"},{"text":"\n"}]
execute if score story.chapter_2.campfire.2 story.chapter_2 matches 4 run playsound minecraft:entity.player.levelup voice @a ~ ~1 ~ 0.5 1

execute if score story.chapter_2.campfire.2 story.chapter_2 matches 5 run schedule function story:chapter_2/campfire/2/0 1t

data remove entity @s interaction

execute unless score story.chapter_2.campfire.2 story.chapter_2 matches 1..5 run return 0

scoreboard players add story.chapter_2.campfire.2 story.chapter_2 1
playsound minecraft:ui.button.click voice @a ~ ~1 ~ 0.5 1