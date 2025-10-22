# The entire storyline is executed through the scoreboard story(dummy) combined with the schedule command

execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 1 run tellraw @a[distance=..16] {"translate": "story.safe_area.selena.1.1","fallback": "［賽琳娜］你好"}
execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 2 run tellraw @a[distance=..16] {"translate": "story.safe_area.selena.1.2","fallback": "［賽琳娜］有什麼是嗎?","color":"white"}
execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 2 run tellraw @a[distance=..16] [{"font":"minecraft:default","text":"☞ ","color":"dark_gray"},{"translate": "story.safe_area.elina.1.3","fallback": "【詢問關於你的力量】","color":"dark_green","click_event":{action:"run_command",command:"/trigger player.detect.click_event.trigger set 2"}}]

execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 3 run tellraw @a[distance=..16] {"translate": "story.safe_area.selena.1.1","fallback": "［賽琳娜］你好"}
execute if score story.safe_area.selena.1 story.safe_area matches 3 run scoreboard players set story.safe_area.selena.1 story.safe_area 1

execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 4 run tellraw @a[distance=..16] {"translate": "story.safe_area.selena.1.4","fallback": "［賽琳娜］關於我的力量嗎?"}
execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 5 run tellraw @a[distance=..16] {"translate": "story.safe_area.selena.1.5","fallback": "［賽琳娜］這就要從很久以前說起了..."}
execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 6 run tellraw @a[distance=..16] {"translate": "story.safe_area.selena.1.6","fallback": "［賽琳娜］在我的舊世界裡，我是一名偵探"}
execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 7 run tellraw @a[distance=..16] {"translate": "story.safe_area.selena.1.7","fallback": "［賽琳娜］有天收到一個奇怪的案子引起我的好奇心"}
execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 8 run tellraw @a[distance=..16] {"translate": "story.safe_area.selena.1.8","fallback": "［賽琳娜］是一個述說著時空裂縫與深淵怪物的傳聞"}
execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 9 run tellraw @a[distance=..16] {"translate": "story.safe_area.selena.1.9","fallback": "［賽琳娜］好奇心驅使著我調查了這個案子"}
execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 10 run tellraw @a[distance=..16] {"translate": "story.safe_area.selena.1.10","fallback": "［賽琳娜］在辦案過程中偶然發現了時空裂縫與深淵怪物"}
execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 11 run tellraw @a[distance=..16] {"translate": "story.safe_area.selena.1.11","fallback": "［賽琳娜］再被追逐中偶然觸碰裂縫進入了一個特殊的空間"}
execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 12 run tellraw @a[distance=..16] {"translate": "story.safe_area.selena.1.12","fallback": "［賽琳娜］但進入沒多久就被一股力量拉回現實並且獲得了名為 星空之霜 的力量"}
execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 13 run tellraw @a[distance=..16] {"translate": "story.safe_area.selena.1.13","fallback": "［賽琳娜］這股力量能使星空中落下帶有記憶片段的冰霜"}
execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 14 run tellraw @a[distance=..16] {"translate": "story.safe_area.selena.1.14","fallback": "［賽琳娜］我使用這股力量擊敗了追逐我的深淵怪物"}
execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 15 run tellraw @a[distance=..16] {"translate": "story.safe_area.selena.1.15","fallback": "［賽琳娜］我對這股力量感到好奇並且想要了解更多"}
execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 16 run tellraw @a[distance=..16] {"translate": "story.safe_area.selena.1.16","fallback": "［賽琳娜］在我不斷調查下發現了這世界出現了很多個怪物與不尋常的異常現象"}
execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 17 run tellraw @a[distance=..16] {"translate": "story.safe_area.selena.1.17","fallback": "［賽琳娜］在我與怪物交戰跟不斷地調查之下，我發現了與之前所看到的時空裂縫"}
execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 18 run tellraw @a[distance=..16] {"translate": "story.safe_area.selena.1.18","fallback": "［賽琳娜］穿梭到異空間後前方是一個凝聚世界記憶的大樹"}
execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 19 run tellraw @a[distance=..16] {"translate": "story.safe_area.selena.1.19","fallback": "［賽琳娜］透過觸碰樹，偶然發現了我曾經所在世界的秘密"}
execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 20 run tellraw @a[distance=..16] {"translate": "story.safe_area.selena.1.20","fallback": "［賽琳娜］所有事物都是由世界記憶之樹回放並且維持著壽命"}
execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 21 run tellraw @a[distance=..16] {"translate": "story.safe_area.selena.1.21","fallback": "［賽琳娜］且透過觸碰記憶發現從世界誕生到走向毀滅，世間已經輪迴了無數次的真相"}
execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 22 run tellraw @a[distance=..16] {"translate": "story.safe_area.selena.1.22","fallback": "［賽琳娜］在世界記憶之樹附近發現了名為 賽羅尼斯 的時空觀測者"}
execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 23 run tellraw @a[distance=..16] {"translate": "story.safe_area.selena.1.23","fallback": "［賽琳娜］賽羅尼斯 作為時空觀測者並不想這個世界就此毀滅"}
execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 24 run tellraw @a[distance=..16] {"translate": "story.safe_area.selena.1.24","fallback": "［賽琳娜］所以調用了世界記憶之樹的力量重複回放世界平靜之時的片段"}
execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 25 run tellraw @a[distance=..16] {"translate": "story.safe_area.selena.1.25","fallback": "［賽琳娜］直到我的出現，不受回朔力量的引響"}
execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 26 run tellraw @a[distance=..16] {"translate": "story.safe_area.selena.1.26","fallback": "［賽琳娜］並且可以來到世界記憶之樹所在的特殊空間"}
execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 27 run tellraw @a[distance=..16] {"translate": "story.safe_area.selena.1.27","fallback": "［賽琳娜］但無非是徒勞，世界走向毀滅的源頭是因為世界出現了「空之支配者」伊萊克爾"}
execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 28 run tellraw @a[distance=..16] {"translate": "story.safe_area.selena.1.28","fallback": "［賽琳娜］起初 賽羅尼斯 可以調用世界記憶之樹力量去使怪物消失，但漸漸地免疫回朔的引響"}
execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 29 run tellraw @a[distance=..16] {"translate": "story.safe_area.selena.1.29","fallback": "［賽琳娜］且 伊萊克爾 發現了這裡，試圖透過摧毀回朔記憶片段來毀滅世界從而征服世界"}
execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 30 run tellraw @a[distance=..16] {"translate": "story.safe_area.selena.1.30","fallback": "［賽琳娜］在經歷多次世界回朔與 伊萊克爾 的交戰"}
execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 31 run tellraw @a[distance=..16] {"translate": "story.safe_area.selena.1.31","fallback": "［賽琳娜］伊萊克爾取得了勝利，同時也重傷了 賽羅尼斯"}
execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 32 run tellraw @a[distance=..16] {"translate": "story.safe_area.selena.1.32","fallback": "［賽琳娜］伊萊克爾從被世界記憶組成的牢籠破殼而出"}
execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 33 run tellraw @a[distance=..16] {"translate": "story.safe_area.selena.1.33","fallback": "［賽琳娜］與其餘的 舊日支配者 成為了新世界的統治者"}
execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 34 run tellraw @a[distance=..16] {"translate": "story.safe_area.selena.1.34","fallback": "［賽琳娜］如果可以的話，我想要回到過去阻止這一切的發生"}
execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 35 run tellraw @a[distance=..16] {"translate": "story.safe_area.selena.1.35","fallback": "［賽琳娜］可惜...我無法改變什麼"}
execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 36 run tellraw @a[distance=..16] {"translate": "story.safe_area.selena.1.36","fallback": "［賽琳娜］單憑我一個人的力量是無法擊敗 伊萊克爾 的"}
execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 37 run tellraw @a[distance=..16] {"translate": "story.safe_area.selena.1.37","fallback": "［賽琳娜］如果可以，我希望能夠和你們一起對抗 伊萊克爾"}
execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 38 run tellraw @a[distance=..16] {"translate": "story.safe_area.selena.1.38","fallback": "［賽琳娜］我想要守護這個世界，守護你們"}
execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 39 run tellraw @a[distance=..16] {"translate": "story.safe_area.selena.1.39","fallback": "［賽琳娜］因為我不想再失去一切了"}
execute if score story.safe_area.selena.1 story.safe_area matches 39 run scoreboard players set #story:icon/proper_noun/starry_sky_frost global.main 1
execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 39 run tellraw @a[distance=..16] [{"translate": "story.end","fallback": "對話結束，再次點擊可重複查看對話內容","color":"gold"},{"text":"\n"}]

execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 39 run function story:safe_area/selena/character_story
execute positioned 766 144 966 if score story.safe_area.selena.1 story.safe_area matches 39 run playsound minecraft:entity.player.levelup voice @a ~ ~1 ~ 0.5 1

execute if score story.safe_area.selena.1 story.safe_area matches 40 run schedule function story:safe_area/selena/0 1t

data remove entity @s interaction

execute unless score story.safe_area.selena.1 story.safe_area matches 1..40 run return 0

scoreboard players add story.safe_area.selena.1 story.safe_area 1
playsound minecraft:ui.button.click voice @a ~ ~1 ~ 0.5 1