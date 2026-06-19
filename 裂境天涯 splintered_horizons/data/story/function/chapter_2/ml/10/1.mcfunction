# The entire storyline is executed through the scoreboard story(dummy) combined with the schedule command


execute \
    positioned 1131 154 1841 \
    if score story.chapter_2.ml.10 story.chapter_2 matches 1 \
    unless score #story:icon/story/chapter_2/mq/scebe_4 global.main matches 1 \
    as @n[sort=arbitrary,distance=..1,tag=aj.isokla.root,type=item_display] \
    on passengers run \
data modify entity @s Glowing set value 0b


execute \
    if score story.chapter_2.ml.10 story.chapter_2 matches 1 run \
scoreboard players set #story:icon/story/chapter_2/mq/scebe_4 global.main 1


execute \
    positioned 1131 154 1841 \
    if score story.chapter_2.ml.10 story.chapter_2 matches 1 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false},\
        {"translate": "story.chapter_2.ml.10.1","fallback": "這裡就是伊萊克爾所在的區域了","bold": false} \
    ]


execute \
    positioned 1131 154 1841 \
    if score story.chapter_2.ml.10 story.chapter_2 matches 2 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false},\
        {"translate": "story.chapter_2.ml.10.2","fallback": "「永劫」的支配者正是伊萊克爾的稱號","bold": false} \
    ]


execute \
    positioned 1131 154 1841 \
    if score story.chapter_2.ml.10 story.chapter_2 matches 3 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false},\
        {"translate": "story.chapter_2.ml.10.3","fallback": "他代表著世界永劫的毀滅與輪迴","bold": false} \
    ]


execute \
    positioned 1131 154 1841 \
    if score story.chapter_2.ml.10 story.chapter_2 matches 4 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false},\
        {"translate": "story.chapter_2.ml.10.4","fallback": "星、蘇菲亞，很高興認識你們","bold": false} \
    ]


execute \
    positioned 1131 154 1841 \
    if score story.chapter_2.ml.10 story.chapter_2 matches 5 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false},\
        {"translate": "story.chapter_2.ml.10.5","fallback": "也許沒有你們，我可能無法直面伊萊克爾，也無法面對過去的自己","bold": false} \
    ]

execute \
    positioned 1131 154 1841 \
    if score story.chapter_2.ml.10 story.chapter_2 matches 6 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false},\
        {"translate": "story.chapter_2.ml.10.6","fallback": "接下來的路程將會非常遙遠","bold": false} \
    ]

execute \
    positioned 1131 154 1841 \
    if score story.chapter_2.ml.10 story.chapter_2 matches 7 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false},\
        {"translate": "story.chapter_2.ml.10.7","fallback": "所以也希望你們不要放棄","bold": false} \
    ]

execute \
    positioned 1131 154 1841 \
    if score story.chapter_2.ml.10 story.chapter_2 matches 8 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.10.8","fallback": "前方就是伊萊克爾的位置了","bold": false} \
    ]

execute \
    positioned 1131 154 1841 \
    if score story.chapter_2.ml.10 story.chapter_2 matches 9 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false},\
        {"translate": "story.chapter_2.ml.10.9","fallback": "如果你準備好了，我將使用「記憶之冰」的力量將我們送往伊萊克爾的位置","bold": false,"with":[{"bold":true,"color":"#5de7ff","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"story.icon.proper_noun.starry_sky_frost","underlined":true,"fallback": "記憶之冰"}]} \
    ]

execute \
    positioned 1131 154 1841 \
    if score story.chapter_2.ml.10 story.chapter_2 matches 9 run \
tellraw @a[distance=..16] \
    [\
        {"translate": "story.end","fallback": "對話結束，再次點擊可重複查看對話內容","color":"gold"},{"text":"\n"}\
    ]

execute \
    if score story.chapter_2.ml.10 story.chapter_2 matches 9 run \
playsound minecraft:entity.player.levelup voice @a ~ ~1 ~ 0.5 1


execute \
    if score story.chapter_2.ml.10 story.chapter_2 matches 10 run \
schedule function story:chapter_2/ml/10/0 1t

data remove entity @s interaction


execute \
    unless score story.chapter_2.ml.10 story.chapter_2 matches 1..10 run \
return 0

execute \
    as @n[distance=..1,tag=aj.selena.root,type=item_display] at @s run \
function aj:selena/animations/chat1/stop


execute \
    as @n[distance=..1,tag=aj.selena.root,type=item_display] at @s run \
function aj:selena/animations/chat1/tween {to_frame: 5, duration: 5}


scoreboard players add story.chapter_2.ml.10 story.chapter_2 1
playsound minecraft:ui.button.click voice @a ~ ~1 ~ 0.5 1