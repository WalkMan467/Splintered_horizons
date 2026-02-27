# The entire storyline is executed through the scoreboard story(dummy) combined with the schedule command


execute \
    positioned 900 112 483 \
    if score story.chapter_2.ml.7 story.chapter_2 matches 1 \
    unless score #story:icon/story/chapter_2/mq/scebe_4 global.main matches 1 \
    as @n[sort=arbitrary,distance=..1,tag=aj.isokla.root,type=item_display] \
    on passengers run \
data modify entity @s Glowing set value 0b


execute \
    if score story.chapter_2.ml.7 story.chapter_2 matches 1 run \
scoreboard players set #story:icon/story/chapter_2/mq/scebe_4 global.main 1


execute \
    positioned 900 112 483 \
    if score story.chapter_2.ml.7 story.chapter_2 matches 1 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2ODM5NzkyNTg0OSwKICAicHJvZmlsZUlkIiA6ICJiYzRlZGZiNWYzNmM0OGE3YWM5ZjFhMzlkYzIzZjRmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICI4YWNhNjgwYjIyNDYxMzQwIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2EzMWJjMDMwOGZiNTE0N2ViMGUyNDI3NjY2OTQ1YWI4MDlhYmY2YzE1ZDQ4OTgzOTE3ZDJkMTY5ODVhOTRlMyIKICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.7.1","fallback": "看來我們似乎離伊萊克爾越來越近了","bold": false} \
    ]


execute \
    positioned 900 112 483 \
    if score story.chapter_2.ml.7 story.chapter_2 matches 2 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2ODM5NzkyNTg0OSwKICAicHJvZmlsZUlkIiA6ICJiYzRlZGZiNWYzNmM0OGE3YWM5ZjFhMzlkYzIzZjRmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICI4YWNhNjgwYjIyNDYxMzQwIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2EzMWJjMDMwOGZiNTE0N2ViMGUyNDI3NjY2OTQ1YWI4MDlhYmY2YzE1ZDQ4OTgzOTE3ZDJkMTY5ODVhOTRlMyIKICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.7.2","fallback": "我在附近調用了「記憶之冰」的力量復現周遭的環境","bold": false} \
    ]


execute \
    positioned 900 112 483 \
    if score story.chapter_2.ml.7 story.chapter_2 matches 3 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2ODM5NzkyNTg0OSwKICAicHJvZmlsZUlkIiA6ICJiYzRlZGZiNWYzNmM0OGE3YWM5ZjFhMzlkYzIzZjRmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICI4YWNhNjgwYjIyNDYxMzQwIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2EzMWJjMDMwOGZiNTE0N2ViMGUyNDI3NjY2OTQ1YWI4MDlhYmY2YzE1ZDQ4OTgzOTE3ZDJkMTY5ODVhOTRlMyIKICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.7.3","fallback": "這裡曾是來至我的舊世界的其中一處地形","bold": false} \
    ]


execute \
    positioned 900 112 483 \
    if score story.chapter_2.ml.7 story.chapter_2 matches 4 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2ODM5NzkyNTg0OSwKICAicHJvZmlsZUlkIiA6ICJiYzRlZGZiNWYzNmM0OGE3YWM5ZjFhMzlkYzIzZjRmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICI4YWNhNjgwYjIyNDYxMzQwIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2EzMWJjMDMwOGZiNTE0N2ViMGUyNDI3NjY2OTQ1YWI4MDlhYmY2YzE1ZDQ4OTgzOTE3ZDJkMTY5ODVhOTRlMyIKICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.7.4","fallback": "與此同時，我也發現了一些事情","bold": false} \
    ]


execute \
    positioned 900 112 483 \
    if score story.chapter_2.ml.7 story.chapter_2 matches 5 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2ODM5NzkyNTg0OSwKICAicHJvZmlsZUlkIiA6ICJiYzRlZGZiNWYzNmM0OGE3YWM5ZjFhMzlkYzIzZjRmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICI4YWNhNjgwYjIyNDYxMzQwIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2EzMWJjMDMwOGZiNTE0N2ViMGUyNDI3NjY2OTQ1YWI4MDlhYmY2YzE1ZDQ4OTgzOTE3ZDJkMTY5ODVhOTRlMyIKICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.7.5","fallback": "這裡似乎有我曾經同伴的身影，但非常的模糊不清，我幾乎無法用力量讓它變得更清晰","bold": false} \
    ]


execute \
    positioned 900 112 483 \
    if score story.chapter_2.ml.7 story.chapter_2 matches 6 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2ODM5NzkyNTg0OSwKICAicHJvZmlsZUlkIiA6ICJiYzRlZGZiNWYzNmM0OGE3YWM5ZjFhMzlkYzIzZjRmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICI4YWNhNjgwYjIyNDYxMzQwIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2EzMWJjMDMwOGZiNTE0N2ViMGUyNDI3NjY2OTQ1YWI4MDlhYmY2YzE1ZDQ4OTgzOTE3ZDJkMTY5ODVhOTRlMyIKICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.7.6","fallback": "阿斯尼亞，他是我的同伴，也是我最在乎的人","bold": false} \
    ]


