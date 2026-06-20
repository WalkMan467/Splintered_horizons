# The entire storyline is executed through the scoreboard story(dummy) combined with the schedule command


execute \
    in world_area:main/game_lobby \
    positioned 1574 60 329 \
    unless score #story.opening.1.glow global.main matches 1 \
    if score story.opening.1 story.chapter_1 matches 1 \
    as @n[tag=aj.sophia.root,distance=..3,type=item_display] \
    on passengers run \
data modify entity @s Glowing set value 0b



execute \
    if score story.opening.1 story.chapter_1 matches 1 run \
scoreboard players set #story.opening.1.glow global.main 1

execute \
    in world_area:main/game_lobby \
    positioned 1574 60 329 \
    if score story.opening.1 story.chapter_1 matches 1 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.mysterious_girl",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.opening.1.1","fallback": "你好，星...","bold": false,"with":[{translate:"character.stellar",bold:true,color:"dark_green",hover_event:{action:"show_text",value:[{translate:"story.icon.character.stellar",color:"gray"},{text:"\n"},{translate:"story.icon.character.stellar.desc.1",color:"gray"},{text:"\n"},{text:"\n"},{translate:"proper_noun.desc.2",color:"white"},{keybind:"key.advancements",bold:true,color:"dark_green"},{translate:"proper_noun.desc.3",color:"white"}]}}]} \
    ]

execute \
    in world_area:main/game_lobby \
    positioned 1574 60 329 \
    if score story.opening.1 story.chapter_1 matches 1 run \
scoreboard players set @a[distance=..5,gamemode=!spectator] player.actionbar.npc_interaction.tips 0

execute \
    in world_area:main/game_lobby \
    positioned 1574 60 329 \
    if score story.opening.1 story.chapter_1 matches 2 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.stellar",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/stellar","bold":false,shadow_color:0,"color":"white"},\
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.opening.1.2","fallback": "你是誰...怎麼會知道我的名字...","bold": false} \
    ]


execute \
    in world_area:main/game_lobby \
    positioned 1574 60 329 \
    if score story.opening.1 story.chapter_1 matches 3 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.mysterious_girl",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.opening.1.3","fallback": "我很抱歉，暫時還不能告訴你我的名字","bold": false} \
    ]


execute \
    in world_area:main/game_lobby \
    positioned 1574 60 329 \
    if score story.opening.1 story.chapter_1 matches 4 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.mysterious_girl",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.opening.1.4","fallback": "這裡是一切終點的交界之地，同時也是你的夢境","bold": false} \
    ]


execute \
    in world_area:main/game_lobby \
    positioned 1574 60 329 \
    if score story.opening.1 story.chapter_1 matches 5 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.mysterious_girl",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.opening.1.5","fallback": "當你甦醒之後，這片夢境便會消散","bold": false} \
    ]


execute \
    in world_area:main/game_lobby \
    positioned 1574 60 329 \
    if score story.opening.1 story.chapter_1 matches 6 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.mysterious_girl",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.opening.1.6","fallback": "不過即便如此，在未來的旅途中","bold": false} \
    ]


execute \
    in world_area:main/game_lobby \
    positioned 1574 60 329 \
    if score story.opening.1 story.chapter_1 matches 7 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.mysterious_girl",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.opening.1.7","fallback": "你終將了解這個世界的一切故事","bold": false} \
    ]


execute \
    in world_area:main/game_lobby \
    positioned 1574 60 329 \
    if score story.opening.1 story.chapter_1 matches 8 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.mysterious_girl",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.opening.1.8","fallback": "以及我的真名","bold": false} \
    ]


execute \
    in world_area:main/game_lobby \
    positioned 1574 60 329 \
    if score story.opening.1 story.chapter_1 matches 9 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.mysterious_girl",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.opening.1.9","fallback": "繼續向前吧","bold": false} \
    ]


execute \
    in world_area:main/game_lobby \
    positioned 1574 60 329 \
    if score story.opening.1 story.chapter_1 matches 10 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.mysterious_girl",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.opening.1.10","fallback": "讓我教導你一些戰鬥技巧","bold": false} \
    ]


execute \
    in world_area:main/game_lobby \
    positioned 1574 60 329 \
    if score story.opening.1 story.chapter_1 matches 11 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.mysterious_girl",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.opening.1.11","fallback": "使你在新的旅途中變得更加強大","bold": false} \
    ]
execute \
    in world_area:main/game_lobby \
    positioned 1574 60 329 \
    if score story.opening.1 story.chapter_1 matches 11 run \
tellraw @a[distance=..16] \
    [ \
        {"text":"\n"},\
        {"translate": "story.end","fallback": "對話結束，再次點擊可重複查看對話內容","color":"gold"},\
        {"text":"\n"} \
    ]


execute \
    in world_area:main/game_lobby \
    positioned 1574 60 329 \
    if score story.opening.1 story.chapter_1 matches 11 run \
playsound minecraft:entity.player.levelup voice @a ~ ~1 ~ 0.5 1


execute \
    in world_area:main/game_lobby \
    positioned 1574 60 329 \
    if score story.opening.1 story.chapter_1 matches 12 run \
schedule function story:opening/1/0 1t

data remove entity @s interaction

execute \
    unless score story.opening.1 story.chapter_1 matches 1..12 run \
return 0


execute \
    as @n[distance=..1,tag=aj.sophia.root,type=item_display] at @s run \
function aj:sophia/animations/chat1/stop


execute \
    as @n[distance=..1,tag=aj.sophia.root,type=item_display] at @s run \
function aj:sophia/animations/chat1/tween {to_frame: 5, duration: 5}

scoreboard players add story.opening.1 story.chapter_1 1
playsound minecraft:ui.button.click voice @a ~ ~1 ~ 0.5 1