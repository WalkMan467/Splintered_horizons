# The entire storyline is executed through the scoreboard story(dummy) combined with the schedule command

execute positioned 928 167 908 \
    if score story.chapter_2.ml.4 story.chapter_2 matches 1 \
    unless score #story:icon/story/chapter_2/mq/scebe_4 global.main matches 1 \
    as @n[sort=arbitrary,distance=..1,tag=aj.isokla.root,type=item_display] on passengers run \
data modify entity @s Glowing set value 0b

execute if score story.chapter_2.ml.4 story.chapter_2 matches 1 run \
scoreboard players set #story:icon/story/chapter_2/mq/scebe_4 global.main 1

execute positioned 928 167 908 if score story.chapter_2.ml.4 story.chapter_2 matches 1 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "stoy.characters.isokla",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2NTE3Nzk3NDA5OSwKICAicHJvZmlsZUlkIiA6ICI3MzE4MWQxZDRjYWQ0ZmU0YTcxNWNjNmUxOGNjYzVkNyIsCiAgInByb2ZpbGVOYW1lIiA6ICJaZmVybjRuZGl0byIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9lNmMzMGZhZGViNTgxMWIyMzhkYzAxZmRkNmZlYzA0ZThkZDZlYjBiMGRlNGEzZTk2YWNhZTRlOTMwM2Q4OWE3IgogICAgfQogIH0KfQ=="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.4.1","fallback": "怎麼又是你","bold": false} \
    ]

execute positioned 928 167 908 if score story.chapter_2.ml.4 story.chapter_2 matches 2 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "stoy.characters.melisna",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc1NDg1MzY4MTAyMiwKICAicHJvZmlsZUlkIiA6ICJkNDAwODgyZmY3OGQ0ZGVhYjliMGNlMTc2YmQ1ZTQyMyIsCiAgInByb2ZpbGVOYW1lIiA6ICJQcmF4aWJldGwiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTQ2ODUyMzEyZTc1ZWZiY2I5OTY2YjgwNzRjYTI2OTc2Nzg1Y2MyMjBmNWM0ZDlhODFmZTVjZjYyNmUxMmEyNiIsCiAgICAgICJtZXRhZGF0YSIgOiB7CiAgICAgICAgIm1vZGVsIiA6ICJzbGltIgogICAgICB9CiAgICB9CiAgfQp9"}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.4.2","fallback": "哥哥，雖然我知道你被深淵的侵蝕折磨的不堪","bold": false} \
    ]

execute positioned 928 167 908 if score story.chapter_2.ml.4 story.chapter_2 matches 3 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "stoy.characters.melisna",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc1NDg1MzY4MTAyMiwKICAicHJvZmlsZUlkIiA6ICJkNDAwODgyZmY3OGQ0ZGVhYjliMGNlMTc2YmQ1ZTQyMyIsCiAgInByb2ZpbGVOYW1lIiA6ICJQcmF4aWJldGwiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTQ2ODUyMzEyZTc1ZWZiY2I5OTY2YjgwNzRjYTI2OTc2Nzg1Y2MyMjBmNWM0ZDlhODFmZTVjZjYyNmUxMmEyNiIsCiAgICAgICJtZXRhZGF0YSIgOiB7CiAgICAgICAgIm1vZGVsIiA6ICJzbGltIgogICAgICB9CiAgICB9CiAgfQp9"}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.4.3","fallback": "但我希望你能跟大家好好相處","bold": false} \
    ]

execute positioned 928 167 908 if score story.chapter_2.ml.4 story.chapter_2 matches 4 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "stoy.characters.stellar",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTcxNjcwMDczNzg4NSwKICAicHJvZmlsZUlkIiA6ICI3ZjU2ZjY1MDI2NjY0ZmM1OWFjNWYyYjVjMTNlZGY3NyIsCiAgInByb2ZpbGVOYW1lIiA6ICJNYXhBbnRvbnkiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmQ3ODVmZmM5MDdiN2ViZWY4NTljOTljNzA4MzU4M2RhNmE1MmU4YmMzMmQxMDIwNjE1MGRlOTkyOTM1ODU5NCIsCiAgICAgICJtZXRhZGF0YSIgOiB7CiAgICAgICAgIm1vZGVsIiA6ICJzbGltIgogICAgICB9CiAgICB9CiAgfQp9"}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.4.4","fallback": "沒事的，我不會在意","bold": false} \
    ]

