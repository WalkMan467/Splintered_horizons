# The entire storyline is executed through the scoreboard story(dummy) combined with the schedule command


execute \
    positioned 360 100 -274 \
    in minecraft:the_end \
    if score story.other.chapter_2.2 story.other matches 1 \
    unless score #story:icon/story/other/chapter_2/scebe_1 global.main matches 1 \
    as @n[sort=arbitrary,distance=..1,tag=aj.isokla.root,type=item_display] \
    on passengers run \
data modify entity @s Glowing set value 0b


execute \
    if score story.other.chapter_2.2 story.other matches 1 run \
scoreboard players set #story:icon/story/other/chapter_2/scebe_1 global.main 1


execute \
    positioned 360 100 -274 \
    in minecraft:the_end \
    if score story.other.chapter_2.2 story.other matches 1 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.melisna",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/melisna","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.other.chapter_2.2.1","fallback": "你好，%1$s","bold": false,with:[{translate:"character.stellar",bold:true,underlined:true,color:"dark_green",hover_event:{action:"show_text",value:[{translate:"story.icon.character.stellar",color:"gray"},{text:"\n"},{translate:"story.icon.character.stellar.desc.1",color:"gray"},{text:"\n"},{text:"\n"},{translate:"proper_noun.desc.2",color:"white"},{keybind:"key.advancements",bold:true,color:"dark_green"},{translate:"proper_noun.desc.3",color:"white"}]}}]} \
    ]


execute \
    positioned 360 100 -274 \
    in minecraft:the_end \
    if score story.other.chapter_2.2 story.other matches 2 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.melisna",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/melisna","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.other.chapter_2.2.2","fallback": "這四周似乎除了我們還有別人的痕跡","bold": false} \
    ]


execute \
    positioned 360 100 -274 \
    in minecraft:the_end \
    if score story.other.chapter_2.2 story.other matches 3 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.melisna",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/melisna","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.other.chapter_2.2.3","fallback": "但不確定是敵是友","bold": false} \
    ]


execute \
    positioned 360 100 -274 \
    in minecraft:the_end \
    if score story.other.chapter_2.2 story.other matches 4 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.melisna",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/melisna","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.other.chapter_2.2.4","fallback": "痕跡通往的方向在不遠處","bold": false} \
    ]


execute \
    positioned 360 100 -274 \
    in minecraft:the_end \
    if score story.other.chapter_2.2 story.other matches 5 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.melisna",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/melisna","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.other.chapter_2.2.5","fallback": "這個痕跡似乎是有人刻意留下的","bold": false} \
    ]


execute \
    positioned 360 100 -274 \
    in minecraft:the_end \
    if score story.other.chapter_2.2 story.other matches 6 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.melisna",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/melisna","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.other.chapter_2.2.6","fallback": "似乎在引導著我們往深處走去","bold": false} \
    ]


execute \
    positioned 360 100 -274 \
    in minecraft:the_end \
    if score story.other.chapter_2.2 story.other matches 7 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.melisna",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/melisna","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.other.chapter_2.2.7","fallback": "對方似乎對我們有所了解","bold": false} \
    ]


execute \
    positioned 360 100 -274 \
    in minecraft:the_end \
    if score story.other.chapter_2.2 story.other matches 8 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.melisna",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/melisna","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.other.chapter_2.2.8","fallback": "那或許%1$s偶然找到著通往這裡的異界之門","bold": false,"with":[{"bold":true,"underlined":true,"color":"aqua","translate":"story.characters.selena","fallback":"賽琳娜"}]} \
    ]


execute \
    positioned 360 100 -274 \
    in minecraft:the_end \
    if score story.other.chapter_2.2 story.other matches 9 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.melisna",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/melisna","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.other.chapter_2.2.9","fallback": "或許是對方故意讓%1$s找到的","bold": false,"with":[{"bold":true,"underlined":true,"color":"aqua","translate":"story.characters.selena","fallback":"賽琳娜"}]} \
    ]


execute \
    positioned 360 100 -274 \
    in minecraft:the_end \
    if score story.other.chapter_2.2 story.other matches 10 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.melisna",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/melisna","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.other.chapter_2.2.10","fallback": "感覺有點不對勁，哥哥，我們要繼續往前嗎?","bold": false} \
    ]


execute \
    positioned 360 100 -274 \
    in minecraft:the_end \
    if score story.other.chapter_2.2 story.other matches 11 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.isokla",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/isokla","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.other.chapter_2.2.11","fallback": "往前看看，但是注意四周動靜","bold": false} \
    ]


execute \
    positioned 360 100 -274 \
    in minecraft:the_end \
    if score story.other.chapter_2.2 story.other matches 12 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.isokla",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/isokla","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.other.chapter_2.2.12","fallback": "一旦四周有甚麼動靜，我會調用%1$s的力量將它們消滅","bold": false,with:[{"translate":"weapon.effect.crimson_claw","underlined":true,"color":"dark_red"}]} \
    ]


execute \
    positioned 360 100 -274 \
    in minecraft:the_end \
    if score story.other.chapter_2.2 story.other matches 12 run \
tellraw @a[distance=..16] \
    [ \
        {"text":"\n"},\
        {"translate": "story.end","fallback": "對話結束，再次點擊可重複查看對話內容","color":"gold"},\
        {"text":"\n"} \
    ]


execute \
    if score story.other.chapter_2.2 story.other matches 12 run \
playsound minecraft:entity.player.levelup voice @a ~ ~1 ~ 0.5 1


execute \
    if score story.other.chapter_2.2 story.other matches 13 run \
schedule function story:other/chapter_2/2/0 1t

data remove entity @s interaction


execute \
    unless score story.other.chapter_2.2 story.other matches 1..13 run \
return 0

scoreboard players add story.other.chapter_2.2 story.other 1
playsound minecraft:ui.button.click voice @a ~ ~1 ~ 0.5 1