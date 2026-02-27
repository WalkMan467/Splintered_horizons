# The entire storyline is executed through the scoreboard story(dummy) combined with the schedule command


execute \
    positioned -2 65 22 \
    if score story.chapter_1.sq.1 story.chapter_1 matches 1 \
    unless score story.chapter_1.sq.1 global.main matches 1 \
    as @n[type=item_display,tag=aj.sophia.root,distance=..3] \
    on passengers run \
data modify entity @s Glowing set value 0b


execute \
    \
    if score story.chapter_1.sq.1 story.chapter_1 matches 1 run \
scoreboard players set story.chapter_1.sq.1 global.main 1


execute \
    positioned -2 65 22 \
    if score story.chapter_1.sq.1 story.chapter_1 matches 1 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.sophia",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTczODMyNzM1NjE5OCwKICAicHJvZmlsZUlkIiA6ICJjNDIzYjQwMWZiOGU0ODc3YjMzMmVmMjhiZDdlZGZmZCIsCiAgInByb2ZpbGVOYW1lIiA6ICJSZWFjdGlvbkJyaW5lWVQiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWU2YzhhOWE1OWNkYjY5YzJiM2E3NjAxYWJhODJmNjMwOWQ3ZGQ0NWM0ZTg3OGE5YzQ2M2YwNDkxNDllYzI1IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.1.1","fallback": "這座城市已被深淵侵蝕的殘破不堪","bold": false} \
    ]


execute \
    positioned -2 65 22 \
    if score story.chapter_1.sq.1 story.chapter_1 matches 2 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.sophia",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTczODMyNzM1NjE5OCwKICAicHJvZmlsZUlkIiA6ICJjNDIzYjQwMWZiOGU0ODc3YjMzMmVmMjhiZDdlZGZmZCIsCiAgInByb2ZpbGVOYW1lIiA6ICJSZWFjdGlvbkJyaW5lWVQiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWU2YzhhOWE1OWNkYjY5YzJiM2E3NjAxYWJhODJmNjMwOWQ3ZGQ0NWM0ZTg3OGE5YzQ2M2YwNDkxNDllYzI1IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.1.2","fallback": "但似乎這裡有遺留什麼足跡","bold": false} \
    ]


execute \
    positioned -2 65 22 \
    if score story.chapter_1.sq.1 story.chapter_1 matches 3 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.sophia",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTczODMyNzM1NjE5OCwKICAicHJvZmlsZUlkIiA6ICJjNDIzYjQwMWZiOGU0ODc3YjMzMmVmMjhiZDdlZGZmZCIsCiAgInByb2ZpbGVOYW1lIiA6ICJSZWFjdGlvbkJyaW5lWVQiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWU2YzhhOWE1OWNkYjY5YzJiM2E3NjAxYWJhODJmNjMwOWQ3ZGQ0NWM0ZTg3OGE5YzQ2M2YwNDkxNDllYzI1IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.1.3","fallback": "或許，我們可以四處探索一下","bold": false} \
    ]


execute \
    positioned -2 65 22 \
    if score story.chapter_1.sq.1 story.chapter_1 matches 4 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.sophia",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTczODMyNzM1NjE5OCwKICAicHJvZmlsZUlkIiA6ICJjNDIzYjQwMWZiOGU0ODc3YjMzMmVmMjhiZDdlZGZmZCIsCiAgInByb2ZpbGVOYW1lIiA6ICJSZWFjdGlvbkJyaW5lWVQiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWU2YzhhOWE1OWNkYjY5YzJiM2E3NjAxYWJhODJmNjMwOWQ3ZGQ0NWM0ZTg3OGE5YzQ2M2YwNDkxNDllYzI1IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.1.4","fallback": "這座城市似乎與我們一樣故事","bold": false} \
    ]


execute \
    positioned -2 65 22 \
    if score story.chapter_1.sq.1 story.chapter_1 matches 4 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.chapter_1.sq.1.5","fallback": "【支線】關於破碎之都的故事","color": "gold",},"\n" \
    ]


execute \
    positioned -2 65 22 \
    if score story.chapter_1.sq.1 story.chapter_1 matches 4 run \
scoreboard players set #story:icon/story/chapter_1/sq/1/title global.main 1


