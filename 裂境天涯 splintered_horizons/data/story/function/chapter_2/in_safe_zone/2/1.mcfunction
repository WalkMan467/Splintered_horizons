# The entire storyline is executed through the scoreboard story(dummy) combined with the schedule command


execute \
    positioned 765 146 992 \
    if score story.chapter_2.in_safe_zone.ml.2 story.chapter_2 matches 1 run \
tellraw @a[distance=..16] [{"translate": "story.chapter_2.in_safe_zone.2.1","fallback": "［蘇菲亞］你是...萊卡？","with":[{"bold":true,"color":"#f7e69c","hover_event":{"action":"show_text","value":[{translate:"character.lyca",color:"gray"},{text:"\n"},{"translate": "proper_noun.character.lyca.1","fallback":"蘇菲亞的夥伴","color":"gray","bold":false,"italic":false,"with":[{"translate":"character.sophia","bold":true,"italic":false,"underlined":true,"color":"dark_green"}]},"\n",{"translate": "proper_noun.character.lyca.2","fallback":"曾與蘇菲亞一同在舊世界共同戰鬥","color":"gray","bold":false,"italic":false,"with":[{"translate":"character.sophia","bold":true,"italic":false,"underlined":true,"color":"dark_green"},{"translate":"proper_nouns.icon.old_story","fallback":"舊世界","color":"gold","italic":false,"underlined":true},{"translate":"proper_nouns.icon.old_story","fallback":"舊世界","color":"gold","italic":false,"underlined":true}]},"\n",{"translate": "proper_noun.character.lyca.3","fallback":"現今掌握了輝煌之光的符文力量與其他夥伴共同對抗深淵", "with": [{"translate": "weapon.effect.resplendence", "underlined": True, "color": "gold"},{"translate":"story.icon.proper_noun.abyss","color":"dark_purple","bold":true,"italic":false,"underlined":true}],"color":"gray","bold":false,"italic":false},{text:"\n"},{text:"\n"},{translate:"proper_noun.desc.2",color:"white"},{keybind:"key.advancements",bold:true,color:"dark_green"},{translate:"proper_noun.desc.3",color:"white"}]},"italic":false,"translate":"character.lyca","underlined":true,"fallback": "萊卡"}]}]

execute \
    positioned 765 146 992 \
    if score story.chapter_2.in_safe_zone.ml.2 story.chapter_2 matches 2 run \
