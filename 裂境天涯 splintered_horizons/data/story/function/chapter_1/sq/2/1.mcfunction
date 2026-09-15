# The entire storyline is executed through the scoreboard story(dummy) combined with the schedule command


execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 1 \
    unless score story.chapter_1.sq.2 global.main matches 1 \
    as 0004c3a7-ffff-827d-0031-079d00005a5b \
    on passengers run \
data modify entity @s Glowing set value 0b


execute \
    \
    if score story.chapter_1.sq.2 story.chapter_1 matches 1 run \
scoreboard players set story.chapter_1.sq.2 global.main 1


execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 1 run \
tellraw @a[distance=..16] \
    [ \
        {"text": "？？？",color:"white","bold":true},\
        {"atlas":"minecraft:items","sprite":"item/character/selena","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.1","fallback": "未知的旅者，在你到達這裡之前，我已經觀察你很久了","bold": false} \
    ]


execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 2 run \
tellraw @a[distance=..16] \
    [ \
        {"text": "？？？",color:"white","bold":true},\
        {"atlas":"minecraft:items","sprite":"item/character/selena","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.2","fallback": "你似乎沒有敵意，不過我看得出來，你對這個世界感到迷茫","bold": false} \
    ]


execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 3 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/selena","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.3","fallback": "我的名字是%1$s，曾經是%2$s的一名偵探","bold": false,"with":[{"bold":true,"underlined":true,"color":"#674cff","translate":"story.characters.selena","fallback":"賽羅尼斯"},{"bold":true,"color":"yellow","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"proper_nouns.icon.old_story","underlined":true,"fallback": "舊世界"}]} \
    ]


execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 4 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/selena","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.4","fallback": "只是因為%1$s的緣故","bold": false, "with":[{"bold":true,"color":"#fbff00","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"monsters.elekiel","underlined":true,"fallback": "「永劫」支配者: 伊萊克爾"}]} \
    ]


execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 5 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/selena","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.5","fallback": "如今的我已經失去了大部分的力量","bold": false} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 6 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.sophia",color:"white","bold":true},\
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"},\
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.6","fallback": "等等，你說%1$s？","bold": false, "with":[{"bold":true,"color":"#fbff00","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"monsters.elekiel","underlined":true,"fallback": "「永劫」支配者: 伊萊克爾"}]} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 7 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.sophia",color:"white","bold":true},\
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"},\
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.7","fallback": "我曾在旅途中的一座城市裡，讀到過關於他的資料","bold": false} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 8 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.stellar",color:"white","bold":true},\
        {"atlas":"minecraft:items","sprite":"item/character/stellar","bold":false,shadow_color:0,"color":"white"},\
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.8","fallback": "難道說這個新世界的敵人不只一個","bold": false} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 9 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.stellar",color:"white","bold":true},\
        {"atlas":"minecraft:items","sprite":"item/character/stellar","bold":false,shadow_color:0,"color":"white"},\
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.9","fallback": "我的、蘇菲亞的，還有你%s的最終敵人，全都來到了這裡","bold": false,"with":[{"bold":true,"color":"yellow","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"proper_nouns.icon.old_story","underlined":true,"fallback": "舊世界"}]} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 10 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/selena","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.10","fallback": "是的，我們稱他們為 %s","bold": false,"with":[{"bold":true,"color":"dark_red","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"story.icon.proper_noun.great_old_ones","underlined":true,"fallback": "舊日支配者"}]} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 11 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/selena","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.11","fallback": "這道門是由我%1$s的記憶之樹構成的","bold": false,"with":[{"bold":true,"color":"yellow","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"proper_nouns.icon.old_story","underlined":true,"fallback": "舊世界"}]} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 12 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/selena","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.12","fallback": "門的後面，是一個充滿不同時空%s記憶的世界","bold": false,"with":[{"bold":true,"color":"yellow","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"proper_nouns.icon.old_story","underlined":true,"fallback": "舊世界"}]} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 13 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/selena","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.13","fallback": "我稱它為 異界之門","bold": false} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 14 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/selena","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.14","fallback": "自從%1$s將%2$s毀滅之後","bold": false,"with":[{"bold":true,"color":"dark_purple","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"story.icon.proper_noun.abyss","underlined":true,"fallback": "深淵"},{"bold":true,"color":"yellow","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"proper_nouns.icon.old_story","underlined":true,"fallback": "舊世界"}]} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 15 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/selena","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.15","fallback": "世界的記憶與時空就變得混亂不堪","bold": false} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 16 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/selena","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.16","fallback": "也因此誕生了許多不穩定的時空裂隙","bold": false} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 17 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/selena","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.17","fallback": "由於裂隙並不穩定，門後除了復現出來的地形與強大的武器","bold": false} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 18 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/selena","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.18","fallback": "還有許多來自%1$s的%2$s怪物","bold": false,"with":[{"bold":true,"color":"yellow","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"proper_nouns.icon.old_story","underlined":true,"fallback": "舊世界"},{"bold":true,"color":"dark_purple","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"story.icon.proper_noun.abyss","underlined":true,"fallback": "深淵"}]} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 19 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/selena","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.19","fallback": "因為一些過去的遺憾，我打算獨自前往門的另一邊","bold": false,"with":[{"bold":true,"color":"yellow","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"proper_nouns.icon.old_story","underlined":true,"fallback": "舊世界"},{"bold":true,"color":"dark_purple","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"story.icon.proper_noun.abyss","underlined":true,"fallback": "深淵"}]} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 20 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/selena","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.20","fallback": "不過就像我說的，我在你身上看到了以前的自己，如果你願意，要不要一起去？","bold": false} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 21 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/selena","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.21","fallback": "只是要打開這道門，需要用 9 個 %s 做成的鑰匙","bold": false,"with":[{"bold":true,"underlined":true,"color":"dark_purple","translate":"item.unstable_crystal","fallback": "世界記憶碎片"}]} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 22 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/selena","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.22","fallback": "而我一個人湊不齊","bold": false} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 23 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/selena","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.23","fallback": "如果你能幫我找到 9 個 %s","bold": false,"with":[{"bold":true,"underlined":true,"color":"dark_purple","translate":"item.unstable_crystal","fallback": "世界記憶碎片"}]} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 24 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/selena","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.24","fallback": "我就能調用剩下的力量，把它們變成開門的鑰匙","bold": false} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 25 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/selena","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.25","fallback": "或許在門的另一邊，能解開你心裡的疑惑","bold": false,"with":[{"bold":true,"underlined":true,"color":"aqua","translate":"story.characters.selena","fallback":"賽琳娜"}]} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 26 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/selena","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.26","fallback": "願你我都能在各自的路上找到光明","bold": false,"with":[{"bold":true,"color":"yellow","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"proper_nouns.icon.old_story","underlined":true,"fallback": "舊世界"}]} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 27 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/selena","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.27","fallback": "還有，門後的東西也記得你，小心一點","bold": false,"with":[{"bold":true,"color":"dark_red","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"story.icon.proper_noun.great_old_ones","underlined":true,"fallback": "舊日支配者"}]} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 27 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.end","fallback": "對話結束，再次點擊可重複查看對話內容","color":"gold"},\
        {"text":"\n"} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 27 run \
playsound minecraft:entity.player.levelup voice @a ~ ~1 ~ 0.5 1

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 27 run \
scoreboard players set #story:icon/proper_noun/great_old_ones global.main 1

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 27 run \
function story:chapter_1/sq/2/shop_unlock

data remove entity @s interaction

execute \
    unless score story.chapter_1.sq.2 story.chapter_1 matches 0..27 run \
return 0

scoreboard players add story.chapter_1.sq.2 story.chapter_1 1
playsound minecraft:ui.button.click voice @a ~ ~1 ~ 0.5 1

execute \
    as @n[distance=..1,tag=aj.selena.root,type=item_display] at @s run \
function aj:selena/animations/chat1/stop


execute \
    as @n[distance=..1,tag=aj.selena.root,type=item_display] at @s run \
function aj:selena/animations/chat1/tween {to_frame: 5, duration: 5}