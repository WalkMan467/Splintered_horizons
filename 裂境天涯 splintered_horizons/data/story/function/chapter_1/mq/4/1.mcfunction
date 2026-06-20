# The entire storyline is executed through the scoreboard story(dummy) combined with the schedule command


execute \
    positioned 14 83 -337 \
    unless score #story:icon/story/chapter_1/mq/scebe_4 global.main matches 1 \
    if score story.chapter_1.mq.4 story.chapter_1 matches 1 \
    as @n[tag=aj.sophia.root,distance=..3,type=item_display] \
    on passengers run \
data modify entity @s Glowing set value 0b



execute \
    if score story.chapter_1.mq.4 story.chapter_1 matches 1 run \
scoreboard players set #story:icon/story/chapter_1/mq/scebe_4 global.main 1


execute \
    if score story.chapter_1.mq.4 story.chapter_1 matches 1 run \
scoreboard players set #story:icon/story/chapter_1/mq/title global.main 1


execute \
    positioned 14 83 -337 \
    if score story.chapter_1.mq.4 story.chapter_1 matches 1 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.sophia",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.mq.4.1","fallback": "[蘇菲亞] 這個世界似乎是由多個來自其他來自舊世界的地形結合而成的新世界","bold": false,"with":[{"bold":true,"color":"yellow","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"proper_nouns.icon.old_story","underlined":true,"fallback": "舊世界"}]} \
    ]


execute \
    positioned 14 83 -337 \
    if score story.chapter_1.mq.4 story.chapter_1 matches 2 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.sophia",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.mq.4.2","fallback": "[蘇菲亞] 就比如我們曾經去過的世界","bold": false} \
    ]


execute \
    positioned 14 83 -337 \
    if score story.chapter_1.mq.4 story.chapter_1 matches 3 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.sophia",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.mq.4.3","fallback": "[蘇菲亞] 或許也會在這裡的某個角落中看到","bold": false} \
    ]


execute \
    positioned 14 83 -337 \
    if score story.chapter_1.mq.4 story.chapter_1 matches 4 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.sophia",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.mq.4.4","fallback": "[蘇菲亞] 前方似乎有一個非常大的黑洞圍繞著這個地方","bold": false} \
    ]


execute \
    positioned 14 83 -337 \
    if score story.chapter_1.mq.4 story.chapter_1 matches 5 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.sophia",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.mq.4.5","fallback": "[蘇菲亞] 或許我們可以過去看看","bold": false} \
    ]



execute \
    positioned 14 83 -337 \
    if score story.chapter_1.mq.4 story.chapter_1 matches 5 run \
tellraw @a[distance=..16] \
    [ \
        {"text":"\n"},\
        {"translate": "story.end","fallback": "對話結束，再次點擊可重複查看對話內容","color":"gold"},\
        {"text":"\n"} \
    ]


execute \
    positioned 14 83 -337 \
    if score story.chapter_1.mq.4 story.chapter_1 matches 5 run \
playsound minecraft:entity.player.levelup voice @a ~ ~1 ~ 0.5 1


execute \
    positioned 14 83 -337 \
    if score story.chapter_1.mq.4 story.chapter_1 matches 6 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.sophia",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.mq.4.1","fallback": "[蘇菲亞] 這個世界似乎是由多個來自其他來自舊世界的地形結合而成的新世界","bold": false,"with":[{"bold":true,"color":"yellow","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"proper_nouns.icon.old_story","underlined":true,"fallback": "舊世界"}]} \
    ]


execute \
    if score story.chapter_1.mq.4 story.chapter_1 matches 6 run \
scoreboard players set story.chapter_1.mq.4 story.chapter_1 1

data remove entity @s interaction


execute \
    unless score story.chapter_1.mq.4 story.chapter_1 matches 1..6 run \
return 0


execute \
    as @n[distance=..1,tag=aj.sophia.root,type=item_display] at @s run \
function aj:sophia/animations/chat1/stop


execute \
    as @n[distance=..1,tag=aj.sophia.root,type=item_display] at @s run \
function aj:sophia/animations/chat1/tween {to_frame: 5, duration: 5}

scoreboard players add story.chapter_1.mq.4 story.chapter_1 1
playsound minecraft:ui.button.click voice @a ~ ~1 ~ 0.5 1