# ===================================================
# 紀念碑 area 2 / monument area 2

    ## Guide [ function weapons:monument/area_2 ] >>> 紀念碑 area 2 / monument area 2

# ===================================================


execute \
    if score #weapons:monument/area_2 global.main matches 1 run \
return fail
scoreboard players set #weapons:monument/area_2 global.main 1

tellraw @a {"translate":"tips.monument.1"}
tellraw @a {"translate":"tips.monument.2"}
tellraw @a {"translate":"tips.monument.3"}

title @s times 10 60 20
title @s title {"translate":"tips.area_2.title","color": "#00dd00"}
title @s subtitle {"translate":"tips.area_2.subtitle","color": "#00dd00"}


execute \
    as @a at @s run \
playsound minecraft:ui.toast.challenge_complete voice @s ~ ~1 ~ 1 1

scoreboard players set #weapons:monument/area_2 global.main 1

tellraw @a ""

tellraw @a \
    [ \
        {"text": "WalkMan467",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/walkman467","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "tips.chapter_2.monument.1","fallback": "恭喜拿到第二章的目標物品","bold": false,"with":[{"translate":"monument.icon.chapter_2","color":"gold","bold":true,"underlined":true}]} \
    ]

tellraw @a \
    [ \
        {"text": "WalkMan467",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/walkman467","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "tips.chapter_2.monument.2","fallback": "位於第二章入口的終焉之地下方區域已開放，直接跳下去即可(你不會摔死)","bold": false,"underlined":false,"with":[{"translate":"monument.icon.chapter_2","color":"gold","bold":true,"underlined":true},{"translate":"world_area.icon.chapter_2.land_of_finality","color":"dark_red","bold":true,"underlined":true}]} \
    ]

tellraw @a \
    [ \
        {"text": "WalkMan467",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/walkman467","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "tips.chapter_2.monument.3","fallback": "由於第三章故事尚未開始","bold": false,"with":[{"translate":"monument.icon.chapter_3","color":"gold","bold":true,"underlined":true}]} \
    ]

tellraw @a \
    [ \
        {"text": "WalkMan467",color:"white","bold":true}, \
        {"atlas":"minecraft:items","sprite":"item/character/walkman467","bold":false,shadow_color:0,"color":"white"}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "tips.chapter_2.monument.4","fallback": "當第三章的故事開始之後會在做引導到第三章入口","bold": false,"with":[{"translate":"monument.icon.chapter_3","color":"gold","bold":true,"underlined":true}]} \
    ]