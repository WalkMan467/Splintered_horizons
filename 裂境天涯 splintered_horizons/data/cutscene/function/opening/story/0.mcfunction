# cutscene.story = 草星 - 古羅拉斯劇情

## 前往洞穴對話
# ========================================= #

#透過scoreboard story(dummy) + schedule 指令運行整個劇情


execute if score .opening cutscene.story matches 120..240 run title @a actionbar [{"text":"曾經，這裡有著很多個魔神、魔劍、還有一起拯救世界的戰友"}]

execute if score .opening cutscene.story matches 240..360 run title @a actionbar [{"text":"而我只是一個世界樹誕生的少年"}]

execute if score .opening cutscene.story matches 460 run title @a times 20 20 20
execute if score .opening cutscene.story matches 460 run title @a title {"text":"\uE000","font":"minecraft:screen"}

execute if score .opening cutscene.story matches 360..480 run title @a actionbar {"text":"我們曾為了對抗深淵，收集一把又一把的魔劍"}

execute if score .opening cutscene.story matches 480..600 run title @a actionbar {"text":"水之魔劍 - 水鏡之光"}

execute if score .opening cutscene.story matches 600..720 run title @a actionbar {"text":"草之魔劍 - 翠綠茵草"}

execute if score .opening cutscene.story matches 720..840 run title @a actionbar {"text":"火之魔劍 - 地獄之火"}

execute if score .opening cutscene.story matches 840..960 run title @a actionbar {"text":"雷之魔劍 - 天閃鳴雷"}

execute if score .opening cutscene.story matches 960..1080 run title @a actionbar {"text":"風之魔劍 - 逍遙靈風"}

execute if score .opening cutscene.story matches 1080..1120 run title @a actionbar {"text":"以及"}

execute if score .opening cutscene.story matches 1120..1140 run title @a actionbar {"text":"物理之魔劍 - 實質聖傷"}

execute if score .opening cutscene.story matches 1240..1360 run title @a actionbar {"text":"我們集齊了魔劍並獲得能匹敵深淵的力量"}

execute if score .opening cutscene.story matches 1360..1480 run title @a actionbar {"text":"但是我們最終沒能阻止深淵"}

execute if score .opening cutscene.story matches 1480..1600 run title @a actionbar {"text":"除了我以外的人都死了，而我也付出了慘痛的代價"}

execute if score .opening cutscene.story matches 1600..1720 run title @a actionbar {"text":"深淵利用我們的力量控制時空"}

execute if score .opening cutscene.story matches 1720..1840 run title @a actionbar {"text":"當我甦醒時，我在一個黑洞附近"}

execute if score .opening cutscene.story matches 1840..1960 run title @a actionbar {"text":"這個世界似乎因為深淵導致多個時空連結在一起"}

execute if score .opening cutscene.story matches 1960..2080 run title @a actionbar {"text":"我踏上了旅途，前往這充滿位置的新宇宙"}

# score +1
execute if score .opening cutscene.story matches 0..2080 run scoreboard players add .opening cutscene.story 1

# loop
execute if score .opening cutscene.story matches 0..2080 run schedule function cutscene:opening/story/0 1t