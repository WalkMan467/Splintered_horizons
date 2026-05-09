# The entire storyline is executed through the scoreboard story(dummy) combined with the schedule command


execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 1 \
    unless score #story:icon/story/chapter_2/mq/scebe_4 global.main matches 1 \
    as @n[sort=arbitrary,distance=..1,tag=aj.isokla.root,type=item_display] \
    on passengers run \
data modify entity @s Glowing set value 0b


execute \
    if score story.chapter_2.ml.6 story.chapter_2 matches 1 run \
scoreboard players set #story:icon/story/chapter_2/mq/scebe_4 global.main 1


execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 1 run \
tellraw @a[distance=..16] \
    [ \
        {"text": "？？？",color:"white","bold":true},\
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.1","fallback": "你好，來自其他舊世界的二位，我叫賽琳娜","bold": false} \
    ]


execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 2 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.2","fallback": "如同二位看到到其他英傑一樣","bold": false} \
    ]


execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 3 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.3","fallback": "我們每個人都有著來自不同舊世界力量","bold": false} \
    ]


execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 4 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.4","fallback": "作為「記憶之冰」符文使者，我擁有讀取世界記憶的能力","bold": false} \
    ]


execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 5 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.5","fallback": "同時，我是一名偵探","bold": false} \
    ]


execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 6 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.6","fallback": "很高興能夠與你們一同討伐 空之支配者 - 伊萊克爾","bold": false} \
    ]


execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 7 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.sophia",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.7","fallback": "很高興能與你一同作戰","bold": false} \
    ]


execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 8 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.stellar",color:"white","bold":true},\
        {"atlas":"minecraft:items","sprite":"item/character/stellar","bold":false,shadow_color:0,"color":"white"},\
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.8","fallback": "我曾在之前島嶼發現一些關於空之支配者操控空間與時間的信息","bold": false} \
    ]


execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 9 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.stellar",color:"white","bold":true},\
        {"atlas":"minecraft:items","sprite":"item/character/stellar","bold":false,shadow_color:0,"color":"white"},\
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.9","fallback": "與叫賽羅尼斯的時空觀測者似乎也提到過一些他的信息","bold": false} \
    ]


execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 10 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.10","fallback": "原來是他，那是我與他在舊世界共同的敵人","bold": false} \
    ]


execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 11 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.11","fallback": "讓我思考片刻該如何解釋關於之前故事","bold": false} \
    ]


execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 12 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.12","fallback": "這就要從很久以前說起了...","bold": false} \
    ]


execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 13 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.13","fallback": "在我的舊世界裡，我是一名偵探","bold": false} \
    ]


execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 14 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.14","fallback": "有天收到一個奇怪的案子引起我的好奇心","bold": false} \
    ]


execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 15 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.15","fallback": "是一個述說著時空裂縫與深淵怪物的傳聞","bold": false} \
    ]


execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 16 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.16","fallback": "好奇心驅使著我調查了這個案子","bold": false} \
    ]


execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 17 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.17","fallback": "在辦案過程中偶然發現了時空裂縫與深淵怪物","bold": false} \
    ]

execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 18 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.18","fallback": "再被追逐中偶然觸碰裂縫進入了一個特殊的空間","bold": false} \
    ]

execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 19 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.19","fallback": "但進入沒多久就被一股力量拉回現實並且獲得了名為 星空之霜 的力量","bold": false} \
    ]

execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 20 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.20","fallback": "這股力量能將世界的記憶凝聚成冰以及具現化世界被塵封的記憶","bold": false} \
    ]

execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 21 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.21","fallback": "我使用這股力量擊敗了追逐我的深淵怪物","bold": false} \
    ]

execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 22 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.22","fallback": "在我不斷調查下發現了這世界出現了很多個怪物與不尋常的異常現象","bold": false} \
    ]

execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 23 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.23","fallback": "穿梭到異空間後前方是一個凝聚世界記憶的大樹","bold": false} \
    ]

execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 24 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.24","fallback": "透過觸碰樹，偶然發現了我曾經所在世界的秘密","bold": false} \
    ]

execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 25 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.25","fallback": "所有事物都是由世界記憶之樹回放並且維持著壽命","bold": false} \
    ]

execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 26 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.26","fallback": "且透過觸碰記憶發現從世界誕生到走向毀滅，世間已經輪迴了無數次的真相","bold": false} \
    ]

execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 27 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.27","fallback": "在世界記憶之樹附近發現了名為 賽羅尼斯 的時空觀測者","bold": false} \
    ]

execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 28 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.28","fallback": "賽羅尼斯 作為時空觀測者並不想這個世界就此毀滅","bold": false} \
    ]

execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 29 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.29","fallback": "所以調用了世界記憶之樹的力量重複回放世界平靜之時的片段","bold": false} \
    ]

execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 30 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.30","fallback": "直到我的出現，不受回朔力量的引響","bold": false} \
    ]

execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 31 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.31","fallback": "並且可以來到世界記憶之樹所在的特殊空間","bold": false} \
    ]

execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 32 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.32","fallback": "但無非是徒勞，世界走向毀滅的源頭是因為世界出現了「空之支配者」伊萊克爾","bold": false} \
    ]

execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 33 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.33","fallback": "起初 賽羅尼斯 可以調用世界記憶之樹力量去使怪物消失，但漸漸地免疫回朔的引響","bold": false} \
    ]

execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 34 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.34","fallback": "且 伊萊克爾 發現了這裡，試圖透過摧毀回朔記憶片段來毀滅世界從而征服世界","bold": false} \
    ]

execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 35 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.35","fallback": "在經歷多次世界回朔與 伊萊克爾 的交戰","bold": false} \
    ]

execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 36 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.36","fallback": "伊萊克爾取得了勝利，同時也重傷了 賽羅尼斯","bold": false} \
    ]

execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 37 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.37","fallback": "伊萊克爾從被世界記憶組成的牢籠破殼而出","bold": false} \
    ]

execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 38 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.38","fallback": "與其餘的 舊日支配者 成為了新世界的統治者","bold": false} \
    ]

execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 39 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.39","fallback": "如果可以的話，我想要回到過去阻止這一切的發生","bold": false} \
    ]

execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 40 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.40","fallback": "可惜...我無法改變什麼","bold": false} \
    ]

execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 41 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.41","fallback": "時間奪走了我的一切","bold": false} \
    ]

execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 42 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.42","fallback": "但...即便如此，至少我能夠與你們一同戰鬥","bold": false} \
    ]

execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 43 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.43","fallback": "記憶之冰雖然與世界記憶之樹有著部分聯繫","bold": false} \
    ]

execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 44 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.44","fallback": "但有些失去的東西或許再也回不來了","bold": false} \
    ]

execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 45 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.45","fallback": "但願...時間能夠停止，回到過去","bold": false} \
    ]

execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 46 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.46","fallback": "即便經歷那無數次的永劫輪迴，記憶如冰凍結於此刻","bold": false} \
    ]

execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 47 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.47","fallback": "我也不願讓他們再度消失","bold": false} \
    ]

execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 48 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.48","fallback": "我很抱歉剛剛突然講的太沉重","bold": false} \
    ]

execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 49 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.49","fallback": "即便這裡每個人都有著不同的故事","bold": false} \
    ]

execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 50 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.50","fallback": "但我們仍希望改寫世界的命運","bold": false} \
    ]

execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 51 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.6.51","fallback": "我們走吧，讓我們去為一切努力吧","bold": false} \
    ]

execute \
    positioned 926 167 909 \
    if score story.chapter_2.ml.6 story.chapter_2 matches 51 run \
tellraw @a[distance=..16] \
    [ \
        {"text":"\n"},\
        {"translate": "story.end","fallback": "對話結束，再次點擊可重複查看對話內容","color":"gold"},\
        {"text":"\n"} \
    ]


execute \
    if score story.chapter_2.ml.6 story.chapter_2 matches 51 run \
playsound minecraft:entity.player.levelup voice @a ~ ~1 ~ 0.5 1


execute \
    if score story.chapter_2.ml.6 story.chapter_2 matches 52 run \
schedule function story:chapter_2/ml/6/0 1t

data remove entity @s interaction


execute \
    unless score story.chapter_2.ml.6 story.chapter_2 matches 1..52 run \
return 0

execute \
    as @n[distance=..1,tag=aj.selena.root,type=item_display] at @s run \
function animated_java:selena/animations/chat1/stop


execute \
    as @n[distance=..1,tag=aj.selena.root,type=item_display] at @s run \
function animated_java:selena/animations/chat1/tween {to_frame: 5, duration: 5}


scoreboard players add story.chapter_2.ml.6 story.chapter_2 1
playsound minecraft:ui.button.click voice @a ~ ~1 ~ 0.5 1