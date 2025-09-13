# The entire storyline is executed through the scoreboard story(dummy) combined with the schedule command

execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 1 unless score #story:icon/story/chapter_2/scebe_2 global.main matches 1 as @n[type=item_display,tag=aj.rainy_night.root,distance=..3] on passengers run data modify entity @s Glowing set value 0b
execute if score story.chapter_2.campfire.2 story.chapter_2 matches 1 run scoreboard players set #story:icon/story/chapter_2/scebe_2 global.main 1

execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 1 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.1","fallback": "［蘇菲亞］我們就先在這休息吧"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 2 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.2","fallback": "［蘇菲亞］這裡遠比我想像中的大"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 3 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.3","fallback": "(在你們休息的片刻突然周圍有人像你走來)"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 4 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.4","fallback": "［梅倫絲娜］你好二位"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 5 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.5","fallback": "［梅倫絲娜］我與哥哥擔心二位遭遇不幸所以前來幫忙"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 6 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.6","fallback": "［梅倫絲娜］能看到二位平安無事感到萬分開心"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 7 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.7","fallback": "［伊索克拉］別聽我妹妹胡扯"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 8 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.8","fallback": "［伊索克拉］我們只是 “剛好路過”"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 9 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.9","fallback": "(兄妹二人有趣的談話讓蘇菲亞笑出聲)"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 10 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.10","fallback": "［伊索克拉］笑什麼，深淵的走狗"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 11 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.11","fallback": "［梅倫絲娜］哥哥！"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 12 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.12","fallback": "［伊索克拉］走開梅倫絲娜"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 13 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.13","fallback": "［伊索克拉］我不是你的哥哥"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 14 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.14","fallback": "［伊索克拉］我要閃了！我還有其他事要辦！"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 15 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.15","fallback": "(伊索克拉罵罵咧咧的離開了)"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 16 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.16","fallback": "［梅倫絲娜］像二位致歉哥哥剛才的失禮"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 17 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.17","fallback": "［蘇菲亞］沒事的，我不會在意"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 18 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.18","fallback": "［你］我也是"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 19 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.19","fallback": "［梅倫絲娜］哥哥如此暴躁易怒的原因是因為我們曾經的遭遇"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 20 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.20","fallback": "［梅倫絲娜］在我們的舊世界，我們曾經是作為被父母販賣到黑市的孤兒"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 21 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.21","fallback": "［梅倫絲娜］我們不是兄妹，但我們有著共同遭遇"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 22 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.22","fallback": "［梅倫絲娜］當我們甦醒時我們被販賣到一個地方做人體實驗"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 23 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.23","fallback": "［梅倫絲娜］同艘船還有其他被販賣的孤兒一起被關押到私人監獄"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 24 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.24","fallback": "［梅倫絲娜］在監獄外，我們每天都會聽到人們的慘叫與怪物的嘶吼聲"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 25 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.25","fallback": "［梅倫絲娜］我和哥哥嘗試逃離這座監獄並逃到外面的世界"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 26 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.26","fallback": "［梅倫絲娜］但每次都是失敗收尾"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 27 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.27","fallback": "［梅倫絲娜］直到有一天我與哥哥被實驗人員帶到實驗所"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 28 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.28","fallback": "［梅倫絲娜］我們被實驗人員注入深淵力量在體內"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 29 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.29","fallback": "［梅倫絲娜］這世界人性即是惡的"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 30 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.30","fallback": "［梅倫絲娜］我們本以為我們終將無法逃脫命運"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 31 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.31","fallback": "［梅倫絲娜］在我與哥哥快變為怪物時"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 32 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.32","fallback": "［梅倫絲娜］我們意外奇蹟般的適應了深淵力量"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 33 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.33","fallback": "［梅倫絲娜］隨後我們利用我們各自的力量掙脫了束縛"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 34 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.34","fallback": "［梅倫絲娜］並殺死了所有實驗人員"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 35 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.35","fallback": "［梅倫絲娜］隨後我們成功逃離了這裡"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 36 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.36","fallback": "［梅倫絲娜］但深淵的力量依舊讓我們在理智與瘋狂中徘徊"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 37 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.37","fallback": "［梅倫絲娜］除了要與深淵力量搏鬥還要防止人們發現我們"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 38 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.38","fallback": "［梅倫絲娜］直到我們的世界被舊日支配者摧毀"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 39 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.39","fallback": "［梅倫絲娜］我們穿越到了這個新世界並找到了這裡"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 40 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.40","fallback": "［梅倫絲娜］這就是我們的故事"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 41 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.41","fallback": "［梅倫絲娜］希望你們能諒解哥哥"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 42 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.42","fallback": "［梅倫絲娜］我們的夢想與蘇菲亞一樣"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 43 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.43","fallback": "［梅倫絲娜］我們也想創造一個沒有深淵的世界"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 44 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.44","fallback": "［梅倫絲娜］如果可以，我們會與你戰鬥到底"}
execute positioned 926 167 907 if score story.chapter_2.campfire.2 story.chapter_2 matches 45 run tellraw @a[distance=..16] {"translate": "story.chapter_2.campfire.2.45","fallback": "［梅倫絲娜］準備好就出發吧，我相信我們可以的"}

execute if score story.chapter_2.campfire.2 story.chapter_2 matches 45 run tellraw @a[distance=..16] [{"translate": "story.end","fallback": "對話結束，再次點擊可重複查看對話內容","color":"gold"},{"text":"\n"}]
execute if score story.chapter_2.campfire.2 story.chapter_2 matches 45 run playsound minecraft:entity.player.levelup voice @a ~ ~1 ~ 0.5 1

execute if score story.chapter_2.campfire.2 story.chapter_2 matches 46 run schedule function story:chapter_2/campfire/2/0 1t

data remove entity @s interaction

execute unless score story.chapter_2.campfire.2 story.chapter_2 matches 1..46 run return 0

scoreboard players add story.chapter_2.campfire.2 story.chapter_2 1
playsound minecraft:ui.button.click voice @a ~ ~1 ~ 0.5 1