execute \
    positioned 900 112 483 \
    if score story.chapter_2.ml.7 story.chapter_2 matches 7 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2ODM5NzkyNTg0OSwKICAicHJvZmlsZUlkIiA6ICJiYzRlZGZiNWYzNmM0OGE3YWM5ZjFhMzlkYzIzZjRmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICI4YWNhNjgwYjIyNDYxMzQwIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2EzMWJjMDMwOGZiNTE0N2ViMGUyNDI3NjY2OTQ1YWI4MDlhYmY2YzE1ZDQ4OTgzOTE3ZDJkMTY5ODVhOTRlMyIKICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.7.7","fallback": "當我了解在舊世界我所經歷的生活都是世界記憶之樹的永恆輪迴時","bold": false} \
    ]


execute \
    positioned 900 112 483 \
    if score story.chapter_2.ml.7 story.chapter_2 matches 8 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2ODM5NzkyNTg0OSwKICAicHJvZmlsZUlkIiA6ICJiYzRlZGZiNWYzNmM0OGE3YWM5ZjFhMzlkYzIzZjRmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICI4YWNhNjgwYjIyNDYxMzQwIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2EzMWJjMDMwOGZiNTE0N2ViMGUyNDI3NjY2OTQ1YWI4MDlhYmY2YzE1ZDQ4OTgzOTE3ZDJkMTY5ODVhOTRlMyIKICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.7.8","fallback": "那一切美好、一切的悲傷與生活都變得無意義","bold": false} \
    ]


execute \
    positioned 900 112 483 \
    if score story.chapter_2.ml.7 story.chapter_2 matches 9 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2ODM5NzkyNTg0OSwKICAicHJvZmlsZUlkIiA6ICJiYzRlZGZiNWYzNmM0OGE3YWM5ZjFhMzlkYzIzZjRmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICI4YWNhNjgwYjIyNDYxMzQwIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2EzMWJjMDMwOGZiNTE0N2ViMGUyNDI3NjY2OTQ1YWI4MDlhYmY2YzE1ZDQ4OTgzOTE3ZDJkMTY5ODVhOTRlMyIKICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.7.9","fallback": "是他讓我能夠重新振作，與賽羅尼斯一同一起決戰舊日支配者","bold": false} \
    ]


execute \
    positioned 900 112 483 \
    if score story.chapter_2.ml.7 story.chapter_2 matches 10 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2ODM5NzkyNTg0OSwKICAicHJvZmlsZUlkIiA6ICJiYzRlZGZiNWYzNmM0OGE3YWM5ZjFhMzlkYzIzZjRmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICI4YWNhNjgwYjIyNDYxMzQwIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2EzMWJjMDMwOGZiNTE0N2ViMGUyNDI3NjY2OTQ1YWI4MDlhYmY2YzE1ZDQ4OTgzOTE3ZDJkMTY5ODVhOTRlMyIKICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.7.10","fallback": "真的繞了好長好長一段路...","bold": false} \
    ]


execute \
    positioned 900 112 483 \
    if score story.chapter_2.ml.7 story.chapter_2 matches 11 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2ODM5NzkyNTg0OSwKICAicHJvZmlsZUlkIiA6ICJiYzRlZGZiNWYzNmM0OGE3YWM5ZjFhMzlkYzIzZjRmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICI4YWNhNjgwYjIyNDYxMzQwIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2EzMWJjMDMwOGZiNTE0N2ViMGUyNDI3NjY2OTQ1YWI4MDlhYmY2YzE1ZDQ4OTgzOTE3ZDJkMTY5ODVhOTRlMyIKICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.7.11","fallback": "為了阻止伊萊克爾的掙脫，我們創造了無限輪迴","bold": false} \
    ]


execute \
    positioned 900 112 483 \
    if score story.chapter_2.ml.7 story.chapter_2 matches 12 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2ODM5NzkyNTg0OSwKICAicHJvZmlsZUlkIiA6ICJiYzRlZGZiNWYzNmM0OGE3YWM5ZjFhMzlkYzIzZjRmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICI4YWNhNjgwYjIyNDYxMzQwIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2EzMWJjMDMwOGZiNTE0N2ViMGUyNDI3NjY2OTQ1YWI4MDlhYmY2YzE1ZDQ4OTgzOTE3ZDJkMTY5ODVhOTRlMyIKICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.7.12","fallback": "只為能夠擊敗深淵，讓世界能夠真正重獲自由","bold": false} \
    ]


