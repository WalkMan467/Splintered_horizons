# The entire storyline is executed through the scoreboard story(dummy) combined with the schedule command


execute \
    in world_area:main/game_lobby \
    positioned 1575 60 306 \
    unless score #story.opening.2.glow global.main matches 1 \
    if score story.opening.2 story.chapter_1 matches 1 \
    as @n[tag=aj.sophia.root,distance=..3,type=item_display] \
    on passengers run \
data modify entity @s Glowing set value 0b



execute \
    if score story.opening.2 story.chapter_1 matches 1 run \
scoreboard players set #story.opening.2.glow global.main 1

execute \
    in world_area:main/game_lobby \
    positioned 1575 60 306 \
    if score story.opening.2 story.chapter_1 matches 1 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.mysterious_girl",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.opening.2.1","fallback": "自從舊世界再度被黑暗籠罩之後","bold": false,"with":[{"bold":true,"color":"yellow","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"proper_nouns.icon.old_story","underlined":true,"fallback": "舊世界"}]} \
    ]

execute \
    in world_area:main/game_lobby \
    positioned 1575 60 306 \
    if score story.opening.2 story.chapter_1 matches 1 run \
scoreboard players set @a[distance=..5,gamemode=!spectator] player.actionbar.npc_interaction.tips 0

execute \
    in world_area:main/game_lobby \
    positioned 1575 60 306 \
    if score story.opening.2 story.chapter_1 matches 2 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.mysterious_girl",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.opening.2.2","fallback": "深淵將所有維度與世界匯聚在一起","bold": false,"with":[{"bold":true,"color":"dark_purple","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"story.icon.proper_noun.abyss","underlined":true,"fallback": "深淵"}]} \
    ]

execute \
    in world_area:main/game_lobby \
    positioned 1575 60 306 \
    if score story.opening.2 story.chapter_1 matches 3 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.mysterious_girl",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.opening.2.3","fallback": "這也導致你我的相遇","bold": false} \
    ]


execute \
    in world_area:main/game_lobby \
    positioned 1575 60 306 \
    if score story.opening.2 story.chapter_1 matches 4 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.mysterious_girl",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.opening.2.4","fallback": "即便我們來自不同的舊世界，甚至從未見過面","bold": false,"with":[{"bold":true,"color":"yellow","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"proper_nouns.icon.old_story","underlined":true,"fallback": "舊世界"}]} \
    ]


execute \
    in world_area:main/game_lobby \
    positioned 1575 60 306 \
    if score story.opening.2 story.chapter_1 matches 5 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.mysterious_girl",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.opening.2.5","fallback": "但是我們都有相同的過往","bold": false} \
    ]


execute \
    in world_area:main/game_lobby \
    positioned 1575 60 306 \
    if score story.opening.2 story.chapter_1 matches 6 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.mysterious_girl",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.opening.2.6","fallback": "我們也希望將這個世界變成我們期望的樣子","bold": false} \
    ]


execute \
    in world_area:main/game_lobby \
    positioned 1575 60 306 \
    if score story.opening.2 story.chapter_1 matches 6 run \
tellraw @a[distance=..16] \
    [ \
        {"text":"\n"},\
        {"translate": "story.end","fallback": "對話結束，再次點擊可重複查看對話內容","color":"gold"},\
        {"text":"\n"} \
    ]


execute \
    in world_area:main/game_lobby \
    positioned 1575 60 306 \
    if score story.opening.2 story.chapter_1 matches 6 run \
playsound minecraft:entity.player.levelup voice @a ~ ~1 ~ 0.5 1


execute \
    in world_area:main/game_lobby \
    positioned 1575 60 306 \
    if score story.opening.2 story.chapter_1 matches 7 run \
schedule function story:opening/2/0 1t

data remove entity @s interaction

execute \
    unless score story.opening.2 story.chapter_1 matches 1..7 run \
return 0


execute \
    as @n[distance=..1,tag=aj.sophia.root,type=item_display] at @s run \
function animated_java:sophia/animations/chat1/stop


execute \
    as @n[distance=..1,tag=aj.sophia.root,type=item_display] at @s run \
function animated_java:sophia/animations/chat1/tween {to_frame: 5, duration: 5}

scoreboard players add story.opening.2 story.chapter_1 1
playsound minecraft:ui.button.click voice @a ~ ~1 ~ 0.5 1