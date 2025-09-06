 #透過scoreboard story(dummy) + schedule 指令運行整個劇情

execute if score story.chapter_2.in_safe_zone.ml story.chapter_2 matches 1..180 run title @a actionbar {"translate": "story.chapter_2.ml.1","fallback": "［你］這裡...居然還有人類生活的痕跡"}
execute if score story.chapter_2.in_safe_zone.ml story.chapter_2 matches 180..360 run title @a actionbar {"translate": "story.chapter_2.ml.2","fallback": "［？？？］究竟是遠道而來的刺客，還是新的夥伴?"}
execute if score story.chapter_2.in_safe_zone.ml story.chapter_2 matches 360..550 run title @a actionbar {"translate": "story.chapter_2.ml.3","fallback": "(剎那間，你被 3 名強大的敵人團團圍住)","color": "red"}
execute if score story.chapter_2.in_safe_zone.ml story.chapter_2 matches 550..710 run title @a actionbar {"translate": "story.chapter_2.ml.4","fallback": "［？？？］我勸你們別冒然靠近這裡"}
execute if score story.chapter_2.in_safe_zone.ml story.chapter_2 matches 710..830 run title @a actionbar {"translate": "story.chapter_2.ml.5","fallback": "［？？？］警戒，對方雖然只有兩個人"}
execute if score story.chapter_2.in_safe_zone.ml story.chapter_2 matches 830..1080 run title @a actionbar {"translate": "story.chapter_2.ml.6","fallback": "［？？？］各位小心，我有股感覺... 他們並非常人"}
execute if score story.chapter_2.in_safe_zone.ml story.chapter_2 matches 1080..1260 run scoreboard players set story.chapter_2.in_safe_zone.ml story.chapter_2 1260
execute if score story.chapter_2.in_safe_zone.ml story.chapter_2 matches 1260..1440 run title @a actionbar {"translate": "story.chapter_2.ml.8","fallback": "(場面片刻安靜，似乎一場不可避免的戰鬥即將發生)","color": "red"}
execute if score story.chapter_2.in_safe_zone.ml story.chapter_2 matches 1440..1620 run title @a actionbar [{"translate": "story.chapter_2.ml.9","fallback": "［？？？］我想，大家可能誤會了什麼，對吧，蘇菲亞"}]
execute if score story.chapter_2.in_safe_zone.ml story.chapter_2 matches 1620 run scoreboard players set story.chapter_2.in_safe_zone.ml.2 story.chapter_2 1

scoreboard players add story.chapter_2.in_safe_zone.ml story.chapter_2 1

execute if score story.chapter_2.in_safe_zone.ml story.chapter_2 matches 1..1620 run schedule function story:chapter_2/in_safe_zone/1/1 1t