# The entire storyline is executed through the scoreboard story(dummy) combined with the schedule command


execute \
    positioned 802 71 1592 \
    if score story.chapter_2.ml.9 story.chapter_2 matches 1 \
    unless score #story:icon/story/chapter_2/mq/scebe_4 global.main matches 1 \
    as @n[sort=arbitrary,distance=..1,tag=aj.isokla.root,type=item_display] \
    on passengers run \
data modify entity @s Glowing set value 0b


execute \
    if score story.chapter_2.ml.9 story.chapter_2 matches 1 run \
scoreboard players set #story:icon/story/chapter_2/mq/scebe_4 global.main 1


execute \
    positioned 802 71 1592 \
    if score story.chapter_2.ml.9 story.chapter_2 matches 1 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.stellar",color:"white","bold":true},\
        {"atlas":"minecraft:items","sprite":"item/character/stellar","bold":false,shadow_color:0,"color":"white"},\
        {"text":" : ","color":"white","bold": false},\
        {"translate": "story.chapter_2.ml.9.1","fallback": "似乎周圍都解決了，我們可以休息一會","bold": false} \
    ]


execute \
    positioned 802 71 1592 \
    if score story.chapter_2.ml.9 story.chapter_2 matches 2 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.stellar",color:"white","bold":true},\
        {"atlas":"minecraft:items","sprite":"item/character/stellar","bold":false,shadow_color:0,"color":"white"},\
        {"text":" : ","color":"white","bold": false},\
        {"translate": "story.chapter_2.ml.9.2","fallback": "之前聽賽琳娜提起她的故事讓我想起一位人","bold": false} \
    ]


execute \
    positioned 802 71 1592 \
    if score story.chapter_2.ml.9 story.chapter_2 matches 3 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.stellar",color:"white","bold":true},\
        {"atlas":"minecraft:items","sprite":"item/character/stellar","bold":false,shadow_color:0,"color":"white"},\
        {"text":" : ","color":"white","bold": false},\
        {"translate": "story.chapter_2.ml.9.3","fallback": "我的父親 阿斯卡，也是我旅途的意義","bold": false} \
    ]


execute \
    positioned 802 71 1592 \
    if score story.chapter_2.ml.9 story.chapter_2 matches 4 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.sophia",color:"white","bold":true},\
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"},\
        {"text":" : ","color":"white","bold": false},\
        {"translate": "story.chapter_2.ml.9.4","fallback": "我曾經有聽你說關於阿斯卡的事蹟","bold": false} \
    ]


execute \
    positioned 802 71 1592 \
    if score story.chapter_2.ml.9 story.chapter_2 matches 5 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.sophia",color:"white","bold":true},\
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"},\
        {"text":" : ","color":"white","bold": false},\
        {"translate": "story.chapter_2.ml.9.5","fallback": "他曾是光之聖殿最偉大的12聖騎之一，","bold": false} \
    ]

execute \
    positioned 802 71 1592 \
    if score story.chapter_2.ml.9 story.chapter_2 matches 6 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.sophia",color:"white","bold":true},\
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"},\
        {"text":" : ","color":"white","bold": false},\
        {"translate": "story.chapter_2.ml.9.6","fallback": "大地之魔劍：震巖裂刃的執政官","bold": false} \
    ]

execute \
    positioned 802 71 1592 \
    if score story.chapter_2.ml.9 story.chapter_2 matches 7 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.sophia",color:"white","bold":true},\
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"},\
        {"text":" : ","color":"white","bold": false},\
        {"translate": "story.chapter_2.ml.9.7","fallback": "與此同時，也是世界樹的守護者","bold": false} \
    ]

execute \
    positioned 802 71 1592 \
    if score story.chapter_2.ml.9 story.chapter_2 matches 8 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.9.8","fallback": "哇，真是一位值得尊敬的英雄","bold": false} \
    ]

execute \
    positioned 802 71 1592 \
    if score story.chapter_2.ml.9 story.chapter_2 matches 9 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.stellar",color:"white","bold":true},\
        {"atlas":"minecraft:items","sprite":"item/character/stellar","bold":false,shadow_color:0,"color":"white"},\
        {"text":" : ","color":"white","bold": false},\
        {"translate": "story.chapter_2.ml.9.9","fallback": "是的，我誕生於世界樹之下，在世界即將毀滅之際","bold": false} \
    ]