execute \
    positioned -2 65 22 \
    if score story.chapter_1.sq.1 story.chapter_1 matches 4 run \
scoreboard players set #story:icon/story/chapter_1/sq/1/1 global.main 1


execute \
    positioned -2 65 22 \
    if score story.chapter_1.sq.1 story.chapter_1 matches 4 run \
tellraw @a[distance=..16] \
    [ \
        {"text":""} \
    ]


execute \
    positioned -2 65 22 \
    if score story.chapter_1.sq.1 story.chapter_1 matches 4 run \
playsound minecraft:entity.player.levelup voice @a ~ ~1 ~ 0.5 1


execute \
    positioned -2 65 22 \
    if score story.chapter_1.sq.1 story.chapter_1 matches 4 run \
scoreboard players add story.chapter_1.sq.1 story.chapter_1 1



execute \
    positioned -2 65 22 \
    if score story.chapter_1.sq.1 story.chapter_1 matches 5 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.sophia",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTczODMyNzM1NjE5OCwKICAicHJvZmlsZUlkIiA6ICJjNDIzYjQwMWZiOGU0ODc3YjMzMmVmMjhiZDdlZGZmZCIsCiAgInByb2ZpbGVOYW1lIiA6ICJSZWFjdGlvbkJyaW5lWVQiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWU2YzhhOWE1OWNkYjY5YzJiM2E3NjAxYWJhODJmNjMwOWQ3ZGQ0NWM0ZTg3OGE5YzQ2M2YwNDkxNDllYzI1IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.1.6","fallback": "關於這座城市的故事有什麼進展嗎？","bold": false} \
    ]


execute \
    positioned -2 65 22 \
    if score story.chapter_1.sq.1 story.chapter_1 matches 5 run \
tellraw @a[distance=..16] \
    [ \
        {"font":"minecraft:default","text":"☞ ","color":"dark_gray"}, \
        {"translate": "story.chapter_1.sq.1.7","fallback": "【目前沒有】","color":"dark_green","click_event":{action:"run_command",command:"/trigger player.detect.click_event.trigger set 4"}} \
    ]


execute \
    positioned -2 65 22 \
    if score story.chapter_1.sq.1 story.chapter_1 matches 5 \
    if score #story:icon/story/chapter_1/mq/4/page_1 global.main matches 1 \
    if score #story:icon/story/chapter_1/mq/4/page_2 global.main matches 1 \
    if score #story:icon/story/chapter_1/mq/4/page_3 global.main matches 1 run \
tellraw @a[distance=..16] \
    [ \
        {"font":"minecraft:default","text":"☞ ","color":"dark_gray"}, \
        {"translate": "story.chapter_1.sq.1.8","fallback": "【我找到一些書頁】","color":"dark_green","click_event":{action:"run_command",command:"/trigger player.detect.click_event.trigger set 5"}} \
    ]


execute \
    positioned -2 65 22 \
    if score story.chapter_1.sq.1 story.chapter_1 matches 5 run \
tellraw @a[distance=..16] \
    [ \
        {"text":""} \
    ]


execute \
    positioned -2 65 22 \
    if score story.chapter_1.sq.1 story.chapter_1 matches 6 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.sophia",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTczODMyNzM1NjE5OCwKICAicHJvZmlsZUlkIiA6ICJjNDIzYjQwMWZiOGU0ODc3YjMzMmVmMjhiZDdlZGZmZCIsCiAgInByb2ZpbGVOYW1lIiA6ICJSZWFjdGlvbkJyaW5lWVQiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWU2YzhhOWE1OWNkYjY5YzJiM2E3NjAxYWJhODJmNjMwOWQ3ZGQ0NWM0ZTg3OGE5YzQ2M2YwNDkxNDllYzI1IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.1.9","fallback": "如果有找到其他的資料可以回來跟我說","bold": false} \
    ]


execute \
    positioned -2 65 22 \
    if score story.chapter_1.sq.1 story.chapter_1 matches 6 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.end","fallback": "對話結束，再次點擊可重複查看對話內容","color":"gold"},\
        {"text":"\n"} \
    ]


execute \
    positioned -2 65 22 \
    if score story.chapter_1.sq.1 story.chapter_1 matches 6 run \
