# The entire storyline is executed through the scoreboard story(dummy) combined with the schedule command


execute \
    positioned 668 73 1620 \
    if score story.chapter_2.ml.8 story.chapter_2 matches 1 \
    unless score #story:icon/story/chapter_2/mq/scebe_4 global.main matches 1 \
    as @n[sort=arbitrary,distance=..1,tag=aj.isokla.root,type=item_display] \
    on passengers run \
data modify entity @s Glowing set value 0b


execute \
    if score story.chapter_2.ml.8 story.chapter_2 matches 1 run \
scoreboard players set #story:icon/story/chapter_2/mq/scebe_4 global.main 1


execute \
    positioned 668 73 1620 \
    if score story.chapter_2.ml.8 story.chapter_2 matches 1 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.8.1","fallback": "這裡就是伊萊克爾的所在地了","bold": false} \
    ]


execute \
    positioned 668 73 1620 \
    if score story.chapter_2.ml.8 story.chapter_2 matches 2 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.8.2","fallback": "四周瀰漫著時間與黑洞元素","bold": false} \
    ]


execute \
    positioned 668 73 1620 \
    if score story.chapter_2.ml.8 story.chapter_2 matches 3 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.8.3","fallback": "與這片大地聯繫我能感受到前方的怪物似乎變強了很多","bold": false} \
    ]


execute \
    positioned 668 73 1620 \
    if score story.chapter_2.ml.8 story.chapter_2 matches 4 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/seronis","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.8.4","fallback": "如果準備好了我們就往前走吧","bold": false} \
    ]


execute \
    positioned 668 73 1620 \
    if score story.chapter_2.ml.8 story.chapter_2 matches 4 run \
tellraw @a[distance=..16] \
    [ \
        {"text":"\n"},\
        {"translate": "story.end","fallback": "對話結束，再次點擊可重複查看對話內容","color":"gold"},\
        {"text":"\n"} \
    ]


execute \
    if score story.chapter_2.ml.8 story.chapter_2 matches 4 run \
playsound minecraft:entity.player.levelup voice @a ~ ~1 ~ 0.5 1


execute \
    if score story.chapter_2.ml.8 story.chapter_2 matches 5 run \
schedule function story:chapter_2/ml/8/0 1t

data remove entity @s interaction


execute \
    unless score story.chapter_2.ml.8 story.chapter_2 matches 1..5 run \
return 0

execute \
    as @n[distance=..1,tag=aj.selena.root,type=item_display] at @s run \
function animated_java:selena/animations/chat1/stop


execute \
    as @n[distance=..1,tag=aj.selena.root,type=item_display] at @s run \
function animated_java:selena/animations/chat1/tween {to_frame: 5, duration: 5}


scoreboard players add story.chapter_2.ml.8 story.chapter_2 1
playsound minecraft:ui.button.click voice @a ~ ~1 ~ 0.5 1