execute \
    positioned 802 71 1592 \
    if score story.chapter_2.ml.9 story.chapter_2 matches 10 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.stellar",color:"white","bold":true},\
        {"atlas":"minecraft:items","sprite":"item/character/stellar","bold":false,shadow_color:0,"color":"white"},\
        {"text":" : ","color":"white","bold": false},\
        {"translate": "story.chapter_2.ml.9.10","fallback": "他將我送往安全地方並託付我拯救世界的使命","bold": false} \
    ]

execute \
    positioned 802 71 1592 \
    if score story.chapter_2.ml.9 story.chapter_2 matches 11 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.stellar",color:"white","bold":true},\
        {"atlas":"minecraft:items","sprite":"item/character/stellar","bold":false,shadow_color:0,"color":"white"},\
        {"text":" : ","color":"white","bold": false},\
        {"translate": "story.chapter_2.ml.9.11","fallback": "當時的我很迷茫，直到我旅途到我第一個星球 奧蘭蒂斯","bold": false} \
    ]

execute \
    positioned 802 71 1592 \
    if score story.chapter_2.ml.9 story.chapter_2 matches 12 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.stellar",color:"white","bold":true},\
        {"atlas":"minecraft:items","sprite":"item/character/stellar","bold":false,shadow_color:0,"color":"white"},\
        {"text":" : ","color":"white","bold": false},\
        {"translate": "story.chapter_2.ml.9.12","fallback": "並與同伴們共同擊敗深淵，拯救水之魔劍的執政官","bold": false} \
    ]

execute \
    positioned 802 71 1592 \
    if score story.chapter_2.ml.9 story.chapter_2 matches 13 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.stellar",color:"white","bold":true},\
        {"atlas":"minecraft:items","sprite":"item/character/stellar","bold":false,shadow_color:0,"color":"white"},\
        {"text":" : ","color":"white","bold": false},\
        {"translate": "story.chapter_2.ml.9.13","fallback": "就這樣，一次又一次收集了 6 把魔劍與結交了許多朋友","bold": false} \
    ]

execute \
    positioned 802 71 1592 \
    if score story.chapter_2.ml.9 story.chapter_2 matches 14 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.stellar",color:"white","bold":true},\
        {"atlas":"minecraft:items","sprite":"item/character/stellar","bold":false,shadow_color:0,"color":"white"},\
        {"text":" : ","color":"white","bold": false},\
        {"translate": "story.chapter_2.ml.9.14","fallback": "同時也追隨著尋找阿斯卡的旅途","bold": false} \
    ]

execute \
    positioned 802 71 1592 \
    if score story.chapter_2.ml.9 story.chapter_2 matches 15 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.stellar",color:"white","bold":true},\
        {"atlas":"minecraft:items","sprite":"item/character/stellar","bold":false,shadow_color:0,"color":"white"},\
        {"text":" : ","color":"white","bold": false},\
        {"translate": "story.chapter_2.ml.9.15","fallback": "最終，我與阿斯卡相見，與此同時共同面對我們最終的敵人，深淵之主","bold": false} \
    ]

execute \
    positioned 802 71 1592 \
    if score story.chapter_2.ml.9 story.chapter_2 matches 16 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.stellar",color:"white","bold":true},\
        {"atlas":"minecraft:items","sprite":"item/character/stellar","bold":false,shadow_color:0,"color":"white"},\
        {"text":" : ","color":"white","bold": false},\
        {"translate": "story.chapter_2.ml.9.16","fallback": "但，在最終之戰的途中，一個又一個昔日的同伴漸漸倒下","bold": false} \
    ]

execute \
    positioned 802 71 1592 \
    if score story.chapter_2.ml.9 story.chapter_2 matches 17 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.stellar",color:"white","bold":true},\
        {"atlas":"minecraft:items","sprite":"item/character/stellar","bold":false,shadow_color:0,"color":"white"},\
        {"text":" : ","color":"white","bold": false},\
        {"translate": "story.chapter_2.ml.9.17","fallback": "最後，阿斯卡也隨我離去，世界最後希望已然崩毀","bold": false} \
    ]

execute \
    positioned 802 71 1592 \
    if score story.chapter_2.ml.9 story.chapter_2 matches 18 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.stellar",color:"white","bold":true},\
        {"atlas":"minecraft:items","sprite":"item/character/stellar","bold":false,shadow_color:0,"color":"white"},\
        {"text":" : ","color":"white","bold": false},\
        {"translate": "story.chapter_2.ml.9.18","fallback": "眼前除了深淵的侵蝕外已毫無生機，我帶著悲傷漸漸倒下","bold": false} \
    ]

execute \
    positioned 802 71 1592 \
    if score story.chapter_2.ml.9 story.chapter_2 matches 19 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.sophia",color:"white","bold":true},\
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"},\
        {"text":" : ","color":"white","bold": false},\
        {"translate": "story.chapter_2.ml.9.19","fallback": "直到我的到來，將奄奄一息的星送往安全地方","bold": false} \
    ]

