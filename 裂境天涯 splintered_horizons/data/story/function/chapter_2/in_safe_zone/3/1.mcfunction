# The entire storyline is executed through the scoreboard story(dummy) combined with the schedule command


execute \
    positioned 758 149 1003 \
    if score story.chapter_2.in_safe_zone.ml.3 story.chapter_2 matches 1 run \
tellraw @a[distance=..16] [{"translate": "story.chapter_2.in_safe_zone.3.1","fallback": "［萊卡］這做神殿是我用「輝煌之光」力量重朔回來的","with":[{"bold":true,"color":"gold","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"weapon.effect.resplendence","underlined":true,"fallback": "輝煌之光"}]}]

execute \
    positioned 758 149 1003 \
    if score story.chapter_2.in_safe_zone.ml.3 story.chapter_2 matches 2 run \
tellraw @a[distance=..16] [{"translate": "story.chapter_2.in_safe_zone.3.2","fallback": "［萊卡］但似乎我能力有限，無法完全還原每一個地方"}]

execute \
    positioned 758 149 1003 \
    if score story.chapter_2.in_safe_zone.ml.3 story.chapter_2 matches 3 run \
tellraw @a[distance=..16] [{"translate": "story.chapter_2.in_safe_zone.3.3","fallback": "［你］你好萊卡"}]

execute \
    positioned 758 149 1003 \
    if score story.chapter_2.in_safe_zone.ml.3 story.chapter_2 matches 4 run \
tellraw @a[distance=..16] {"translate": "story.chapter_2.in_safe_zone.3.4","fallback": "［萊卡］你好，怎麼了嗎？"}

execute \
    positioned 758 149 1003 \
    if score story.chapter_2.in_safe_zone.ml.3 story.chapter_2 matches 5 run \
tellraw @a[distance=..16] {"translate": "story.chapter_2.in_safe_zone.3.5","fallback": "［你］我想了解關於你與蘇菲亞的過去"}

execute \
    positioned 758 149 1003 \
    if score story.chapter_2.in_safe_zone.ml.3 story.chapter_2 matches 6 run \
tellraw @a[distance=..16] {"translate": "story.chapter_2.in_safe_zone.3.6","fallback": "［萊卡］該從何時說起呢"}

execute \
    positioned 758 149 1003 \
    if score story.chapter_2.in_safe_zone.ml.3 story.chapter_2 matches 7 run \
tellraw @a[distance=..16] {"translate": "story.chapter_2.in_safe_zone.3.7","fallback": "［萊卡］在我們的世界中存在著兩種特殊的力量"}

execute \
    positioned 758 149 1003 \
    if score story.chapter_2.in_safe_zone.ml.3 story.chapter_2 matches 8 run \
tellraw @a[distance=..16] [{"translate": "story.chapter_2.in_safe_zone.3.8","fallback": "［萊卡］宇宙的原初之力「始源」","with":[{"bold":true,"color":"#fde9c2","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"story.icon.proper_noun.primordium","underlined":true,"fallback": "始源"}]}]

execute \
    positioned 758 149 1003 \
    if score story.chapter_2.in_safe_zone.ml.3 story.chapter_2 matches 9 run \
tellraw @a[distance=..16] [{"translate": "story.chapter_2.in_safe_zone.3.9","fallback": "［萊卡］具有毀滅宇宙的終極力量「終焉」","with":[{"bold":true,"color":"dark_red","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"story.icon.proper_noun.finality","underlined":true,"fallback": "終焉"}]}]

execute \
    positioned 758 149 1003 \
    if score story.chapter_2.in_safe_zone.ml.3 story.chapter_2 matches 10 run \
tellraw @a[distance=..16] {"translate": "story.chapter_2.in_safe_zone.3.10","fallback": "［萊卡］在這兩種力量裡還存在著多個不同的分支"}

execute \
    positioned 758 149 1003 \
    if score story.chapter_2.in_safe_zone.ml.3 story.chapter_2 matches 11 run \
tellraw @a[distance=..16] {"translate": "story.chapter_2.in_safe_zone.3.11","fallback": "［萊卡］水、火、草、雷、風、大地"}

execute \
    positioned 758 149 1003 \
    if score story.chapter_2.in_safe_zone.ml.3 story.chapter_2 matches 12 run \
tellraw @a[distance=..16] {"translate": "story.chapter_2.in_safe_zone.3.12","fallback": "［萊卡］在我們的世界中戰爭不斷，擁有這種力量的我們稱之為「天啟」"}

execute \
    positioned 758 149 1003 \
    if score story.chapter_2.in_safe_zone.ml.3 story.chapter_2 matches 13 run \
tellraw @a[distance=..16] {"translate": "story.chapter_2.in_safe_zone.3.13","fallback": "［萊卡］我曾是雷之天啟，蘇菲亞則是火之天啟"}

execute \
    positioned 758 149 1003 \
    if score story.chapter_2.in_safe_zone.ml.3 story.chapter_2 matches 14 run \
tellraw @a[distance=..16] {"translate": "story.chapter_2.in_safe_zone.3.14","fallback": "［萊卡］我們與深淵為敵，共同對抗深淵","with":[{"bold":true,"color":"dark_purple","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"story.icon.proper_noun.abyss","underlined":true,"fallback": "深淵"},{"bold":true,"color":"dark_purple","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"story.icon.proper_noun.abyss","underlined":true,"fallback": "深淵"}]}

execute \
    positioned 758 149 1003 \
    if score story.chapter_2.in_safe_zone.ml.3 story.chapter_2 matches 15 run \
tellraw @a[distance=..16] {"translate": "story.chapter_2.in_safe_zone.3.15","fallback": "［萊卡］只為能夠把這個不完美的故事，變成我們期望的那樣子"}

execute \
    positioned 758 149 1003 \
    if score story.chapter_2.in_safe_zone.ml.3 story.chapter_2 matches 16 run \
tellraw @a[distance=..16] {"translate": "story.chapter_2.in_safe_zone.3.16","fallback": "［萊卡］戰爭不斷的同時，故人紛紛離去"}

execute \
    positioned 758 149 1003 \
    if score story.chapter_2.in_safe_zone.ml.3 story.chapter_2 matches 17 run \
tellraw @a[distance=..16] {"translate": "story.chapter_2.in_safe_zone.3.17","fallback": "［萊卡］在一次對抗深淵的戰爭中"}

execute \
    positioned 758 149 1003 \
    if score story.chapter_2.in_safe_zone.ml.3 story.chapter_2 matches 18 run \
tellraw @a[distance=..16] {"translate": "story.chapter_2.in_safe_zone.3.18","fallback": "［萊卡］蘇菲亞覺醒了死亡的力量，成為了「死亡之天啟」"}

execute \
    positioned 758 149 1003 \
    if score story.chapter_2.in_safe_zone.ml.3 story.chapter_2 matches 19 run \
tellraw @a[distance=..16] ["\n",{"translate": "story.chapter_2.in_safe_zone.3.19","fallback": "［萊卡］我也因那場戰鬥中成為了「光之天啟」"}]

execute \
    positioned 758 149 1003 \
    if score story.chapter_2.in_safe_zone.ml.3 story.chapter_2 matches 20 run \
tellraw @a[distance=..16] ["\n",{"translate": "story.chapter_2.in_safe_zone.3.20","fallback": "［萊卡］我們也在戰鬥中倒下了"}]

execute \
    positioned 758 149 1003 \
    if score story.chapter_2.in_safe_zone.ml.3 story.chapter_2 matches 21 run \
tellraw @a[distance=..16] ["\n",{"translate": "story.chapter_2.in_safe_zone.3.21","fallback": "［萊卡］死於深淵之下","with":[{"bold":true,"color":"dark_purple","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"story.icon.proper_noun.abyss","underlined":true,"fallback": "深淵"}]}]

execute \
    positioned 758 149 1003 \
    if score story.chapter_2.in_safe_zone.ml.3 story.chapter_2 matches 22 run \
tellraw @a[distance=..16] ["\n",{"translate": "story.chapter_2.in_safe_zone.3.22","fallback": "［萊卡］但在我與蘇菲亞消失之前我們卻奇蹟般的覺醒力量並且逃離了深淵的視線","with":[{"bold":true,"color":"dark_purple","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"story.icon.proper_noun.abyss","underlined":true,"fallback": "深淵"}]}]

execute \
    positioned 758 149 1003 \
    if score story.chapter_2.in_safe_zone.ml.3 story.chapter_2 matches 23 run \
tellraw @a[distance=..16] ["\n",{"translate": "story.chapter_2.in_safe_zone.3.23","fallback": "［萊卡］似乎這個世界不只有一個宇宙與一種特殊的能量"}]

execute \
    positioned 758 149 1003 \
    if score story.chapter_2.in_safe_zone.ml.3 story.chapter_2 matches 24 run \
tellraw @a[distance=..16] ["\n",{"translate": "story.chapter_2.in_safe_zone.3.24","fallback": "［萊卡］比如說，我感受到你身上有著與光相似的力量"}]

execute \
    positioned 758 149 1003 \
    if score story.chapter_2.in_safe_zone.ml.3 story.chapter_2 matches 25 run \
tellraw @a[distance=..16] ["\n",{"translate": "story.chapter_2.in_safe_zone.3.25","fallback": "［萊卡］但是又不完全是只有光，還有很多"}]

execute \
    positioned 758 149 1003 \
    if score story.chapter_2.in_safe_zone.ml.3 story.chapter_2 matches 26 run \
tellraw @a[distance=..16] ["\n",{"translate": "story.chapter_2.in_safe_zone.3.26","fallback": "［你］(與他述說你的故事)","bold":true,"color":"dark_green"}]

execute \
    positioned 758 149 1003 \
    if score story.chapter_2.in_safe_zone.ml.3 story.chapter_2 matches 27 run \
tellraw @a[distance=..16] ["\n",{"translate": "story.chapter_2.in_safe_zone.3.27","fallback": "［萊卡］這個世界真是奇妙"}]

execute \
    positioned 758 149 1003 \
    if score story.chapter_2.in_safe_zone.ml.3 story.chapter_2 matches 28 run \
tellraw @a[distance=..16] ["\n",{"translate": "story.chapter_2.in_safe_zone.3.28","fallback": "［萊卡］從未知力量的「始源」與「終焉」還有「深淵」","with":[{"bold":true,"color":"#fde9c2","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"story.icon.proper_noun.primordium","underlined":true,"fallback": "始源"},{"bold":true,"color":"dark_red","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"story.icon.proper_noun.finality","underlined":true,"fallback": "終焉"},{"bold":true,"color":"dark_purple","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"story.icon.proper_noun.abyss","underlined":true,"fallback": "深淵"}]}]

execute \
    positioned 758 149 1003 \
    if score story.chapter_2.in_safe_zone.ml.3 story.chapter_2 matches 29 run \
tellraw @a[distance=..16] ["\n",{"translate": "story.chapter_2.in_safe_zone.3.29","fallback": "［萊卡］現在又有「魔劍」與「魔神」還有「世界樹」","with":[{"bold":true,"color":"#fde9c2","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"story.icon.proper_noun.magic_sword","underlined":true,"fallback": "始源VI魔劍"},{"bold":true,"color":"#4dc5ab","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"story.icon.proper_noun.magical_sword_archons","underlined":true,"fallback": "執政官"}]}]

execute \
    positioned 758 149 1003 \
    if score story.chapter_2.in_safe_zone.ml.3 story.chapter_2 matches 30 run \
tellraw @a[distance=..16] ["\n",{"translate": "story.chapter_2.in_safe_zone.3.30","fallback": "［萊卡］你提到的收集魔劍與新的力量重新對抗深淵","with":[{"bold":true,"color":"#fde9c2","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"story.icon.proper_noun.magic_sword","underlined":true,"fallback": "始源VI魔劍"},{"bold":true,"color":"dark_purple","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"story.icon.proper_noun.abyss","underlined":true,"fallback": "深淵"}]}]

execute \
    positioned 758 149 1003 \
    if score story.chapter_2.in_safe_zone.ml.3 story.chapter_2 matches 31 run \
tellraw @a[distance=..16] ["\n",{"translate": "story.chapter_2.in_safe_zone.3.31","fallback": "［萊卡］或許我們可以助你一臂之力"}]

execute \
    positioned 758 149 1003 \
    if score story.chapter_2.in_safe_zone.ml.3 story.chapter_2 matches 32 run \
tellraw @a[distance=..16] ["\n",{"translate": "story.chapter_2.in_safe_zone.3.32","fallback": "［萊卡］「輝煌之光」的力量貌似跟你身上的水之魔劍有著共鳴","with":[{"bold":true,"color":"gold","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"weapon.effect.resplendence","underlined":true,"fallback": "輝煌之光"},{"bold":true,"color":"#0066ff","hover_event":{"action":"show_text","value":[{"translate":"monument.icon","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false},{"text":"\n\n"},{"translate": "proper_noun.desc.4","fallback":"定義為魔劍，遊戲的核心元素","color":"white","bold":false,"italic":false},{"text":"\n"},{"translate": "proper_noun.desc.5","fallback":"同時，它也是遊戲中目標物品(羊毛)","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"story.icon.proper_noun.aquilumera","underlined":true,"fallback": "水之魔劍 - 水鏡之光"}]}]

execute \
    positioned 758 149 1003 \
    if score story.chapter_2.in_safe_zone.ml.3 story.chapter_2 matches 33 run \
tellraw @a[distance=..16] ["\n",{"translate": "story.chapter_2.in_safe_zone.3.33","fallback": "［萊卡］或許你可以把全部的魔劍放到始源神殿"}]

execute \
    positioned 758 149 1003 \
    if score story.chapter_2.in_safe_zone.ml.3 story.chapter_2 matches 34 run \
tellraw @a[distance=..16] ["\n",{"translate": "story.chapter_2.in_safe_zone.3.34","fallback": "［萊卡］在這之前這裡的大家會與你一同尋找其餘的始源VI魔劍","with":[{"bold":true,"color":"#fde9c2","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"story.icon.proper_noun.magic_sword","underlined":true,"fallback": "始源VI魔劍"}]}]

execute \
    positioned 758 149 1003 \
    if score story.chapter_2.in_safe_zone.ml.3 story.chapter_2 matches 35 run \
tellraw @a[distance=..16] ["\n",{"translate": "story.chapter_2.in_safe_zone.3.35","fallback": "［萊卡］你準備好了我們就出發"}]

execute \
    positioned 758 149 1003 \
    if score story.chapter_2.in_safe_zone.ml.3 story.chapter_2 matches 35 run \
playsound minecraft:entity.player.levelup voice @a ~ ~1 ~ 0.5 1

execute \
    positioned 758 149 1003 \
    if score story.chapter_2.in_safe_zone.ml.3 story.chapter_2 matches 35 run \
tellraw @a[distance=..16] [{"translate": "story.end","fallback": "對話結束，再次點擊可重複查看對話內容","color":"gold"},{"text":"\n"}]


execute \
    if score story.chapter_2.in_safe_zone.ml.3 story.chapter_2 matches 36 run \
schedule function story:chapter_2/in_safe_zone/3/0 1t

data remove entity @s interaction


execute \
    unless score story.chapter_2.in_safe_zone.ml.3 story.chapter_2 matches 1..36 run \
return 0

scoreboard players add story.chapter_2.in_safe_zone.ml.3 story.chapter_2 1
playsound minecraft:ui.button.click voice @a ~ ~1 ~ 0.5 1