execute positioned 928 167 908 if score story.chapter_2.ml.4 story.chapter_2 matches 5 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "stoy.characters.sophia",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTczODMyNzM1NjE5OCwKICAicHJvZmlsZUlkIiA6ICJjNDIzYjQwMWZiOGU0ODc3YjMzMmVmMjhiZDdlZGZmZCIsCiAgInByb2ZpbGVOYW1lIiA6ICJSZWFjdGlvbkJyaW5lWVQiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWU2YzhhOWE1OWNkYjY5YzJiM2E3NjAxYWJhODJmNjMwOWQ3ZGQ0NWM0ZTg3OGE5YzQ2M2YwNDkxNDllYzI1IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.4.5","fallback": "我也是","bold": false} \
    ]

execute positioned 928 167 908 if score story.chapter_2.ml.4 story.chapter_2 matches 6 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "stoy.characters.isokla",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2NTE3Nzk3NDA5OSwKICAicHJvZmlsZUlkIiA6ICI3MzE4MWQxZDRjYWQ0ZmU0YTcxNWNjNmUxOGNjYzVkNyIsCiAgInByb2ZpbGVOYW1lIiA6ICJaZmVybjRuZGl0byIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9lNmMzMGZhZGViNTgxMWIyMzhkYzAxZmRkNmZlYzA0ZThkZDZlYjBiMGRlNGEzZTk2YWNhZTRlOTMwM2Q4OWE3IgogICAgfQogIH0KfQ=="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.4.6","fallback": "梅倫絲娜，或許你根本不理解深淵對我帶來的痛苦","bold": false} \
    ]

execute positioned 928 167 908 if score story.chapter_2.ml.4 story.chapter_2 matches 7 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "stoy.characters.isokla",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2NTE3Nzk3NDA5OSwKICAicHJvZmlsZUlkIiA6ICI3MzE4MWQxZDRjYWQ0ZmU0YTcxNWNjNmUxOGNjYzVkNyIsCiAgInByb2ZpbGVOYW1lIiA6ICJaZmVybjRuZGl0byIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9lNmMzMGZhZGViNTgxMWIyMzhkYzAxZmRkNmZlYzA0ZThkZDZlYjBiMGRlNGEzZTk2YWNhZTRlOTMwM2Q4OWE3IgogICAgfQogIH0KfQ=="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.4.7","fallback": "我即是哈薩諾爾的王儲，但我...連哈薩諾爾都無法守護","bold": false} \
    ]

execute positioned 928 167 908 if score story.chapter_2.ml.4 story.chapter_2 matches 8 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "stoy.characters.isokla",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2NTE3Nzk3NDA5OSwKICAicHJvZmlsZUlkIiA6ICI3MzE4MWQxZDRjYWQ0ZmU0YTcxNWNjNmUxOGNjYzVkNyIsCiAgInByb2ZpbGVOYW1lIiA6ICJaZmVybjRuZGl0byIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9lNmMzMGZhZGViNTgxMWIyMzhkYzAxZmRkNmZlYzA0ZThkZDZlYjBiMGRlNGEzZTk2YWNhZTRlOTMwM2Q4OWE3IgogICAgfQogIH0KfQ=="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.4.8","fallback": "甚至連你與我都被迫承受精神力的侵蝕","bold": false,"with":[{"bold":true,"color":"dark_red","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"story.icon.proper_noun.finality","underlined":true,"fallback": "終焉"}]} \
    ]

execute positioned 928 167 908 if score story.chapter_2.ml.4 story.chapter_2 matches 9 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "stoy.characters.isokla",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2NTE3Nzk3NDA5OSwKICAicHJvZmlsZUlkIiA6ICI3MzE4MWQxZDRjYWQ0ZmU0YTcxNWNjNmUxOGNjYzVkNyIsCiAgInByb2ZpbGVOYW1lIiA6ICJaZmVybjRuZGl0byIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9lNmMzMGZhZGViNTgxMWIyMzhkYzAxZmRkNmZlYzA0ZThkZDZlYjBiMGRlNGEzZTk2YWNhZTRlOTMwM2Q4OWE3IgogICAgfQogIH0KfQ=="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.4.9","fallback": "我只能眼睜睜的看著那些去最在乎我的人變成深淵怪物","bold": false,"with":[{"bold":true,"color":"dark_purple","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"story.icon.proper_noun.abyss","underlined":true,"fallback": "深淵"}]} \
    ]

execute positioned 928 167 908 if score story.chapter_2.ml.4 story.chapter_2 matches 10 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "stoy.characters.isokla",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2NTE3Nzk3NDA5OSwKICAicHJvZmlsZUlkIiA6ICI3MzE4MWQxZDRjYWQ0ZmU0YTcxNWNjNmUxOGNjYzVkNyIsCiAgInByb2ZpbGVOYW1lIiA6ICJaZmVybjRuZGl0byIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9lNmMzMGZhZGViNTgxMWIyMzhkYzAxZmRkNmZlYzA0ZThkZDZlYjBiMGRlNGEzZTk2YWNhZTRlOTMwM2Q4OWE3IgogICAgfQogIH0KfQ=="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.4.10","fallback": "你也知道，這些深淵怪物並不是憑空出現的","bold": false} \
    ]

execute positioned 928 167 908 if score story.chapter_2.ml.4 story.chapter_2 matches 11 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "stoy.characters.isokla",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2NTE3Nzk3NDA5OSwKICAicHJvZmlsZUlkIiA6ICI3MzE4MWQxZDRjYWQ0ZmU0YTcxNWNjNmUxOGNjYzVkNyIsCiAgInByb2ZpbGVOYW1lIiA6ICJaZmVybjRuZGl0byIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9lNmMzMGZhZGViNTgxMWIyMzhkYzAxZmRkNmZlYzA0ZThkZDZlYjBiMGRlNGEzZTk2YWNhZTRlOTMwM2Q4OWE3IgogICAgfQogIH0KfQ=="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.4.11","fallback": "而是每個被侵蝕的人們最終的結局","bold": false} \
    ]