tellraw @a[distance=..16] [{"translate": "story.chapter_2.in_safe_zone.2.2","fallback": "［蘇菲亞］你不是在舊世界已經死了嗎？","with":[{"bold":true,"color":"gold","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"proper_nouns.icon.old_story","fallback": "舊世界","underlined":true}]}]

execute \
    positioned 765 146 992 \
    if score story.chapter_2.in_safe_zone.ml.2 story.chapter_2 matches 3 run \
tellraw @a[distance=..16] [{"translate": "story.chapter_2.in_safe_zone.2.3","fallback": "［萊卡］這件事情可能有些複雜，我晚點跟你解釋"}]

execute \
    positioned 765 146 992 \
    if score story.chapter_2.in_safe_zone.ml.2 story.chapter_2 matches 4 run \
tellraw @a[distance=..16] {"translate": "story.chapter_2.in_safe_zone.2.4","fallback": "［萊卡］大家可以放鬆警惕，對方是我昔日的故人"}

execute \
    positioned 765 146 992 \
    if score story.chapter_2.in_safe_zone.ml.2 story.chapter_2 matches 5 run \
tellraw @a[distance=..16] {"translate": "story.chapter_2.in_safe_zone.2.5","fallback": "［萊卡］我不認為你是深淵的爪牙，因為我們曾是對抗深淵的夥伴","with":[{"bold":true,"color":"dark_purple","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"story.icon.proper_noun.abyss","underlined":true,"fallback": "深淵"}]}

execute \
    positioned 765 146 992 \
    if score story.chapter_2.in_safe_zone.ml.2 story.chapter_2 matches 6 run \
tellraw @a[distance=..16] {"translate": "story.chapter_2.in_safe_zone.2.6","fallback": "［萊卡］只是我想確定你身上的未知力量究竟是來自哪裡？"}

execute \
    positioned 765 146 992 \
    if score story.chapter_2.in_safe_zone.ml.2 story.chapter_2 matches 7 run \
tellraw @a[distance=..16] {"translate": "story.chapter_2.in_safe_zone.2.7","fallback": "［蘇菲亞］這是一股名為「終焉」的力量","with":[{"bold":true,"color":"dark_red","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"story.icon.proper_noun.finality","underlined":true,"fallback": "終焉"}]}

execute \
    positioned 765 146 992 \
    if score story.chapter_2.in_safe_zone.ml.2 story.chapter_2 matches 8 run \
tellraw @a[distance=..16] [{"translate": "story.chapter_2.in_safe_zone.2.8","fallback": "［蘇菲亞］在最終決戰之後","with":[{"bold":true,"color":"gold","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"story.icon.proper_noun.final_battle","fallback": "最終決戰","underlined":true}]}]

execute \
    positioned 765 146 992 \
    if score story.chapter_2.in_safe_zone.ml.2 story.chapter_2 matches 9 run \
tellraw @a[distance=..16] [{ "translate": "story.chapter_2.in_safe_zone.2.9", "fallback": "深淵吞噬了舊世界" ,"color": "white","with":[{"bold":true,"color":"dark_purple","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"story.icon.proper_noun.abyss","underlined":true,"fallback": "深淵"},{"bold":true,"color":"gold","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"proper_nouns.icon.old_story","fallback": "舊世界","underlined":true}]}]

execute \
    positioned 765 146 992 \
    if score story.chapter_2.in_safe_zone.ml.2 story.chapter_2 matches 10 run \
tellraw @a[distance=..16] [{"translate": "story.chapter_2.in_safe_zone.2.10","fallback": "［蘇菲亞］除了我之外的人都死於最終決戰，只有我奇蹟般的活下來","with":[{"bold":true,"color":"gold","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"story.icon.proper_noun.final_battle","fallback": "最終決戰","underlined":true}]}]

execute \
    positioned 765 146 992 \
    if score story.chapter_2.in_safe_zone.ml.2 story.chapter_2 matches 11 run \
tellraw @a[distance=..16] {"translate": "story.chapter_2.in_safe_zone.2.11","fallback": "但在我穿越到了新世界，我掌握了一種新的力量「終焉」","with":[{"bold":true,"color":"dark_red","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"story.icon.proper_noun.finality","underlined":true,"fallback": "終焉"}]}

execute \
    positioned 765 146 992 \
    if score story.chapter_2.in_safe_zone.ml.2 story.chapter_2 matches 12 run \
tellraw @a[distance=..16] {"translate": "story.chapter_2.in_safe_zone.2.12","fallback": "它是一種融合了 死亡 與 深淵 的終極力量","with":[{"bold":true,"color":"dark_purple","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"story.icon.proper_noun.abyss","underlined":true,"fallback": "深淵"}]}

execute \
    positioned 765 146 992 \
    if score story.chapter_2.in_safe_zone.ml.2 story.chapter_2 matches 13 run \
tellraw @a[distance=..16] {"translate": "story.chapter_2.in_safe_zone.2.13","fallback": "［蘇菲亞］萊卡，能見到你真是太好了","with":[{"bold":true,"color":"#f7e69c","hover_event":{"action":"show_text","value":[{translate:"character.lyca",color:"gray"},{text:"\n"},{"translate": "proper_noun.character.lyca.1","fallback":"蘇菲亞的夥伴","color":"gray","bold":false,"italic":false,"with":[{"translate":"character.sophia","bold":true,"italic":false,"underlined":true,"color":"dark_green"}]},"\n",{"translate": "proper_noun.character.lyca.2","fallback":"曾與蘇菲亞一同在舊世界共同戰鬥","color":"gray","bold":false,"italic":false,"with":[{"translate":"character.sophia","bold":true,"italic":false,"underlined":true,"color":"dark_green"},{"translate":"proper_nouns.icon.old_story","fallback":"舊世界","color":"gold","italic":false,"underlined":true},{"translate":"proper_nouns.icon.old_story","fallback":"舊世界","color":"gold","italic":false,"underlined":true}]},"\n",{"translate": "proper_noun.character.lyca.3","fallback":"現今掌握了輝煌之光的符文力量與其他夥伴共同對抗深淵", "with": [{"translate": "weapon.effect.resplendence", "underlined": True, "color": "gold"},{"translate":"story.icon.proper_noun.abyss","color":"dark_purple","bold":true,"italic":false,"underlined":true}],"color":"gray","bold":false,"italic":false},{text:"\n"},{text:"\n"},{translate:"proper_noun.desc.2",color:"white"},{keybind:"key.advancements",bold:true,color:"dark_green"},{translate:"proper_noun.desc.3",color:"white"}]},"italic":false,"translate":"character.lyca","underlined":true,"fallback": "萊卡"}]}

execute \
    positioned 765 146 992 \
    if score story.chapter_2.in_safe_zone.ml.2 story.chapter_2 matches 14 run \
tellraw @a[distance=..16] {"translate": "story.chapter_2.in_safe_zone.2.14","fallback": "［蘇菲亞］我有好多好多話想對你說"}

execute \
    positioned 765 146 992 \
    if score story.chapter_2.in_safe_zone.ml.2 story.chapter_2 matches 15 run \
tellraw @a[distance=..16] {"translate": "story.chapter_2.in_safe_zone.2.15","fallback": "［萊卡］能再次相遇，我也有好多話想對你說"}

execute \
    positioned 765 146 992 \
    if score story.chapter_2.in_safe_zone.ml.2 story.chapter_2 matches 16 run \
tellraw @a[distance=..16] {"translate": "story.chapter_2.in_safe_zone.2.16","fallback": "［萊卡］2位已是我們的盟友，今後這裡就是你們的家園"}

execute \
    positioned 765 146 992 \
    if score story.chapter_2.in_safe_zone.ml.2 story.chapter_2 matches 17 run \
tellraw @a[distance=..16] {"translate": "story.chapter_2.in_safe_zone.2.17","fallback": "［萊卡］你們來到這裡之前似乎盡力了許多惡戰"}

execute \
    positioned 765 146 992 \
    if score story.chapter_2.in_safe_zone.ml.2 story.chapter_2 matches 18 run \
tellraw @a[distance=..16] {"translate": "story.chapter_2.in_safe_zone.2.18","fallback": "［萊卡］不如你們可以去附近的鍛造台與商店升級裝備"}

execute \
    positioned 765 146 992 \
    if score story.chapter_2.in_safe_zone.ml.2 story.chapter_2 matches 19 run \
tellraw @a[distance=..16] {"translate": "story.chapter_2.in_safe_zone.2.19","fallback": "［萊卡］有什麼問題可以來中間的始源神殿找我","color":white,"bold":false}

execute \
    positioned 765 146 992 \
    if score story.chapter_2.in_safe_zone.ml.2 story.chapter_2 matches 20 run \
tellraw @a[distance=..16] [{"translate": "story.end","fallback": "對話結束，再次點擊可重複查看對話內容","color":"gold"},{"text":"\n"}]

execute \
    positioned 765 146 992 \
    if score story.chapter_2.in_safe_zone.ml.2 story.chapter_2 matches 20 run \
tellraw @a[distance=..16] [{"translate": "story.chapter_2.in_safe_zone.2.20","fallback": "【目標】去始源神殿找蘇菲亞與萊卡","color": "gold"}]

execute \
    positioned 765 146 992 \
    if score story.chapter_2.in_safe_zone.ml.2 story.chapter_2 matches 20 run \
tellraw @a[distance=..16] [{"translate": "story.chapter_2.in_safe_zone.2.21","fallback": "【目標】去附近的商店&鍛造台升級裝備 (非必要)","color": "gold",},"\n"]

execute \
    positioned 765 146 992 \
    if score story.chapter_2.in_safe_zone.ml.2 story.chapter_2 matches 20 run \
playsound minecraft:entity.player.levelup voice @a ~ ~1 ~ 0.5 1

execute \
    positioned 765 146 992 \
    if score story.chapter_2.in_safe_zone.ml.2 story.chapter_2 matches 20 run \
function story:chapter_2/in_safe_zone/2/remove_npc

data remove entity @s interaction


execute \
    unless score story.chapter_2.in_safe_zone.ml.2 story.chapter_2 matches 1..20 run \
return 0

scoreboard players add story.chapter_2.in_safe_zone.ml.2 story.chapter_2 1
playsound minecraft:ui.button.click voice @a ~ ~1 ~ 0.5 1