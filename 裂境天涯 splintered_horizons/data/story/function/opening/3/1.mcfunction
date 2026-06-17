# The entire storyline is executed through the scoreboard story(dummy) combined with the schedule command



execute \
    positioned 1574 60 286 \
    if score story.opening.3 story.chapter_1 matches 1 \
    unless score #story:icon/story/chapter_1/mq/scebe_1 global.main matches 1 \
    as @n[tag=aj.sophia.root,distance=..3,type=item_display] \
    on passengers run \
data modify entity @s Glowing set value 0b

execute \
    in world_area:main/game_lobby \
    positioned 1574 60 286 \
    if score story.opening.3 story.chapter_1 matches 1 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.mysterious_girl",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.opening.3.1","fallback": "在你的旅途中，或許死亡無法避免","bold": false} \
    ]

execute \
    in world_area:main/game_lobby \
    positioned 1574 60 286 \
    if score story.opening.3 story.chapter_1 matches 1 run \
scoreboard players set @a[distance=..16,gamemode=!spectator] player.actionbar.npc_interaction.tips 0

execute \
    in world_area:main/game_lobby \
    positioned 1574 60 286 \
    if score story.opening.3 story.chapter_1 matches 2 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.mysterious_girl",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.opening.3.2","fallback": "但你將會結識更多來至不同舊世界的主角","bold": false} \
    ]

execute \
    in world_area:main/game_lobby \
    positioned 1574 60 286 \
    if score story.opening.3 story.chapter_1 matches 3 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.mysterious_girl",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.opening.3.3","fallback": "符文是他們的力量具現化，也代表著他們的故事","bold": false} \
    ]


execute \
    in world_area:main/game_lobby \
    positioned 1574 60 286 \
    if score story.opening.3 story.chapter_1 matches 4 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.mysterious_girl",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.opening.3.4","fallback": "大多數的武器都與符文與技能連動有著緊密關聯","bold": false} \
    ]


execute \
    in world_area:main/game_lobby \
    positioned 1574 60 286 \
    if score story.opening.3 story.chapter_1 matches 5 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.mysterious_girl",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.opening.3.5","fallback": "所以你必須知道如何使用他們真正的力量，而不是常規的攻擊","bold": false} \
    ]


execute \
    in world_area:main/game_lobby \
    positioned 1574 60 286 \
    if score story.opening.3 story.chapter_1 matches 6 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.mysterious_girl",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.opening.3.6","fallback": "在你畫面狀態欄的部分有與之對應的符文","bold": false} \
    ]

execute \
    in world_area:main/game_lobby \
    positioned 1574 60 286 \
    if score story.opening.3 story.chapter_1 matches 6 \
    as @a[distance=..16,gamemode=!spectator] run \
function story:opening/3/reset_runes

execute \
    in world_area:main/game_lobby \
    positioned 1574 60 286 \
    if score story.opening.3 story.chapter_1 matches 7 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.mysterious_girl",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.opening.3.7","fallback": "與我一同在舊世界的同伴 輝煌之光 / 萊卡","font":"minecraft:default","bold": false,"with":[{"translate":"weapon.effect.resplendence","underlined":true,"font":"minecraft:default","color":"#fceb00","italic":false,"bold":true},{"text":"\uE004","font":"minecraft:icon","color":"white","underlined":false,"bold":false}]} \
    ]

execute \
    in world_area:main/game_lobby \
    positioned 1574 60 286 \
    if score story.opening.3 story.chapter_1 matches 7 \
    as @a[distance=..5,gamemode=!spectator] run \
function story:opening/3/reset_runes

execute \
    in world_area:main/game_lobby \
    positioned 1574 60 286 \
    if score story.opening.3 story.chapter_1 matches 7 run \
scoreboard players set @a[distance=..16,gamemode=!spectator] weapon.effect.resplendence 60

execute \
    in world_area:main/game_lobby \
    positioned 1574 60 286 \
    if score story.opening.3 story.chapter_1 matches 8 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.mysterious_girl",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.opening.3.8","fallback": "來自魔法國度的神秘少女，至深之暗 / 伊莉娜","font":"minecraft:default","bold": false,"with":[{"translate":"weapon.effect.shadow","underlined":true,"color":"#9e0096","italic":false,"bold":true,"font":"minecraft:default"},{"text":"\uE005","font":"minecraft:icon","color":"white","underlined":false,"bold":false}]} \
    ]

execute \
    in world_area:main/game_lobby \
    positioned 1574 60 286 \
    if score story.opening.3 story.chapter_1 matches 8 \
    as @a[distance=..5,gamemode=!spectator] run \
function story:opening/3/reset_runes

execute \
    in world_area:main/game_lobby \
    positioned 1574 60 286 \
    if score story.opening.3 story.chapter_1 matches 8 run \
scoreboard players set @a[distance=..16,gamemode=!spectator] weapon.effect.shadow 60