execute positioned 928 167 908 if score story.chapter_2.ml.4 story.chapter_2 matches 12 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "stoy.characters.isokla",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2NTE3Nzk3NDA5OSwKICAicHJvZmlsZUlkIiA6ICI3MzE4MWQxZDRjYWQ0ZmU0YTcxNWNjNmUxOGNjYzVkNyIsCiAgInByb2ZpbGVOYW1lIiA6ICJaZmVybjRuZGl0byIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9lNmMzMGZhZGViNTgxMWIyMzhkYzAxZmRkNmZlYzA0ZThkZDZlYjBiMGRlNGEzZTk2YWNhZTRlOTMwM2Q4OWE3IgogICAgfQogIH0KfQ=="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.4.12","fallback": "甚至連我們終究都無法擺脫命運","bold": false} \
    ]

execute positioned 928 167 908 if score story.chapter_2.ml.4 story.chapter_2 matches 13 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "stoy.characters.isokla",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc2NTE3Nzk3NDA5OSwKICAicHJvZmlsZUlkIiA6ICI3MzE4MWQxZDRjYWQ0ZmU0YTcxNWNjNmUxOGNjYzVkNyIsCiAgInByb2ZpbGVOYW1lIiA6ICJaZmVybjRuZGl0byIsCiAgInNpZ25hdHVyZVJlcXVpcmVkIiA6IHRydWUsCiAgInRleHR1cmVzIiA6IHsKICAgICJTS0lOIiA6IHsKICAgICAgInVybCIgOiAiaHR0cDovL3RleHR1cmVzLm1pbmVjcmFmdC5uZXQvdGV4dHVyZS9lNmMzMGZhZGViNTgxMWIyMzhkYzAxZmRkNmZlYzA0ZThkZDZlYjBiMGRlNGEzZTk2YWNhZTRlOTMwM2Q4OWE3IgogICAgfQogIH0KfQ=="}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.4.13","fallback": "而我們只能忍著這些痛苦將其背負","bold": false,"with":[{"bold":true,"color":"dark_red","hover_event":{"action":"show_text","value":[{"translate":"monument.icon","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false},{"text":"\n\n"},{"translate": "proper_noun.desc.4","fallback":"定義為魔劍，遊戲的核心元素","color":"white","bold":false,"italic":false},{"text":"\n"},{"translate": "proper_noun.desc.5","fallback":"同時，它也是遊戲中目標物品(羊毛)","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"weapon.monument.the_fallen_blade_of_embers","underlined":true,"fallback": "神域終焉 · 餘燼之刃"}]} \
    ]

execute positioned 928 167 908 if score story.chapter_2.ml.4 story.chapter_2 matches 14 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "stoy.characters.melisna",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc1NDg1MzY4MTAyMiwKICAicHJvZmlsZUlkIiA6ICJkNDAwODgyZmY3OGQ0ZGVhYjliMGNlMTc2YmQ1ZTQyMyIsCiAgInByb2ZpbGVOYW1lIiA6ICJQcmF4aWJldGwiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTQ2ODUyMzEyZTc1ZWZiY2I5OTY2YjgwNzRjYTI2OTc2Nzg1Y2MyMjBmNWM0ZDlhODFmZTVjZjYyNmUxMmEyNiIsCiAgICAgICJtZXRhZGF0YSIgOiB7CiAgICAgICAgIm1vZGVsIiA6ICJzbGltIgogICAgICB9CiAgICB9CiAgfQp9"}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.4.14","fallback": "哥哥，我很抱歉","bold": false} \
    ]

