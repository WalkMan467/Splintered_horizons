# The entire storyline is executed through the scoreboard story(dummy) combined with the schedule command


execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 1 \
    unless score story.chapter_1.sq.2 global.main matches 1 \
    as 0004c3a7-ffff-827d-0031-079d00005a5b \
    on passengers run \
data modify entity @s Glowing set value 0b


execute \
    \
    if score story.chapter_1.sq.2 story.chapter_1 matches 1 run \
scoreboard players set story.chapter_1.sq.2 global.main 1


execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 1 run \
tellraw @a[distance=..16] \
    [ \
        {"text": "？？？",color:"white","bold":true},\
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2ODM5NzkyNTg0OSwKICAicHJvZmlsZUlkIiA6ICJiYzRlZGZiNWYzNmM0OGE3YWM5ZjFhMzlkYzIzZjRmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICI4YWNhNjgwYjIyNDYxMzQwIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2EzMWJjMDMwOGZiNTE0N2ViMGUyNDI3NjY2OTQ1YWI4MDlhYmY2YzE1ZDQ4OTgzOTE3ZDJkMTY5ODVhOTRlMyIKICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.1","fallback": "未知的旅者，在你到達這裡之前我觀察了你很久了","bold": false} \
    ]


execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 2 run \
tellraw @a[distance=..16] \
    [ \
        {"text": "？？？",color:"white","bold":true},\
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2ODM5NzkyNTg0OSwKICAicHJvZmlsZUlkIiA6ICJiYzRlZGZiNWYzNmM0OGE3YWM5ZjFhMzlkYzIzZjRmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICI4YWNhNjgwYjIyNDYxMzQwIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2EzMWJjMDMwOGZiNTE0N2ViMGUyNDI3NjY2OTQ1YWI4MDlhYmY2YzE1ZDQ4OTgzOTE3ZDJkMTY5ODVhOTRlMyIKICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.2","fallback": "你似乎沒有敵意，不知道是否能夠與我做一筆交易","bold": false} \
    ]


execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 3 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.seronis",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2ODM5NzkyNTg0OSwKICAicHJvZmlsZUlkIiA6ICJiYzRlZGZiNWYzNmM0OGE3YWM5ZjFhMzlkYzIzZjRmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICI4YWNhNjgwYjIyNDYxMzQwIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2EzMWJjMDMwOGZiNTE0N2ViMGUyNDI3NjY2OTQ1YWI4MDlhYmY2YzE1ZDQ4OTgzOTE3ZDJkMTY5ODVhOTRlMyIKICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.3","fallback": "我的名字是賽羅尼斯，我是來至舊世界的時空觀測者","bold": false,"with":[{"bold":true,"color":"yellow","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"proper_nouns.icon.old_story","underlined":true,"fallback": "舊世界"}]} \
    ]


execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 4 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.seronis",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2ODM5NzkyNTg0OSwKICAicHJvZmlsZUlkIiA6ICJiYzRlZGZiNWYzNmM0OGE3YWM5ZjFhMzlkYzIzZjRmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICI4YWNhNjgwYjIyNDYxMzQwIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2EzMWJjMDMwOGZiNTE0N2ViMGUyNDI3NjY2OTQ1YWI4MDlhYmY2YzE1ZDQ4OTgzOTE3ZDJkMTY5ODVhOTRlMyIKICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.4","fallback": "只是因為來至「永劫」的支配者 伊萊克爾","bold": false} \
    ]


execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 5 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.seronis",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2ODM5NzkyNTg0OSwKICAicHJvZmlsZUlkIiA6ICJiYzRlZGZiNWYzNmM0OGE3YWM5ZjFhMzlkYzIzZjRmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICI4YWNhNjgwYjIyNDYxMzQwIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2EzMWJjMDMwOGZiNTE0N2ViMGUyNDI3NjY2OTQ1YWI4MDlhYmY2YzE1ZDQ4OTgzOTE3ZDJkMTY5ODVhOTRlMyIKICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.5","fallback": "如今的我已失去了大部分力量","bold": false} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 6 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.sophia",color:"white","bold":true},\
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTczODMyNzM1NjE5OCwKICAicHJvZmlsZUlkIiA6ICJjNDIzYjQwMWZiOGU0ODc3YjMzMmVmMjhiZDdlZGZmZCIsCiAgInByb2ZpbGVOYW1lIiA6ICJSZWFjdGlvbkJyaW5lWVQiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWU2YzhhOWE1OWNkYjY5YzJiM2E3NjAxYWJhODJmNjMwOWQ3ZGQ0NWM0ZTg3OGE5YzQ2M2YwNDkxNDllYzI1IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}]},"bold":false},\
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.6","fallback": "等等，你說「永劫」的支配者？","bold": false} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 7 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.sophia",color:"white","bold":true},\
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTczODMyNzM1NjE5OCwKICAicHJvZmlsZUlkIiA6ICJjNDIzYjQwMWZiOGU0ODc3YjMzMmVmMjhiZDdlZGZmZCIsCiAgInByb2ZpbGVOYW1lIiA6ICJSZWFjdGlvbkJyaW5lWVQiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWU2YzhhOWE1OWNkYjY5YzJiM2E3NjAxYWJhODJmNjMwOWQ3ZGQ0NWM0ZTg3OGE5YzQ2M2YwNDkxNDllYzI1IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}]},"bold":false},\
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.7","fallback": "我曾在旅途上的一座城市了解到關於他的資料","bold": false} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 8 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.stellar",color:"white","bold":true},\
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTcxNjcwMDczNzg4NSwKICAicHJvZmlsZUlkIiA6ICI3ZjU2ZjY1MDI2NjY0ZmM1OWFjNWYyYjVjMTNlZGY3NyIsCiAgInByb2ZpbGVOYW1lIiA6ICJNYXhBbnRvbnkiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmQ3ODVmZmM5MDdiN2ViZWY4NTljOTljNzA4MzU4M2RhNmE1MmU4YmMzMmQxMDIwNjE1MGRlOTkyOTM1ODU5NCIsCiAgICAgICJtZXRhZGF0YSIgOiB7CiAgICAgICAgIm1vZGVsIiA6ICJzbGltIgogICAgICB9CiAgICB9CiAgfQp9"}]},"bold":false},\
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.8","fallback": "難道說這個新世界不單單只有一位敵人","bold": false} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 9 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.stellar",color:"white","bold":true},\
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTcxNjcwMDczNzg4NSwKICAicHJvZmlsZUlkIiA6ICI3ZjU2ZjY1MDI2NjY0ZmM1OWFjNWYyYjVjMTNlZGY3NyIsCiAgInByb2ZpbGVOYW1lIiA6ICJNYXhBbnRvbnkiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmQ3ODVmZmM5MDdiN2ViZWY4NTljOTljNzA4MzU4M2RhNmE1MmU4YmMzMmQxMDIwNjE1MGRlOTkyOTM1ODU5NCIsCiAgICAgICJtZXRhZGF0YSIgOiB7CiAgICAgICAgIm1vZGVsIiA6ICJzbGltIgogICAgICB9CiAgICB9CiAgfQp9"}]},"bold":false},\
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.9","fallback": "所有包括我、蘇菲亞與你舊世界的最終的敵人都來到這裡了","bold": false,"with":[{"bold":true,"color":"yellow","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"proper_nouns.icon.old_story","underlined":true,"fallback": "舊世界"}]} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 10 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.seronis",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2ODM5NzkyNTg0OSwKICAicHJvZmlsZUlkIiA6ICJiYzRlZGZiNWYzNmM0OGE3YWM5ZjFhMzlkYzIzZjRmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICI4YWNhNjgwYjIyNDYxMzQwIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2EzMWJjMDMwOGZiNTE0N2ViMGUyNDI3NjY2OTQ1YWI4MDlhYmY2YzE1ZDQ4OTgzOTE3ZDJkMTY5ODVhOTRlMyIKICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.10","fallback": "是的，我們將他稱之為 舊日支配者","bold": false,"with":[{"bold":true,"color":"dark_red","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"story.icon.proper_noun.great_old_ones","underlined":true,"fallback": "舊日支配者"}]} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 11 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.seronis",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2ODM5NzkyNTg0OSwKICAicHJvZmlsZUlkIiA6ICJiYzRlZGZiNWYzNmM0OGE3YWM5ZjFhMzlkYzIzZjRmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICI4YWNhNjgwYjIyNDYxMzQwIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2EzMWJjMDMwOGZiNTE0N2ViMGUyNDI3NjY2OTQ1YWI4MDlhYmY2YzE1ZDQ4OTgzOTE3ZDJkMTY5ODVhOTRlMyIKICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.11","fallback": "在這道門的後面是一個充滿來至不同時空舊世界記憶的世界","bold": false,"with":[{"bold":true,"color":"yellow","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"proper_nouns.icon.old_story","underlined":true,"fallback": "舊世界"}]} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 12 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.seronis",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2ODM5NzkyNTg0OSwKICAicHJvZmlsZUlkIiA6ICJiYzRlZGZiNWYzNmM0OGE3YWM5ZjFhMzlkYzIzZjRmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICI4YWNhNjgwYjIyNDYxMzQwIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2EzMWJjMDMwOGZiNTE0N2ViMGUyNDI3NjY2OTQ1YWI4MDlhYmY2YzE1ZDQ4OTgzOTE3ZDJkMTY5ODVhOTRlMyIKICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.12","fallback": "也是是我唯一能守護的東西","bold": false} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 13 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.seronis",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2ODM5NzkyNTg0OSwKICAicHJvZmlsZUlkIiA6ICJiYzRlZGZiNWYzNmM0OGE3YWM5ZjFhMzlkYzIzZjRmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICI4YWNhNjgwYjIyNDYxMzQwIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2EzMWJjMDMwOGZiNTE0N2ViMGUyNDI3NjY2OTQ1YWI4MDlhYmY2YzE1ZDQ4OTgzOTE3ZDJkMTY5ODVhOTRlMyIKICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.13","fallback": "我稱之為 異界之門","bold": false} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 14 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.seronis",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2ODM5NzkyNTg0OSwKICAicHJvZmlsZUlkIiA6ICJiYzRlZGZiNWYzNmM0OGE3YWM5ZjFhMzlkYzIzZjRmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICI4YWNhNjgwYjIyNDYxMzQwIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2EzMWJjMDMwOGZiNTE0N2ViMGUyNDI3NjY2OTQ1YWI4MDlhYmY2YzE1ZDQ4OTgzOTE3ZDJkMTY5ODVhOTRlMyIKICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.14","fallback": "自從深淵將舊世界給毀滅之後","bold": false,"with":[{"bold":true,"color":"yellow","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"proper_nouns.icon.old_story","underlined":true,"fallback": "舊世界"}]} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 15 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.seronis",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2ODM5NzkyNTg0OSwKICAicHJvZmlsZUlkIiA6ICJiYzRlZGZiNWYzNmM0OGE3YWM5ZjFhMzlkYzIzZjRmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICI4YWNhNjgwYjIyNDYxMzQwIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2EzMWJjMDMwOGZiNTE0N2ViMGUyNDI3NjY2OTQ1YWI4MDlhYmY2YzE1ZDQ4OTgzOTE3ZDJkMTY5ODVhOTRlMyIKICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.15","fallback": "世界記憶與時空已然變得混亂不堪","bold": false} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 16 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.seronis",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2ODM5NzkyNTg0OSwKICAicHJvZmlsZUlkIiA6ICJiYzRlZGZiNWYzNmM0OGE3YWM5ZjFhMzlkYzIzZjRmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICI4YWNhNjgwYjIyNDYxMzQwIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2EzMWJjMDMwOGZiNTE0N2ViMGUyNDI3NjY2OTQ1YWI4MDlhYmY2YzE1ZDQ4OTgzOTE3ZDJkMTY5ODVhOTRlMyIKICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.16","fallback": "與此也誕生了許多不穩定的時空裂隙","bold": false} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 17 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.seronis",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2ODM5NzkyNTg0OSwKICAicHJvZmlsZUlkIiA6ICJiYzRlZGZiNWYzNmM0OGE3YWM5ZjFhMzlkYzIzZjRmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICI4YWNhNjgwYjIyNDYxMzQwIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2EzMWJjMDMwOGZiNTE0N2ViMGUyNDI3NjY2OTQ1YWI4MDlhYmY2YzE1ZDQ4OTgzOTE3ZDJkMTY5ODVhOTRlMyIKICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.17","fallback": "我調用了世界記憶之樹的力量將部分已然摧毀的世界復現出來","bold": false} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 18 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.seronis",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2ODM5NzkyNTg0OSwKICAicHJvZmlsZUlkIiA6ICJiYzRlZGZiNWYzNmM0OGE3YWM5ZjFhMzlkYzIzZjRmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICI4YWNhNjgwYjIyNDYxMzQwIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2EzMWJjMDMwOGZiNTE0N2ViMGUyNDI3NjY2OTQ1YWI4MDlhYmY2YzE1ZDQ4OTgzOTE3ZDJkMTY5ODVhOTRlMyIKICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.18","fallback": "由於裂隙的不穩定性所以這道門裡除了復現出來地形與非常強力的武器之外","bold": false} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 19 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.seronis",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2ODM5NzkyNTg0OSwKICAicHJvZmlsZUlkIiA6ICJiYzRlZGZiNWYzNmM0OGE3YWM5ZjFhMzlkYzIzZjRmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICI4YWNhNjgwYjIyNDYxMzQwIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2EzMWJjMDMwOGZiNTE0N2ViMGUyNDI3NjY2OTQ1YWI4MDlhYmY2YzE1ZDQ4OTgzOTE3ZDJkMTY5ODVhOTRlMyIKICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.19","fallback": "還有許多來至舊世界的深淵怪物","bold": false,"with":[{"bold":true,"color":"yellow","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"proper_nouns.icon.old_story","underlined":true,"fallback": "舊世界"}]} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 20 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.seronis",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2ODM5NzkyNTg0OSwKICAicHJvZmlsZUlkIiA6ICJiYzRlZGZiNWYzNmM0OGE3YWM5ZjFhMzlkYzIzZjRmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICI4YWNhNjgwYjIyNDYxMzQwIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2EzMWJjMDMwOGZiNTE0N2ViMGUyNDI3NjY2OTQ1YWI4MDlhYmY2YzE1ZDQ4OTgzOTE3ZDJkMTY5ODVhOTRlMyIKICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.20","fallback": "所以在你們來到之前，我守護著這道門的穩定性","bold": false} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 21 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.seronis",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2ODM5NzkyNTg0OSwKICAicHJvZmlsZUlkIiA6ICJiYzRlZGZiNWYzNmM0OGE3YWM5ZjFhMzlkYzIzZjRmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICI4YWNhNjgwYjIyNDYxMzQwIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2EzMWJjMDMwOGZiNTE0N2ViMGUyNDI3NjY2OTQ1YWI4MDlhYmY2YzE1ZDQ4OTgzOTE3ZDJkMTY5ODVhOTRlMyIKICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.21","fallback": "如果你能給我 9 個不穩定水晶","bold": false,"with":[{"bold":true,"underlined":true,"color":"dark_purple","translate":"item.unstable_crystal","fallback": "不穩定水晶"}]} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 22 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.seronis",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2ODM5NzkyNTg0OSwKICAicHJvZmlsZUlkIiA6ICJiYzRlZGZiNWYzNmM0OGE3YWM5ZjFhMzlkYzIzZjRmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICI4YWNhNjgwYjIyNDYxMzQwIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2EzMWJjMDMwOGZiNTE0N2ViMGUyNDI3NjY2OTQ1YWI4MDlhYmY2YzE1ZDQ4OTgzOTE3ZDJkMTY5ODVhOTRlMyIKICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.22","fallback": "我能調用部分世界記憶之樹力量將它變成打開這道門的鑰匙","bold": false} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 23 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.seronis",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2ODM5NzkyNTg0OSwKICAicHJvZmlsZUlkIiA6ICJiYzRlZGZiNWYzNmM0OGE3YWM5ZjFhMzlkYzIzZjRmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICI4YWNhNjgwYjIyNDYxMzQwIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2EzMWJjMDMwOGZiNTE0N2ViMGUyNDI3NjY2OTQ1YWI4MDlhYmY2YzE1ZDQ4OTgzOTE3ZDJkMTY5ODVhOTRlMyIKICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.23","fallback": "對了，還有一件事情","bold": false} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 24 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.seronis",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2ODM5NzkyNTg0OSwKICAicHJvZmlsZUlkIiA6ICJiYzRlZGZiNWYzNmM0OGE3YWM5ZjFhMzlkYzIzZjRmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICI4YWNhNjgwYjIyNDYxMzQwIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2EzMWJjMDMwOGZiNTE0N2ViMGUyNDI3NjY2OTQ1YWI4MDlhYmY2YzE1ZDQ4OTgzOTE3ZDJkMTY5ODVhOTRlMyIKICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.24","fallback": "這個世界不只有我們存活","bold": false} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 25 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.seronis",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2ODM5NzkyNTg0OSwKICAicHJvZmlsZUlkIiA6ICJiYzRlZGZiNWYzNmM0OGE3YWM5ZjFhMzlkYzIzZjRmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICI4YWNhNjgwYjIyNDYxMzQwIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2EzMWJjMDMwOGZiNTE0N2ViMGUyNDI3NjY2OTQ1YWI4MDlhYmY2YzE1ZDQ4OTgzOTE3ZDJkMTY5ODVhOTRlMyIKICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.25","fallback": "名叫賽琳娜的女孩","bold": false,"with":[{"bold":true,"underlined":true,"color":"aqua","translate":"story.characters.selena","fallback":"賽琳娜"}]} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 26 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.seronis",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2ODM5NzkyNTg0OSwKICAicHJvZmlsZUlkIiA6ICJiYzRlZGZiNWYzNmM0OGE3YWM5ZjFhMzlkYzIzZjRmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICI4YWNhNjgwYjIyNDYxMzQwIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2EzMWJjMDMwOGZiNTE0N2ViMGUyNDI3NjY2OTQ1YWI4MDlhYmY2YzE1ZDQ4OTgzOTE3ZDJkMTY5ODVhOTRlMyIKICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.26","fallback": "她是一名偵探，也與我來至同個舊世界","bold": false,"with":[{"bold":true,"color":"yellow","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"proper_nouns.icon.old_story","underlined":true,"fallback": "舊世界"}]} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 27 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.seronis",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2ODM5NzkyNTg0OSwKICAicHJvZmlsZUlkIiA6ICJiYzRlZGZiNWYzNmM0OGE3YWM5ZjFhMzlkYzIzZjRmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICI4YWNhNjgwYjIyNDYxMzQwIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2EzMWJjMDMwOGZiNTE0N2ViMGUyNDI3NjY2OTQ1YWI4MDlhYmY2YzE1ZDQ4OTgzOTE3ZDJkMTY5ODVhOTRlMyIKICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.2.27","fallback": "如果你找到她，她會告訴你更多關於舊日支配者的事情","bold": false,"with":[{"bold":true,"color":"dark_red","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"story.icon.proper_noun.great_old_ones","underlined":true,"fallback": "舊日支配者"}]} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 27 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.end","fallback": "對話結束，再次點擊可重複查看對話內容","color":"gold"},\
        {"text":"\n"} \
    ]

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 27 run \
playsound minecraft:entity.player.levelup voice @a ~ ~1 ~ 0.5 1

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 27 run \
scoreboard players set #story:icon/proper_noun/great_old_ones global.main 1

execute \
    positioned 158 91 -429 \
    if score story.chapter_1.sq.2 story.chapter_1 matches 27 run \
function story:chapter_1/sq/2/shop_unlock

data remove entity @s interaction

execute \
    unless score story.chapter_1.sq.2 story.chapter_1 matches 0..27 run \
return 0

scoreboard players add story.chapter_1.sq.2 story.chapter_1 1
playsound minecraft:ui.button.click voice @a ~ ~1 ~ 0.5 1