# The entire storyline is executed through the scoreboard story(dummy) combined with the schedule command



execute \
    positioned 18 30 -428 \
    if score story.chapter_1.mq.5 story.chapter_1 matches 1 \
    unless score #story:icon/story/chapter_1/mq/scebe_1 global.main matches 1 \
    as @n[tag=aj.sophia.root,distance=..3,type=item_display] \
    on passengers run \
data modify entity @s Glowing set value 0b

execute \
    positioned 18 30 -428 \
    if score story.chapter_1.mq.5 story.chapter_1 matches 1 run \
tellraw @a[distance=..16] \
    [\
        {"translate": "story.characters.sophia",color:"white","bold":true},\
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"},\
        {"text":" : ","color":"white","bold": false},\
        {"translate": "story.chapter_1.mq.5.1","fallback": "［蘇菲亞］即便此地早已破碎","bold": false}\
    ]


execute \
    positioned 18 30 -428 \
    if score story.chapter_1.mq.5 story.chapter_1 matches 2 run \
tellraw @a[distance=..16] \
    [\
        {"translate": "story.characters.sophia",color:"white","bold":true},\
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"},\
        {"text":" : ","color":"white","bold": false},\
        {"translate": "story.chapter_1.mq.5.2","fallback": "［蘇菲亞］但它仍保持著往昔的風景","bold": false}\
    ]


execute \
    positioned 18 30 -428 \
    if score story.chapter_1.mq.5 story.chapter_1 matches 3 run \
tellraw @a[distance=..16] \
    [\
        {"translate": "story.characters.sophia",color:"white","bold":true},\
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"},\
        {"text":" : ","color":"white","bold": false},\
        {"translate": "story.chapter_1.mq.5.3","fallback": "［蘇菲亞］彷彿述說著它們過去的故事","bold": false}\
    ]


execute \
    positioned 18 30 -428 \
    if score story.chapter_1.mq.5 story.chapter_1 matches 4 run \
tellraw @a[distance=..16] \
    [\
        {"translate": "story.characters.stellar",color:"white","bold":true},\
        {"atlas":"minecraft:items","sprite":"item/character/stellar","bold":false,shadow_color:0,"color":"white"},\
        {"text":" : ","color":"white","bold": false},\
        {"translate": "story.chapter_1.mq.5.4","fallback": "［星］如你所說，即便舊世早已不復存在","bold": false}\
    ]


execute \
    positioned 18 30 -428 \
    if score story.chapter_1.mq.5 story.chapter_1 matches 5 run \
tellraw @a[distance=..16] \
    [\
        {"translate": "story.characters.stellar",color:"white","bold":true},\
        {"atlas":"minecraft:items","sprite":"item/character/stellar","bold":false,shadow_color:0,"color":"white"},\
        {"text":" : ","color":"white","bold": false},\
        {"translate": "story.chapter_1.mq.5.5","fallback": "［星］塵埃終將歸於大地","bold": false}\
    ]


execute \
    positioned 18 30 -428 \
    if score story.chapter_1.mq.5 story.chapter_1 matches 6 run \
tellraw @a[distance=..16] \
    [\
        {"translate": "story.characters.stellar",color:"white","bold":true},\
        {"atlas":"minecraft:items","sprite":"item/character/stellar","bold":false,shadow_color:0,"color":"white"},\
        {"text":" : ","color":"white","bold": false},\
        {"translate": "story.chapter_1.mq.5.6","fallback": "［星］但舊世界留下的故事不會被深淵給抹去","bold": false}\
    ]


execute \
    positioned 18 30 -428 \
    if score story.chapter_1.mq.5 story.chapter_1 matches 7 run \
tellraw @a[distance=..16] \
    [\
        {"translate": "story.characters.stellar",color:"white","bold":true},\
        {"atlas":"minecraft:items","sprite":"item/character/stellar","bold":false,shadow_color:0,"color":"white"},\
        {"text":" : ","color":"white","bold": false},\
        {"translate": "story.chapter_1.mq.5.7","fallback": "［星］就像你我曾經的同伴","bold": false}\
    ]


execute \
    positioned 18 30 -428 \
    if score story.chapter_1.mq.5 story.chapter_1 matches 8 run \
tellraw @a[distance=..16] \
    [\
        {"translate": "story.characters.stellar",color:"white","bold":true},\
        {"atlas":"minecraft:items","sprite":"item/character/stellar","bold":false,shadow_color:0,"color":"white"},\
        {"text":" : ","color":"white","bold": false},\
        {"translate": "story.chapter_1.mq.5.8","fallback": "［星］深淵奪走了我們的一切","bold": false}\
    ]


execute \
    positioned 18 30 -428 \
    if score story.chapter_1.mq.5 story.chapter_1 matches 9 run \
tellraw @a[distance=..16] \
    [\
        {"translate": "story.characters.stellar",color:"white","bold":true},\
        {"atlas":"minecraft:items","sprite":"item/character/stellar","bold":false,shadow_color:0,"color":"white"},\
        {"text":" : ","color":"white","bold": false},\
        {"translate": "story.chapter_1.mq.5.9","fallback": "［星］但即便如此我們的努力與故事不會消失","bold": false}\
    ]

execute \
    if score story.chapter_1.mq.5 story.chapter_1 matches 9 run \
tellraw @a[distance=..16] \
    [\
        {"translate": "story.end","fallback": "對話結束，再次點擊可重複查看對話內容","color":"gold"},{"text":"\n"}\
    ]


execute \
    if score story.chapter_1.mq.5 story.chapter_1 matches 9 run \
playsound minecraft:entity.player.levelup voice @a ~ ~1 ~ 0.5 1


execute \
    positioned 18 30 -428 \
    if score story.chapter_1.mq.5 story.chapter_1 matches 10 run \
schedule function story:chapter_1/mq/5/0 1t

data remove entity @s interaction

execute \
    unless score story.chapter_1.mq.5 story.chapter_1 matches 1..10 run \
return 0

scoreboard players add story.chapter_1.mq.5 story.chapter_1 1
playsound minecraft:ui.button.click voice @a ~ ~1 ~ 0.5 1