playsound minecraft:entity.player.levelup voice @a ~ ~1 ~ 0.5 1


execute \
    if score story.chapter_1.sq.1 story.chapter_1 matches 6 run \
scoreboard players set story.chapter_1.sq.1 story.chapter_1 1


execute \
    positioned -2 65 22 \
    if score story.chapter_1.sq.1 story.chapter_1 matches 7 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.sophia",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTczODMyNzM1NjE5OCwKICAicHJvZmlsZUlkIiA6ICJjNDIzYjQwMWZiOGU0ODc3YjMzMmVmMjhiZDdlZGZmZCIsCiAgInByb2ZpbGVOYW1lIiA6ICJSZWFjdGlvbkJyaW5lWVQiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWU2YzhhOWE1OWNkYjY5YzJiM2E3NjAxYWJhODJmNjMwOWQ3ZGQ0NWM0ZTg3OGE5YzQ2M2YwNDkxNDllYzI1IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.1.10","fallback": "關於這裡的故事...","bold": false} \
    ]


execute \
    positioned -2 65 22 \
    if score story.chapter_1.sq.1 story.chapter_1 matches 8 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.sophia",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTczODMyNzM1NjE5OCwKICAicHJvZmlsZUlkIiA6ICJjNDIzYjQwMWZiOGU0ODc3YjMzMmVmMjhiZDdlZGZmZCIsCiAgInByb2ZpbGVOYW1lIiA6ICJSZWFjdGlvbkJyaW5lWVQiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWU2YzhhOWE1OWNkYjY5YzJiM2E3NjAxYWJhODJmNjMwOWQ3ZGQ0NWM0ZTg3OGE5YzQ2M2YwNDkxNDllYzI1IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.1.11","fallback": "這座破碎的都市是昔日的雨之城 - 奧蘭蒂斯","bold": false} \
    ]


execute \
    positioned -2 65 22 \
    if score story.chapter_1.sq.1 story.chapter_1 matches 9 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.sophia",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTczODMyNzM1NjE5OCwKICAicHJvZmlsZUlkIiA6ICJjNDIzYjQwMWZiOGU0ODc3YjMzMmVmMjhiZDdlZGZmZCIsCiAgInByb2ZpbGVOYW1lIiA6ICJSZWFjdGlvbkJyaW5lWVQiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWU2YzhhOWE1OWNkYjY5YzJiM2E3NjAxYWJhODJmNjMwOWQ3ZGQ0NWM0ZTg3OGE5YzQ2M2YwNDkxNDllYzI1IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.1.12","fallback": "一個水之魔劍所在的國度，也曾是你去過的地方","bold": false} \
    ]


execute \
    positioned -2 65 22 \
    if score story.chapter_1.sq.1 story.chapter_1 matches 9 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.sophia",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTczODMyNzM1NjE5OCwKICAicHJvZmlsZUlkIiA6ICJjNDIzYjQwMWZiOGU0ODc3YjMzMmVmMjhiZDdlZGZmZCIsCiAgInByb2ZpbGVOYW1lIiA6ICJSZWFjdGlvbkJyaW5lWVQiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWU2YzhhOWE1OWNkYjY5YzJiM2E3NjAxYWJhODJmNjMwOWQ3ZGQ0NWM0ZTg3OGE5YzQ2M2YwNDkxNDllYzI1IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.1.13","fallback": "但，最終還是逃不過舊世界的命運","bold": false} \
    ]


execute \
    positioned -2 65 22 \
    if score story.chapter_1.sq.1 story.chapter_1 matches 10 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.sophia",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTczODMyNzM1NjE5OCwKICAicHJvZmlsZUlkIiA6ICJjNDIzYjQwMWZiOGU0ODc3YjMzMmVmMjhiZDdlZGZmZCIsCiAgInByb2ZpbGVOYW1lIiA6ICJSZWFjdGlvbkJyaW5lWVQiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWU2YzhhOWE1OWNkYjY5YzJiM2E3NjAxYWJhODJmNjMwOWQ3ZGQ0NWM0ZTg3OGE5YzQ2M2YwNDkxNDllYzI1IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.1.14","fallback": "但願...我們能夠將世界奪回...","bold": false} \
    ]