execute \
    positioned 802 71 1592 \
    if score story.chapter_2.ml.9 story.chapter_2 matches 20 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.sophia",color:"white","bold":true},\
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"},\
        {"text":" : ","color":"white","bold": false},\
        {"translate": "story.chapter_2.ml.9.20","fallback": "以終為始，但...或許命運給我們第二次機會","bold": false} \
    ]

execute \
    positioned 802 71 1592 \
    if score story.chapter_2.ml.9 story.chapter_2 matches 21 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.stellar",color:"white","bold":true},\
        {"atlas":"minecraft:items","sprite":"item/character/stellar","bold":false,shadow_color:0,"color":"white"},\
        {"text":" : ","color":"white","bold": false},\
        {"translate": "story.chapter_2.ml.9.21","fallback": "是的，這就是我的故事，也是關於我的父親阿斯卡的故事","bold": false} \
    ]

execute \
    positioned 802 71 1592 \
    if score story.chapter_2.ml.9 story.chapter_2 matches 22 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.stellar",color:"white","bold":true},\
        {"atlas":"minecraft:items","sprite":"item/character/stellar","bold":false,shadow_color:0,"color":"white"},\
        {"text":" : ","color":"white","bold": false},\
        {"translate": "story.chapter_2.ml.9.22","fallback": "即便黑暗籠罩這個世界他仍在死前希望世界能夠被眾人拯救","bold": false} \
    ]

execute \
    positioned 802 71 1592 \
    if score story.chapter_2.ml.9 story.chapter_2 matches 23 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.stellar",color:"white","bold":true},\
        {"atlas":"minecraft:items","sprite":"item/character/stellar","bold":false,shadow_color:0,"color":"white"},\
        {"text":" : ","color":"white","bold": false},\
        {"translate": "story.chapter_2.ml.9.23","fallback": "你有著我父親曾經的影子","bold": false} \
    ]

execute \
    positioned 802 71 1592 \
    if score story.chapter_2.ml.9 story.chapter_2 matches 24 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.stellar",color:"white","bold":true},\
        {"atlas":"minecraft:items","sprite":"item/character/stellar","bold":false,shadow_color:0,"color":"white"},\
        {"text":" : ","color":"white","bold": false},\
        {"translate": "story.chapter_2.ml.9.24","fallback": "即便你曾經最重要的人 阿斯尼亞 早已不再，我希望你不要放棄","bold": false} \
    ]

execute \
    positioned 802 71 1592 \
    if score story.chapter_2.ml.9 story.chapter_2 matches 25 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.9.25","fallback": "原來在你眼裡我與那位值得尊敬的父親相似","bold": false} \
    ]

execute \
    positioned 802 71 1592 \
    if score story.chapter_2.ml.9 story.chapter_2 matches 26 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.9.26","fallback": "謝謝你與蘇菲亞告訴我這些","bold": false} \
    ]

execute \
    positioned 802 71 1592 \
    if score story.chapter_2.ml.9 story.chapter_2 matches 27 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.9.27","fallback": "若之後我們獲勝了，我會盡我所能的與你們共同取回曾經的魔劍","bold": false} \
    ]

execute \
    positioned 802 71 1592 \
    if score story.chapter_2.ml.9 story.chapter_2 matches 27 run \
tellraw @a[distance=..16] \
    [\
        {"translate": "story.end","fallback": "對話結束，再次點擊可重複查看對話內容","color":"gold"},{"text":"\n"}\
    ]

execute \
    if score story.chapter_2.ml.9 story.chapter_2 matches 27 run \
playsound minecraft:entity.player.levelup voice @a ~ ~1 ~ 0.5 1


execute \
    if score story.chapter_2.ml.9 story.chapter_2 matches 28 run \
schedule function story:chapter_2/ml/9/0 1t

data remove entity @s interaction


execute \
    unless score story.chapter_2.ml.9 story.chapter_2 matches 1..28 run \
return 0

execute \
    as @n[distance=..1,tag=aj.selena.root,type=item_display] at @s run \
function animated_java:selena/animations/chat1/stop


execute \
    as @n[distance=..1,tag=aj.selena.root,type=item_display] at @s run \
function animated_java:selena/animations/chat1/tween {to_frame: 5, duration: 5}


scoreboard players add story.chapter_2.ml.9 story.chapter_2 1
playsound minecraft:ui.button.click voice @a ~ ~1 ~ 0.5 1