execute \
    in world_area:main/game_lobby \
    positioned 1574 60 286 \
    if score story.opening.3 story.chapter_1 matches 9 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.mysterious_girl",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.opening.3.9","fallback": "來自黑夜王城的兄妹，緋紅之爪 / 伊索克拉 與 混沌之雷 / 梅倫絲娜","font":"minecraft:default","bold": false,"with":[{"translate":"weapon.effect.crimson_claw","underlined":true,"font":"minecraft:default","color":"#e00000","italic":false,"bold":true},{"text":"\uE007","font":"minecraft:icon","color":"white","underlined":false,"bold":false},{"translate":"weapon.effect.chaotic_thunder","underlined":true,"color":"#fc007e","font":"minecraft:default","italic":false,"bold":true},{"text":"\uE006","font":"minecraft:icon","color":"white","underlined":false,"bold":false}]} \
    ]

execute \
    in world_area:main/game_lobby \
    positioned 1574 60 286 \
    if score story.opening.3 story.chapter_1 matches 9 \
    as @a[distance=..5,gamemode=!spectator] run \
function story:opening/3/reset_runes

execute \
    in world_area:main/game_lobby \
    positioned 1574 60 286 \
    if score story.opening.3 story.chapter_1 matches 9 run \
scoreboard players set @a[distance=..16,gamemode=!spectator] weapon.effect.crimson_claw 60

execute \
    in world_area:main/game_lobby \
    positioned 1574 60 286 \
    if score story.opening.3 story.chapter_1 matches 9 run \
scoreboard players set @a[distance=..16,gamemode=!spectator] weapon.effect.chaotic_thunder 60

execute \
    in world_area:main/game_lobby \
    positioned 1574 60 286 \
    if score story.opening.3 story.chapter_1 matches 10 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.mysterious_girl",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.opening.3.10","fallback": "來自 艾索尼亞 的聖騎士，神聖之火 / 菲格納","font":"minecraft:default","bold": false,"with":[{"translate":"weapon.effect.holy_fire","underlined":true,"color":"#e6e6e6","font":"minecraft:default","italic":false,"bold":true},{"text":"\uE008","font":"minecraft:icon","color":"white","underlined":false,"bold":false}]} \
    ]

execute \
    in world_area:main/game_lobby \
    positioned 1574 60 286 \
    if score story.opening.3 story.chapter_1 matches 10 \
    as @a[distance=..5,gamemode=!spectator] run \
function story:opening/3/reset_runes

execute \
    in world_area:main/game_lobby \
    positioned 1574 60 286 \
    if score story.opening.3 story.chapter_1 matches 10 run \
scoreboard players set @a[distance=..16,gamemode=!spectator] weapon.effect.holy_fire 60

execute \
    in world_area:main/game_lobby \
    positioned 1574 60 286 \
    if score story.opening.3 story.chapter_1 matches 11 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.mysterious_girl",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.opening.3.11","fallback": "以及，來自世界記憶之樹的偵探 記憶之冰 / 賽琳娜","font":"minecraft:default","bold": false,"with":[{"translate":"weapon.effect.starry_sky_frost","underlined":true,"color":"#5de7ff","font":"minecraft:default","italic":false,"bold":true},{"text":"\uE009","font":"minecraft:icon","color":"white","underlined":false,"bold":false}]} \
    ]

execute \
    in world_area:main/game_lobby \
    positioned 1574 60 286 \
    if score story.opening.3 story.chapter_1 matches 11 \
    as @a[distance=..5,gamemode=!spectator] run \
function story:opening/3/reset_runes

execute \
    in world_area:main/game_lobby \
    positioned 1574 60 286 \
    if score story.opening.3 story.chapter_1 matches 11 run \
scoreboard players set @a[distance=..16,gamemode=!spectator] weapon.effect.starry_sky_frost 60

execute \
    in world_area:main/game_lobby \
    positioned 1574 60 286 \
    if score story.opening.3 story.chapter_1 matches 12 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.mysterious_girl",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/sophia","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.opening.3.12","fallback": "嘗試看看手持風力劍攻擊怪物暫時啟動輝煌之光符文吧","color":"white","bold": false,"underlined":false,"with":[{"translate":"weapon.wind_sword","color": "dark_green","bold":true, "underlined":true}]} \
    ]

execute \
    in world_area:main/game_lobby \
    positioned 1574 60 286 \
    if score story.opening.3 story.chapter_1 matches 12 \
    as @a[distance=..16,gamemode=!spectator] run \
function story:opening/3/reset_runes

execute \
    in world_area:main/game_lobby \
    positioned 1574 60 286 \
    if score story.opening.3 story.chapter_1 matches 12 run \
tellraw @a[distance=..16] \
    [ \
        {"text":"\n"},\
        {"translate": "story.end","fallback": "對話結束，再次點擊可重複查看對話內容","color":"gold"},\
        {"text":"\n"} \
    ]

execute \
    if score story.opening.3 story.chapter_1 matches 12 run \
playsound minecraft:entity.player.levelup voice @a ~ ~1 ~ 0.5 1


execute \
    positioned 1574 60 286 \
    if score story.opening.3 story.chapter_1 matches 13 run \
schedule function story:opening/3/0 1t

data remove entity @s interaction


execute \
    unless score story.opening.3 story.chapter_1 matches 1..13 run \
return 0

scoreboard players add story.opening.3 story.chapter_1 1
playsound minecraft:ui.button.click voice @a ~ ~1 ~ 0.5 1