execute \
    positioned -2 65 22 \
    if score story.chapter_1.sq.1 story.chapter_1 matches 11 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.sophia",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTczODMyNzM1NjE5OCwKICAicHJvZmlsZUlkIiA6ICJjNDIzYjQwMWZiOGU0ODc3YjMzMmVmMjhiZDdlZGZmZCIsCiAgInByb2ZpbGVOYW1lIiA6ICJSZWFjdGlvbkJyaW5lWVQiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWU2YzhhOWE1OWNkYjY5YzJiM2E3NjAxYWJhODJmNjMwOWQ3ZGQ0NWM0ZTg3OGE5YzQ2M2YwNDkxNDllYzI1IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.1.15","fallback": "即便希望渺小...但我想與你一同創造一個無深淵的世界","bold": false} \
    ]


execute \
    positioned -2 65 22 \
    if score story.chapter_1.sq.1 story.chapter_1 matches 12 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.sophia",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTczODMyNzM1NjE5OCwKICAicHJvZmlsZUlkIiA6ICJjNDIzYjQwMWZiOGU0ODc3YjMzMmVmMjhiZDdlZGZmZCIsCiAgInByb2ZpbGVOYW1lIiA6ICJSZWFjdGlvbkJyaW5lWVQiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWU2YzhhOWE1OWNkYjY5YzJiM2E3NjAxYWJhODJmNjMwOWQ3ZGQ0NWM0ZTg3OGE5YzQ2M2YwNDkxNDllYzI1IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.1.16","fallback": "看來這個世界...不只有一位共同的敵人","bold": false} \
    ]


execute \
    positioned -2 65 22 \
    if score story.chapter_1.sq.1 story.chapter_1 matches 13 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.characters.sophia",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTczODMyNzM1NjE5OCwKICAicHJvZmlsZUlkIiA6ICJjNDIzYjQwMWZiOGU0ODc3YjMzMmVmMjhiZDdlZGZmZCIsCiAgInByb2ZpbGVOYW1lIiA6ICJSZWFjdGlvbkJyaW5lWVQiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWU2YzhhOWE1OWNkYjY5YzJiM2E3NjAxYWJhODJmNjMwOWQ3ZGQ0NWM0ZTg3OGE5YzQ2M2YwNDkxNDllYzI1IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_1.sq.1.17","fallback": "願這裡的孤魂能夠安息於此","bold": false} \
    ]



execute \
    positioned -2 65 22 \
    if score story.chapter_1.sq.1 story.chapter_1 matches 13 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "story.end","fallback": "對話結束，再次點擊可重複查看對話內容","color":"gold"},\
        {"text":"\n"} \
    ]


execute \
    positioned -2 65 22 \
    if score story.chapter_1.sq.1 story.chapter_1 matches 13 run \
playsound minecraft:entity.player.levelup voice @a ~ ~1 ~ 0.5 1


execute \
    positioned -2 65 22 \
    if score story.chapter_1.sq.1 story.chapter_1 matches 13 run \
scoreboard players set #story.chapter_1.opening.4 global.main -1


execute \
    positioned -2 65 22 \
    if score story.chapter_1.sq.1 story.chapter_1 matches 13 run \
scoreboard players set #story:icon/proper_noun/great_old_ones global.main 1


execute \
    positioned -2 65 22 \
    if score story.chapter_1.sq.1 story.chapter_1 matches 13 run \
scoreboard players set #story:icon/story/chapter_1/sq/1/2 global.main 1


execute \
    positioned -2 65 22 \
    if score story.chapter_1.sq.1 story.chapter_1 matches 13 run \
clear @a *[custom_data~{item:"fragments_of_the_book"}]


execute \
    positioned -2 65 22 \
    if score story.chapter_1.sq.1 story.chapter_1 matches 13 run \
function story:chapter_1/sq/1/false

data remove entity @s interaction


execute \
    if score story.chapter_1.sq.1 story.chapter_1 matches 1..5 run \
function story:chapter_1/sq/1/update


execute \
    if score story.chapter_1.sq.1 story.chapter_1 matches 7..13 run \
function story:chapter_1/sq/1/update