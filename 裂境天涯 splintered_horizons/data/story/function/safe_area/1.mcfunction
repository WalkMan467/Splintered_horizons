#透過scoreboard story(dummy) + schedule 指令運行整個劇情

execute positioned 741 145 968 if score story.safe_area.elina.1 story.safe_area matches 1 run tellraw @a[distance=..16] [{"translate": "story.safe_area.elina.1.1","fallback": "［伊莉娜］你好，"},{"selector":"@a[distance=..16]","color": "dark_green"}]
execute positioned 741 145 968 if score story.safe_area.elina.1 story.safe_area matches 2 run tellraw @a[distance=..16] [{"translate": "story.safe_area.elina.1.2","fallback": "［伊莉娜］有什麼事情嗎?"},"\n"]
execute positioned 741 145 968 if score story.safe_area.elina.1 story.safe_area matches 2 run function story:story_trigger_reset
execute positioned 741 145 968 if score story.safe_area.elina.1 story.safe_area matches 2 run tellraw @a[distance=..16] [{"font":"minecraft:default","text":"☞ ","color":"dark_gray"},{"translate": "story.safe_area.elina.1.3","fallback": "【詢問關於你的力量】","color":"dark_green","click_event":{action:"run_command",command:"/trigger story.click_event.trigger set 1"}}]
execute positioned 741 145 968 if score @p[distance=..16] story.click_event.trigger matches 1.. run scoreboard players set story.safe_area.elina.1 story.safe_area 5
execute positioned 741 145 968 if score @p[distance=..16] story.click_event.trigger matches 1.. run function story:story_trigger_reset

execute positioned 741 145 968 if score story.safe_area.elina.1 story.safe_area matches 2 run tellraw @a[distance=..16] ""

execute if score story.safe_area.elina.1 story.safe_area matches 3 run schedule function story:safe_area/0 1t

execute positioned 741 145 968 if score story.safe_area.elina.1 story.safe_area matches 5 run tellraw @a[distance=..16] [{"translate": "story.safe_area.elina.1.5","fallback": "［伊莉娜］關於我的力量嗎?"}]
execute positioned 741 145 968 if score story.safe_area.elina.1 story.safe_area matches 6 run tellraw @a[distance=..16] [{"translate": "story.safe_area.elina.1.6","fallback": "［伊莉娜］我的力量是來自於一位引導者教我的魔法「至深之暗」"}]
execute positioned 741 145 968 if score story.safe_area.elina.1 story.safe_area matches 7 run tellraw @a[distance=..16] [{"translate": "story.safe_area.elina.1.7","fallback": "［伊莉娜］但我的引導者已經不在了"}]
execute positioned 741 145 968 if score story.safe_area.elina.1 story.safe_area matches 8 run tellraw @a[distance=..16] [{"translate": "story.safe_area.elina.1.8","fallback": "［伊莉娜］曾經的我無法守護故鄉與我的老師，我只能眼睜睜的看著他們被在我世界的舊日支配者「阿薩洛爾」殺死"}]
execute positioned 741 145 968 if score story.safe_area.elina.1 story.safe_area matches 9 run tellraw @a[distance=..16] [{"translate": "story.safe_area.elina.1.9","fallback": "［伊莉娜］如今的我已經變強了，我希望這個世界不再有像我一樣無助的人"}]
execute positioned 741 145 968 if score story.safe_area.elina.1 story.safe_area matches 10 run tellraw @a[distance=..16] [{"translate": "story.safe_area.elina.1.10","fallback": "［伊莉娜］但即便這樣，我依然無法變強到能夠打敗阿薩洛爾"}]
execute positioned 741 145 968 if score story.safe_area.elina.1 story.safe_area matches 11 run tellraw @a[distance=..16] [{"translate": "story.safe_area.elina.1.11","fallback": "［伊莉娜］這也是為什麼我想請你幫我一個忙"}]
execute positioned 741 145 968 if score story.safe_area.elina.1 story.safe_area matches 12 run tellraw @a[distance=..16] [{"translate": "story.safe_area.elina.1.12","fallback": "［伊莉娜］願我們能夠戰勝舊日的支配者們，即便這個願望看起來如此渺小"}]

execute positioned 741 145 968 if score story.safe_area.elina.1 story.safe_area matches 12 run tellraw @a[distance=..16] [{"translate": "story.end","fallback": "對話結束，再次點擊可重複查看對話內容","color":"gold"},{"text":"\n"}]
execute positioned 741 145 968 if score story.safe_area.elina.1 story.safe_area matches 12 run playsound minecraft:entity.player.levelup voice @a ~ ~1 ~ 0.5 1

execute if score story.safe_area.elina.1 story.safe_area matches 13 run schedule function story:safe_area/0 1t

data remove entity @s interaction


scoreboard players add story.safe_area.elina.1 story.safe_area 1
playsound minecraft:ui.button.click voice @a ~ ~1 ~ 0.5 1