execute \
    positioned 900 112 483 \
    if score story.chapter_2.ml.7 story.chapter_2 matches 13 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2ODM5NzkyNTg0OSwKICAicHJvZmlsZUlkIiA6ICJiYzRlZGZiNWYzNmM0OGE3YWM5ZjFhMzlkYzIzZjRmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICI4YWNhNjgwYjIyNDYxMzQwIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2EzMWJjMDMwOGZiNTE0N2ViMGUyNDI3NjY2OTQ1YWI4MDlhYmY2YzE1ZDQ4OTgzOTE3ZDJkMTY5ODVhOTRlMyIKICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.7.13","fallback": "但直到最後的輪迴，深淵已經快要侵蝕世界記憶之樹","bold": false} \
    ]


execute \
    positioned 900 112 483 \
    if score story.chapter_2.ml.7 story.chapter_2 matches 14 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2ODM5NzkyNTg0OSwKICAicHJvZmlsZUlkIiA6ICJiYzRlZGZiNWYzNmM0OGE3YWM5ZjFhMzlkYzIzZjRmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICI4YWNhNjgwYjIyNDYxMzQwIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2EzMWJjMDMwOGZiNTE0N2ViMGUyNDI3NjY2OTQ1YWI4MDlhYmY2YzE1ZDQ4OTgzOTE3ZDJkMTY5ODVhOTRlMyIKICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.7.14","fallback": "為了世界記憶之樹啟動下次輪迴","bold": false} \
    ]


execute \
    positioned 900 112 483 \
    if score story.chapter_2.ml.7 story.chapter_2 matches 15 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2ODM5NzkyNTg0OSwKICAicHJvZmlsZUlkIiA6ICJiYzRlZGZiNWYzNmM0OGE3YWM5ZjFhMzlkYzIzZjRmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICI4YWNhNjgwYjIyNDYxMzQwIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2EzMWJjMDMwOGZiNTE0N2ViMGUyNDI3NjY2OTQ1YWI4MDlhYmY2YzE1ZDQ4OTgzOTE3ZDJkMTY5ODVhOTRlMyIKICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.7.15","fallback": "他獨自與深淵殊死搏鬥，死於上次輪迴的終點","bold": false} \
    ]


execute \
    positioned 900 112 483 \
    if score story.chapter_2.ml.7 story.chapter_2 matches 16 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2ODM5NzkyNTg0OSwKICAicHJvZmlsZUlkIiA6ICJiYzRlZGZiNWYzNmM0OGE3YWM5ZjFhMzlkYzIzZjRmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICI4YWNhNjgwYjIyNDYxMzQwIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2EzMWJjMDMwOGZiNTE0N2ViMGUyNDI3NjY2OTQ1YWI4MDlhYmY2YzE1ZDQ4OTgzOTE3ZDJkMTY5ODVhOTRlMyIKICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.7.16","fallback": "最後我們還是沒有擊敗深淵","bold": false} \
    ]


execute \
    positioned 900 112 483 \
    if score story.chapter_2.ml.7 story.chapter_2 matches 17 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.selena",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2ODM5NzkyNTg0OSwKICAicHJvZmlsZUlkIiA6ICJiYzRlZGZiNWYzNmM0OGE3YWM5ZjFhMzlkYzIzZjRmOCIsCiAgInByb2ZpbGVOYW1lIiA6ICI4YWNhNjgwYjIyNDYxMzQwIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2EzMWJjMDMwOGZiNTE0N2ViMGUyNDI3NjY2OTQ1YWI4MDlhYmY2YzE1ZDQ4OTgzOTE3ZDJkMTY5ODVhOTRlMyIKICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.7.17","fallback": "所以，這就是來至他的故事，也是我唯一能做的事","bold": false} \
    ]

execute \
    positioned 900 112 483 \
    if score story.chapter_2.ml.7 story.chapter_2 matches 17 run \
tellraw @a[distance=..16] \
    [ \
        {"text":"\n"},\
        {"translate": "story.end","fallback": "對話結束，再次點擊可重複查看對話內容","color":"gold"},\
        {"text":"\n"} \
    ]


execute \
    if score story.chapter_2.ml.7 story.chapter_2 matches 17 run \
playsound minecraft:entity.player.levelup voice @a ~ ~1 ~ 0.5 1


execute \
    if score story.chapter_2.ml.7 story.chapter_2 matches 18 run \
schedule function story:chapter_2/ml/7/0 1t

data remove entity @s interaction


execute \
    unless score story.chapter_2.ml.7 story.chapter_2 matches 1..18 run \
return 0

scoreboard players add story.chapter_2.ml.7 story.chapter_2 1
playsound minecraft:ui.button.click voice @a ~ ~1 ~ 0.5 1