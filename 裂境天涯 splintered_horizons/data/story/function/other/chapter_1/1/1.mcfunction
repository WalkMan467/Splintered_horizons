# The entire storyline is executed through the scoreboard story(dummy) combined with the schedule command


execute \
    positioned -4 35 96 \
    in minecraft:the_end \
    if score story.other.chapter_1.1 story.other matches 1 \
    unless score #story:icon/story/other/chapter_1/scebe_1 global.main matches 1 \
    as @n[sort=arbitrary,distance=..1,tag=aj.selena.root,type=item_display] \
    on passengers run \
data modify entity @s Glowing set value 0b


execute \
    if score story.other.chapter_1.1 story.other matches 1 run \
scoreboard players set #story:icon/story/other/chapter_1/scebe_1 global.main 1


execute \
    positioned -4 35 96 \
    in minecraft:the_end \
    if score story.other.chapter_1.1 story.other matches 1 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/selena","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.other.chapter_1.1.1","fallback": "我們到了，這裡就是門後的世界","bold": false} \
    ]


execute \
    positioned -4 35 96 \
    in minecraft:the_end \
    if score story.other.chapter_1.1 story.other matches 2 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.stellar",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/stellar","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.other.chapter_1.1.2","fallback": "似乎受到更嚴重的%1$s侵蝕影響","bold": false,"with":[{"bold":true,"color":"dark_purple","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"story.icon.proper_noun.abyss","underlined":true,"fallback": "深淵"}]} \
    ]


execute \
    positioned -4 35 96 \
    in minecraft:the_end \
    if score story.other.chapter_1.1 story.other matches 3 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.stellar",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/stellar","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.other.chapter_1.1.3","fallback": "從周遭的地形判斷，這裡並非一般人能夠踏入的禁區","bold": false} \
    ]


execute \
    positioned -4 35 96 \
    in minecraft:the_end \
    if score story.other.chapter_1.1 story.other matches 4 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.sophia",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.other.chapter_1.1.4","fallback": "這似乎只是這裡的表面","bold": false} \
    ]


execute \
    positioned -4 35 96 \
    in minecraft:the_end \
    if score story.other.chapter_1.1 story.other matches 5 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.sophia",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.other.chapter_1.1.5","fallback": "不過，我無法理解為什麼你依舊要踏入這裡，%1$s","bold": false,"with":[{"bold":true,"underlined":true,"color":"aqua","translate":"story.characters.selena","fallback":"賽琳娜"}]} \
    ]


execute \
    positioned -4 35 96 \
    in minecraft:the_end \
    if score story.other.chapter_1.1 story.other matches 6 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/selena","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.other.chapter_1.1.6","fallback": "前方的危險如你所說，或許我不該來到這裡","bold": false} \
    ]


execute \
    positioned -4 35 96 \
    in minecraft:the_end \
    if score story.other.chapter_1.1 story.other matches 7 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/selena","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.other.chapter_1.1.7","fallback": "但，我知道，無論前方是什麼，我都必須深入探究","bold": false} \
    ]


execute \
    positioned -4 35 96 \
    in minecraft:the_end \
    if score story.other.chapter_1.1 story.other matches 8 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/selena","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.other.chapter_1.1.8","fallback": "因為，這裡是我唯一能找到曾經夥伴的線索","bold": false} \
    ]


execute \
    positioned -4 35 96 \
    in minecraft:the_end \
    if score story.other.chapter_1.1 story.other matches 9 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/selena","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.other.chapter_1.1.9","fallback": "或許...作為偵探，我找得到很多線索","bold": false} \
    ]


execute \
    positioned -4 35 96 \
    in minecraft:the_end \
    if score story.other.chapter_1.1 story.other matches 10 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/selena","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.other.chapter_1.1.10","fallback": "但唯獨曾經的夥伴...我什麼都做不到","bold": false} \
    ]


execute \
    positioned -4 35 96 \
    in minecraft:the_end \
    if score story.other.chapter_1.1 story.other matches 11 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/selena","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.other.chapter_1.1.11","fallback": "倘若曾經拼死守住%1$s最後一次輪迴的人是我","bold": false,"with":[{"bold":true,"underlined":true,"color":"#5de7ff","translate":"world_area.icon.main.tree_of_world_memory","fallback":"記憶之樹"}]} \
    ]


execute \
    positioned -4 35 96 \
    in minecraft:the_end \
    if score story.other.chapter_1.1 story.other matches 12 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/selena","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.other.chapter_1.1.12","fallback": "或許，我也不會這麼迷茫","bold": false} \
    ]

execute \
    positioned -4 35 96 \
    in minecraft:the_end \
    if score story.other.chapter_1.1 story.other matches 13 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/selena","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.other.chapter_1.1.13","fallback": "所以，當我看到了你們，如同曾經的我一樣","bold": false} \
    ]


execute \
    positioned -4 35 96 \
    in minecraft:the_end \
    if score story.other.chapter_1.1 story.other matches 14 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/selena","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.other.chapter_1.1.14","fallback": "或許，我們還有機會去反抗命運","bold": false} \
    ]


execute \
    positioned -4 35 96 \
    in minecraft:the_end \
    if score story.other.chapter_1.1 story.other matches 14 run \
tellraw @a[distance=..16] \
    [ \
        {"text":"\n"},\
        {"translate": "story.end","fallback": "對話結束，再次點擊可重複查看對話內容","color":"gold"},\
        {"text":"\n"} \
    ]


execute \
    if score story.other.chapter_1.1 story.other matches 14 run \
playsound minecraft:entity.player.levelup voice @a ~ ~1 ~ 0.5 1


execute \
    if score story.other.chapter_1.1 story.other matches 15 run \
schedule function story:other/chapter_1/1/0 1t

data remove entity @s interaction


execute \
    unless score story.other.chapter_1.1 story.other matches 1..15 run \
return 0

execute \
    as @n[distance=..1,tag=aj.selena.root,type=item_display] at @s run \
function aj:selena/animations/chat1/stop


execute \
    as @n[distance=..1,tag=aj.selena.root,type=item_display] at @s run \
function aj:selena/animations/chat1/tween {to_frame: 5, duration: 5}

scoreboard players add story.other.chapter_1.1 story.other 1
playsound minecraft:ui.button.click voice @a ~ ~1 ~ 0.5 1