execute positioned 928 167 908 if score story.chapter_2.ml.4 story.chapter_2 matches 15 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "stoy.characters.melisna",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc1NDg1MzY4MTAyMiwKICAicHJvZmlsZUlkIiA6ICJkNDAwODgyZmY3OGQ0ZGVhYjliMGNlMTc2YmQ1ZTQyMyIsCiAgInByb2ZpbGVOYW1lIiA6ICJQcmF4aWJldGwiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTQ2ODUyMzEyZTc1ZWZiY2I5OTY2YjgwNzRjYTI2OTc2Nzg1Y2MyMjBmNWM0ZDlhODFmZTVjZjYyNmUxMmEyNiIsCiAgICAgICJtZXRhZGF0YSIgOiB7CiAgICAgICAgIm1vZGVsIiA6ICJzbGltIgogICAgICB9CiAgICB9CiAgfQp9"}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.4.15","fallback": "如果可以，我想與你一同即便深淵","bold": false,"with":[{"bold":true,"color":"dark_red","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"story.icon.proper_noun.finality","underlined":true,"fallback": "終焉"}]} \
    ]

execute positioned 928 167 908 if score story.chapter_2.ml.4 story.chapter_2 matches 16 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "stoy.characters.melisna",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc1NDg1MzY4MTAyMiwKICAicHJvZmlsZUlkIiA6ICJkNDAwODgyZmY3OGQ0ZGVhYjliMGNlMTc2YmQ1ZTQyMyIsCiAgInByb2ZpbGVOYW1lIiA6ICJQcmF4aWJldGwiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTQ2ODUyMzEyZTc1ZWZiY2I5OTY2YjgwNzRjYTI2OTc2Nzg1Y2MyMjBmNWM0ZDlhODFmZTVjZjYyNmUxMmEyNiIsCiAgICAgICJtZXRhZGF0YSIgOiB7CiAgICAgICAgIm1vZGVsIiA6ICJzbGltIgogICAgICB9CiAgICB9CiAgfQp9"}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.4.16","fallback": "與你一同見證沒有深淵的世界","bold": false,"with":[{"bold":true,"color":"dark_red","hover_event":{"action":"show_text","value":[{"translate":"story.icon.proper_noun","fallback":"[專有名詞]:","color":"white"},"\n",{"translate": "proper_noun.desc.2","fallback":"詳情請按","color":"white","bold":false,"italic":false},{"keybind": "key.advancements","color": "dark_green"},{"translate": "proper_noun.desc.3","fallback":"尋找對應內容","color":"white","bold":false,"italic":false}]},"italic":false,"translate":"story.icon.proper_noun.finality","underlined":true,"fallback": "終焉"}]} \
    ]

execute positioned 928 167 908 if score story.chapter_2.ml.4 story.chapter_2 matches 17 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "stoy.characters.melisna",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc1NDg1MzY4MTAyMiwKICAicHJvZmlsZUlkIiA6ICJkNDAwODgyZmY3OGQ0ZGVhYjliMGNlMTc2YmQ1ZTQyMyIsCiAgInByb2ZpbGVOYW1lIiA6ICJQcmF4aWJldGwiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTQ2ODUyMzEyZTc1ZWZiY2I5OTY2YjgwNzRjYTI2OTc2Nzg1Y2MyMjBmNWM0ZDlhODFmZTVjZjYyNmUxMmEyNiIsCiAgICAgICJtZXRhZGF0YSIgOiB7CiAgICAgICAgIm1vZGVsIiA6ICJzbGltIgogICAgICB9CiAgICB9CiAgfQp9"}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.4.17","fallback": "但願一切能夠好起來","bold": false} \
    ]

execute positioned 928 167 908 if score story.chapter_2.ml.4 story.chapter_2 matches 17 run \
tellraw @a[distance=..16] \
    [ \
        {"text":"\n"},\
        {"translate": "story.end","fallback": "對話結束，再次點擊可重複查看對話內容","color":"gold"},\
        {"text":"\n"} \
    ]

execute if score story.chapter_2.ml.4 story.chapter_2 matches 17 run \
playsound minecraft:entity.player.levelup voice @a ~ ~1 ~ 0.5 1

execute \
    if score story.chapter_2.ml.4 story.chapter_2 matches 18 run \
schedule function story:chapter_2/ml/4/0 1t

data remove entity @s interaction

execute unless score story.chapter_2.ml.4 story.chapter_2 matches 1..18 run return 0

scoreboard players add story.chapter_2.ml.4 story.chapter_2 1
playsound minecraft:ui.button.click voice @a ~ ~1 ~ 0.5 1