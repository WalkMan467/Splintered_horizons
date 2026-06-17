# The entire storyline is executed through the scoreboard story(dummy) combined with the schedule command



execute \
    positioned 1577 60 130 \
    if score story.opening.5 story.chapter_1 matches 1 \
    unless score #story.opening.1.glow global.main matches 1 \
    as @n[tag=aj.sophia.root,distance=..3,type=item_display] \
    on passengers run \
data modify entity @s Glowing set value 0b

execute \
    in world_area:main/game_lobby \
    positioned 1577 60 130 \
    if score story.opening.5 story.chapter_1 matches 1 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.mysterious_girl",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.opening.5.1","fallback": "願你之後的旅途順利","bold": false} \
    ]

execute \
    in world_area:main/game_lobby \
    positioned 1577 60 130 \
    if score story.opening.5 story.chapter_1 matches 1 run \
scoreboard players set @a[distance=..16,gamemode=!spectator] player.actionbar.npc_interaction.tips 0

execute \
    in world_area:main/game_lobby \
    positioned 1577 60 130 \
    if score story.opening.5 story.chapter_1 matches 2 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.mysterious_girl",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.opening.5.2","fallback": "即便在你的舊世界中你已失敗","bold": false} \
    ]

execute \
    in world_area:main/game_lobby \
    positioned 1577 60 130 \
    if score story.opening.5 story.chapter_1 matches 3 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.mysterious_girl",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.opening.5.3","fallback": "但只要我們不曾熄滅，那麼一切將不會終結","bold": false} \
    ]


execute \
    in world_area:main/game_lobby \
    positioned 1577 60 130 \
    if score story.opening.5 story.chapter_1 matches 4 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.mysterious_girl",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.opening.5.4","fallback": "你似乎對我的出現還是感到困惑","bold": false} \
    ]


execute \
    in world_area:main/game_lobby \
    positioned 1577 60 130 \
    if score story.opening.5 story.chapter_1 matches 5 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.mysterious_girl",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.opening.5.5","fallback": "我能理解，畢竟我們都來自不同的世界","bold": false} \
    ]


execute \
    in world_area:main/game_lobby \
    positioned 1577 60 130 \
    if score story.opening.5 story.chapter_1 matches 6 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.mysterious_girl",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.opening.5.6","fallback": "一切的答案都會在之後揭曉","bold": false} \
    ]

execute \
    in world_area:main/game_lobby \
    positioned 1577 60 130 \
    if score story.opening.5 story.chapter_1 matches 7 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.mysterious_girl",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.opening.5.7","fallback": "那麼，向前走吧","font":"minecraft:default","bold": false} \
    ]

execute \
    in world_area:main/game_lobby \
    positioned 1577 60 130 \
    if score story.opening.5 story.chapter_1 matches 8 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.mysterious_girl",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.opening.5.8","fallback": "讓我們離開這場夢境吧","color":"white","bold": false} \
    ]

execute \
    in world_area:main/game_lobby \
    positioned 1577 60 130 \
    if score story.opening.5 story.chapter_1 matches 8 run \
tellraw @a[distance=..16] \
    [ \
        {"text":"\n"},\
        {"translate": "story.end","fallback": "對話結束，再次點擊可重複查看對話內容","color":"gold"},\
        {"text":"\n"} \
    ]

execute \
    if score story.opening.5 story.chapter_1 matches 8 run \
playsound minecraft:entity.player.levelup voice @a ~ ~1 ~ 0.5 1


execute \
    positioned 1577 60 130 \
    if score story.opening.5 story.chapter_1 matches 9 run \
schedule function story:opening/5/0 1t

data remove entity @s interaction


execute \
    unless score story.opening.5 story.chapter_1 matches 1..9 run \
return 0

scoreboard players add story.opening.5 story.chapter_1 1
playsound minecraft:ui.button.click voice @a ~ ~1 ~ 0.5 1