#  #水星初始離開太空站對話劇情

# #透過scoreboard story(dummy) + schedule 指令運行整個劇情

# execute if score story.chapter_2.ml story.chapter_2 matches 1 run tellraw @a {"translate": "story.chapter_2.ml.1","fallback": "［蘇菲亞］這裡...居然還有人類生活的痕跡"}
# execute if score story.chapter_2.ml story.chapter_2 matches 2 run tellraw @a {"translate": "story.chapter_2.ml.2","fallback": "［？？？］究竟是遠道而來的刺客，還是新的夥伴?"}
# execute if score story.chapter_2.ml story.chapter_2 matches 3 run tellraw @a {"translate": "story.chapter_2.ml.3","fallback": "(剎那間，你被 3 名強大的敵人團團圍住)","color": "red"}
# execute if score story.chapter_2.ml story.chapter_2 matches 4 run tellraw @a {"translate": "story.chapter_2.ml.4","fallback": "［守衛1］我勸你們別冒然靠近這裡"}
# execute if score story.chapter_2.ml story.chapter_2 matches 5 run tellraw @a {"translate": "story.chapter_2.ml.5","fallback": "［守衛2］警戒，對方雖然只有兩個人"}
# execute if score story.chapter_2.ml story.chapter_2 matches 6 run tellraw @a {"translate": "story.chapter_2.ml.6","fallback": "［守衛2］但是我能感受得到2位實力不容小覷"}
# execute if score story.chapter_2.ml story.chapter_2 matches 7 run tellraw @a {"translate": "story.chapter_2.ml.7","fallback": "［守衛3］深淵的爪牙居然會保護擁有世界樹力量的男孩？"}
# execute if score story.chapter_2.ml story.chapter_2 matches 8 run tellraw @a {"translate": "story.chapter_2.ml.8","fallback": "(場面片刻安靜，似乎一場不可避免的戰鬥即將發生)","color": "red"}
# execute if score story.chapter_2.ml story.chapter_2 matches 9 run tellraw @a [{"translate": "story.chapter_2.ml.9","fallback": "［？？？］我想，大家可能誤會了什麼，對吧，蘇菲亞"}]
# execute if score story.chapter_2.ml story.chapter_2 matches 10 run tellraw @a [{"translate": "story.chapter_2.ml.10","fallback": "［守衛1］隊長？你這是..."}]
# execute if score story.chapter_2.ml story.chapter_2 matches 11 run tellraw @a [{"translate": "story.chapter_2.ml.11","fallback": "［隊長］她身上確實有深淵的氣息，還有夾雜著其他未知的力量"}]
# execute if score story.chapter_2.ml story.chapter_2 matches 12 run tellraw @a [{"translate": "story.chapter_2.ml.12","fallback": "［蘇菲亞］你是...萊卡？"}]
# execute if score story.chapter_2.ml story.chapter_2 matches 13 run tellraw @a [{"translate": "story.chapter_2.ml.13","fallback": "［蘇菲亞］你不是在"},{"bold":true,"color":"gold","hoverEvent":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"story.icon.proper_noun.old_world","fallback": "舊世界","underlined":true},{"text": "已經死了嗎？","color": "white"}]
# execute if score story.chapter_2.ml story.chapter_2 matches 14 run tellraw @a [{"translate": "story.chapter_2.ml.14","fallback": "［萊卡］這件事情可能有些複雜，我晚點跟你解釋"}]
# execute if score story.chapter_2.ml story.chapter_2 matches 15 run tellraw @a {"translate": "story.chapter_2.ml.15","fallback": "［萊卡］大家可以放鬆警惕，對方是我昔日的故人"}
# execute if score story.chapter_2.ml story.chapter_2 matches 16 run tellraw @a {"translate": "story.chapter_2.ml.16","fallback": "［萊卡］我不認為你是深淵的爪牙，因為我們曾是對抗深淵的夥伴"}
# execute if score story.chapter_2.ml story.chapter_2 matches 17 run tellraw @a {"translate": "story.chapter_2.ml.17","fallback": "［萊卡］只是我想確定你身上的未知力量究竟是來自哪裡？"}
# execute if score story.chapter_2.ml story.chapter_2 matches 18 run tellraw @a {"translate": "story.chapter_2.ml.18","fallback": "［蘇菲亞］這是一股名為「終焉」的力量"}
# execute if score story.chapter_2.ml story.chapter_2 matches 19 run tellraw @a [{"translate": "story.chapter_2.ml.19","fallback": "［蘇菲亞］在"},{"bold":true,"color":"gold","hoverEvent":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"story.icon.proper_noun.final_battle","fallback": "最終決戰","underlined":true},{"text":"之後深淵吞噬了","color": "white"},{"bold":true,"color":"gold","hoverEvent":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"story.icon.proper_noun.old_world","fallback": "舊世界","underlined":true}]
# execute if score story.chapter_2.ml story.chapter_2 matches 20 run tellraw @a [{"translate": "story.chapter_2.ml.20","fallback": "［蘇菲亞］除了我之外的人都死於"},{"bold":true,"color":"gold","hoverEvent":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"story.icon.proper_noun.final_battle","fallback": "最終決戰","underlined":true},{"text": "，只有我奇蹟般的活下來","color": "white"}]
# execute if score story.chapter_2.ml story.chapter_2 matches 21 run tellraw @a {"translate": "story.chapter_2.ml.21","fallback": "［蘇菲亞］但在我穿越到了新世界，我掌握了一種新的力量「終焉」"}
# execute if score story.chapter_2.ml story.chapter_2 matches 22 run tellraw @a {"translate": "story.chapter_2.ml.22","fallback": "［蘇菲亞］它是一種融合了 死亡 與 深淵 的終極力量"}
# execute if score story.chapter_2.ml story.chapter_2 matches 23 run tellraw @a {"translate": "story.chapter_2.ml.23","fallback": "［蘇菲亞］萊卡，能見到你真是太好了"}
# execute if score story.chapter_2.ml story.chapter_2 matches 24 run tellraw @a {"translate": "story.chapter_2.ml.24","fallback": "［蘇菲亞］我有好多好多話想對你說"}
# execute if score story.chapter_2.ml story.chapter_2 matches 25 run tellraw @a {"translate": "story.chapter_2.ml.25","fallback": "［萊卡］能再次相遇，我也有好多話想對你說"}
# execute if score story.chapter_2.ml story.chapter_2 matches 26 run tellraw @a {"translate": "story.chapter_2.ml.26","fallback": "［萊卡］2位已是我們的盟友，今後這裡就是你們的家園"}
# execute if score story.chapter_2.ml story.chapter_2 matches 27 run tellraw @a {"translate": "story.chapter_2.ml.27","fallback": "［萊卡］你們來到這裡之前似乎盡力了許多惡戰"}
# execute if score story.chapter_2.ml story.chapter_2 matches 28 run tellraw @a {"translate": "story.chapter_2.ml.28","fallback": "［萊卡］不如你們可以去附近的鍛造台與商店升級裝備"}
# execute if score story.chapter_2.ml story.chapter_2 matches 29 run tellraw @a {"translate": "story.chapter_2.ml.29","fallback": "［萊卡］有什麼問題可以來中間的始源神殿找我"}
# execute if score story.chapter_2.ml story.chapter_2 matches 30 run tellraw @a ["\n",{"translate": "story.chapter_2.ml.31","fallback": "【目標】去始源神殿找蘇菲亞與萊卡","color": "gold"}]
# execute if score story.chapter_2.ml story.chapter_2 matches 30 run tellraw @a {"translate": "story.chapter_2.ml.30","fallback": "【目標】去附近的商店&鍛造台升級裝備 (非必要)","color": "gold"}

# scoreboard players add story.chapter_2.ml story.chapter_2 1

# execute if score story.chapter_2.ml story.chapter_2 matches 1..30 run schedule function story:chapter_2/in_safe_zone/1/1 8s