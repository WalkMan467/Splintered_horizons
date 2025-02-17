#透過scoreboard story(dummy) + schedule 指令運行整個劇情

# ========================================= #


execute if score .opening cutscene.story matches 120..240 run title @a actionbar [{"translate":"cutscene.opening.story.1"}]

execute if score .opening cutscene.story matches 220 run title @a times 20 20 20
execute if score .opening cutscene.story matches 220 run title @a title {"translate":"\uE000","font":"minecraft:screen"}

execute if score .opening cutscene.story matches 240..360 run title @a actionbar [{"translate":"cutscene.opening.story.2"}]

execute if score .opening cutscene.story matches 460 run title @a times 20 20 20
execute if score .opening cutscene.story matches 460 run title @a title {"translate":"\uE000","font":"minecraft:screen"}

execute if score .opening cutscene.story matches 360..480 run title @a actionbar {"translate":"cutscene.opening.story.3"}

execute if score .opening cutscene.story matches 480..600 run title @a actionbar {"translate":"cutscene.opening.story.4"}

execute if score .opening cutscene.story matches 600..720 run title @a actionbar {"translate":"cutscene.opening.story.5"}

execute if score .opening cutscene.story matches 720..840 run title @a actionbar {"translate":"cutscene.opening.story.6"}

execute if score .opening cutscene.story matches 840..960 run title @a actionbar {"translate":"cutscene.opening.story.7"}

execute if score .opening cutscene.story matches 960..1080 run title @a actionbar {"translate":"cutscene.opening.story.8"}

execute if score .opening cutscene.story matches 1080..1120 run scoreboard players set .opening cutscene.story 1120

execute if score .opening cutscene.story matches 1120..1140 run title @a actionbar {"translate":"cutscene.opening.story.9"}

execute if score .opening cutscene.story matches 1240..1360 run title @a actionbar {"translate":"cutscene.opening.story.10"}

execute if score .opening cutscene.story matches 1360..1480 run title @a actionbar {"translate":"cutscene.opening.story.11"}

execute if score .opening cutscene.story matches 1480..1600 run title @a actionbar {"translate":"cutscene.opening.story.12"}

execute if score .opening cutscene.story matches 1600..1720 run title @a actionbar {"translate":"cutscene.opening.story.13"}

execute if score .opening cutscene.story matches 1720..1760 run title @a actionbar {"translate":"cutscene.opening.story.14"}

execute if score .opening cutscene.story matches 1760..1880 run title @a actionbar {"translate":"cutscene.opening.story.15"}

execute if score .opening cutscene.story matches 1880..2000 run title @a actionbar {"translate":"cutscene.opening.story.16"}

execute if score .opening cutscene.story matches 2000..2120 run title @a actionbar {"translate":"cutscene.opening.story.17"}

execute if score .opening cutscene.story matches 2120..2240 run title @a actionbar {"translate":"cutscene.opening.story.18"}

execute if score .opening cutscene.story matches 2240..2360 run title @a actionbar {"translate":"cutscene.opening.story.19"}

execute if score .opening cutscene.story matches 2360..2480 run title @a actionbar {"translate":"cutscene.opening.story.20"}

execute if score .opening cutscene.story matches 2600 run title @a times 40 20 0
execute if score .opening cutscene.story matches 2600 run title @a title {"translate":"\uE000","font":"minecraft:screen"}

# score +1
execute if score .opening cutscene.story matches 0..4000 run scoreboard players add .opening cutscene.story 1

# loop
execute if score .opening cutscene.story matches 0..4000 run schedule function cutscene:opening/story/0 1t