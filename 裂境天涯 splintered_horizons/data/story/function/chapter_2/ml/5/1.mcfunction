# The entire storyline is executed through the scoreboard story(dummy) combined with the schedule command

execute positioned 1112 82 375 \
    if score story.chapter_2.ml.5 story.chapter_2 matches 1 \
    unless score #story:icon/story/chapter_2/mq/scebe_5 global.main matches 1 \
    as @n[sort=arbitrary,distance=..1,tag=aj.isokla.root,type=item_display] on passengers run \
data modify entity @s Glowing set value 0b

execute if score story.chapter_2.ml.5 story.chapter_2 matches 1 run \
scoreboard players set #story:icon/story/chapter_2/mq/scebe_5 global.main 1

execute positioned 1112 82 375 if score story.chapter_2.ml.5 story.chapter_2 matches 1 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "stoy.characters.melisna",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc1NDg1MzY4MTAyMiwKICAicHJvZmlsZUlkIiA6ICJkNDAwODgyZmY3OGQ0ZGVhYjliMGNlMTc2YmQ1ZTQyMyIsCiAgInByb2ZpbGVOYW1lIiA6ICJQcmF4aWJldGwiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTQ2ODUyMzEyZTc1ZWZiY2I5OTY2YjgwNzRjYTI2OTc2Nzg1Y2MyMjBmNWM0ZDlhODFmZTVjZjYyNmUxMmEyNiIsCiAgICAgICJtZXRhZGF0YSIgOiB7CiAgICAgICAgIm1vZGVsIiA6ICJzbGltIgogICAgICB9CiAgICB9CiAgfQp9"}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.5.1","fallback": "如今你所看到的那些混沌與雜亂不堪的地形都是名叫 空之支配者 - 伊萊克爾 使用的空間力量","bold": false} \
    ]

execute positioned 1112 82 375 if score story.chapter_2.ml.5 story.chapter_2 matches 2 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "stoy.characters.melisna",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc1NDg1MzY4MTAyMiwKICAicHJvZmlsZUlkIiA6ICJkNDAwODgyZmY3OGQ0ZGVhYjliMGNlMTc2YmQ1ZTQyMyIsCiAgInByb2ZpbGVOYW1lIiA6ICJQcmF4aWJldGwiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTQ2ODUyMzEyZTc1ZWZiY2I5OTY2YjgwNzRjYTI2OTc2Nzg1Y2MyMjBmNWM0ZDlhODFmZTVjZjYyNmUxMmEyNiIsCiAgICAgICJtZXRhZGF0YSIgOiB7CiAgICAgICAgIm1vZGVsIiA6ICJzbGltIgogICAgICB9CiAgICB9CiAgfQp9"}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.5.2","fallback": "也是來自賽琳娜舊世界的最終敵人","bold": false} \
    ]

execute positioned 1112 82 375 if score story.chapter_2.ml.5 story.chapter_2 matches 3 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "stoy.characters.melisna",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc1NDg1MzY4MTAyMiwKICAicHJvZmlsZUlkIiA6ICJkNDAwODgyZmY3OGQ0ZGVhYjliMGNlMTc2YmQ1ZTQyMyIsCiAgInByb2ZpbGVOYW1lIiA6ICJQcmF4aWJldGwiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTQ2ODUyMzEyZTc1ZWZiY2I5OTY2YjgwNzRjYTI2OTc2Nzg1Y2MyMjBmNWM0ZDlhODFmZTVjZjYyNmUxMmEyNiIsCiAgICAgICJtZXRhZGF0YSIgOiB7CiAgICAgICAgIm1vZGVsIiA6ICJzbGltIgogICAgICB9CiAgICB9CiAgfQp9"}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.5.3","fallback": "擁有記憶之樹的部分權能","bold": false} \
    ]

execute positioned 1112 82 375 if score story.chapter_2.ml.5 story.chapter_2 matches 4 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "stoy.characters.melisna",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc1NDg1MzY4MTAyMiwKICAicHJvZmlsZUlkIiA6ICJkNDAwODgyZmY3OGQ0ZGVhYjliMGNlMTc2YmQ1ZTQyMyIsCiAgInByb2ZpbGVOYW1lIiA6ICJQcmF4aWJldGwiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTQ2ODUyMzEyZTc1ZWZiY2I5OTY2YjgwNzRjYTI2OTc2Nzg1Y2MyMjBmNWM0ZDlhODFmZTVjZjYyNmUxMmEyNiIsCiAgICAgICJtZXRhZGF0YSIgOiB7CiAgICAgICAgIm1vZGVsIiA6ICJzbGltIgogICAgICB9CiAgICB9CiAgfQp9"}]},"bold":false}, \
        {"text":" : ","color":"white"}, \
        {"translate": "story.chapter_2.ml.5.4","fallback": "能動用時間與空間的力量使空間重現崩塌與回溯","color":"gold","bold": true,"underlined":true} \
    ]

execute positioned 1112 82 375 if score story.chapter_2.ml.5 story.chapter_2 matches 5 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "stoy.characters.melisna",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc1NDg1MzY4MTAyMiwKICAicHJvZmlsZUlkIiA6ICJkNDAwODgyZmY3OGQ0ZGVhYjliMGNlMTc2YmQ1ZTQyMyIsCiAgInByb2ZpbGVOYW1lIiA6ICJQcmF4aWJldGwiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTQ2ODUyMzEyZTc1ZWZiY2I5OTY2YjgwNzRjYTI2OTc2Nzg1Y2MyMjBmNWM0ZDlhODFmZTVjZjYyNmUxMmEyNiIsCiAgICAgICJtZXRhZGF0YSIgOiB7CiAgICAgICAgIm1vZGVsIiA6ICJzbGltIgogICAgICB9CiAgICB9CiAgfQp9"}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.5.5","fallback": "所以必須時刻注意時間","color":"gold","bold": true,"underlined":true} \
    ]

execute positioned 1112 82 375 if score story.chapter_2.ml.5 story.chapter_2 matches 6 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "stoy.characters.melisna",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc1NDg1MzY4MTAyMiwKICAicHJvZmlsZUlkIiA6ICJkNDAwODgyZmY3OGQ0ZGVhYjliMGNlMTc2YmQ1ZTQyMyIsCiAgInByb2ZpbGVOYW1lIiA6ICJQcmF4aWJldGwiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTQ2ODUyMzEyZTc1ZWZiY2I5OTY2YjgwNzRjYTI2OTc2Nzg1Y2MyMjBmNWM0ZDlhODFmZTVjZjYyNmUxMmEyNiIsCiAgICAgICJtZXRhZGF0YSIgOiB7CiAgICAgICAgIm1vZGVsIiA6ICJzbGltIgogICAgICB9CiAgICB9CiAgfQp9"}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.5.6","fallback": "星 與 蘇菲亞 我們很想幫助你一臂之力","bold": false} \
    ]

execute positioned 1112 82 375 if score story.chapter_2.ml.5 story.chapter_2 matches 7 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "stoy.characters.melisna",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc1NDg1MzY4MTAyMiwKICAicHJvZmlsZUlkIiA6ICJkNDAwODgyZmY3OGQ0ZGVhYjliMGNlMTc2YmQ1ZTQyMyIsCiAgInByb2ZpbGVOYW1lIiA6ICJQcmF4aWJldGwiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTQ2ODUyMzEyZTc1ZWZiY2I5OTY2YjgwNzRjYTI2OTc2Nzg1Y2MyMjBmNWM0ZDlhODFmZTVjZjYyNmUxMmEyNiIsCiAgICAgICJtZXRhZGF0YSIgOiB7CiAgICAgICAgIm1vZGVsIiA6ICJzbGltIgogICAgICB9CiAgICB9CiAgfQp9"}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.5.7","fallback": "賽琳娜在附近感知到附近有異界之門的存在","bold": false} \
    ]

execute positioned 1112 82 375 if score story.chapter_2.ml.5 story.chapter_2 matches 8 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "stoy.characters.melisna",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc1NDg1MzY4MTAyMiwKICAicHJvZmlsZUlkIiA6ICJkNDAwODgyZmY3OGQ0ZGVhYjliMGNlMTc2YmQ1ZTQyMyIsCiAgInByb2ZpbGVOYW1lIiA6ICJQcmF4aWJldGwiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTQ2ODUyMzEyZTc1ZWZiY2I5OTY2YjgwNzRjYTI2OTc2Nzg1Y2MyMjBmNWM0ZDlhODFmZTVjZjYyNmUxMmEyNiIsCiAgICAgICJtZXRhZGF0YSIgOiB7CiAgICAgICAgIm1vZGVsIiA6ICJzbGltIgogICAgICB9CiAgICB9CiAgfQp9"}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.5.8","fallback": "門後世界即是伊索克拉講述的 黑夜王城：哈薩若爾","bold": false} \
    ]

execute positioned 1112 82 375 if score story.chapter_2.ml.5 story.chapter_2 matches 9 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "stoy.characters.melisna",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc1NDg1MzY4MTAyMiwKICAicHJvZmlsZUlkIiA6ICJkNDAwODgyZmY3OGQ0ZGVhYjliMGNlMTc2YmQ1ZTQyMyIsCiAgInByb2ZpbGVOYW1lIiA6ICJQcmF4aWJldGwiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTQ2ODUyMzEyZTc1ZWZiY2I5OTY2YjgwNzRjYTI2OTc2Nzg1Y2MyMjBmNWM0ZDlhODFmZTVjZjYyNmUxMmEyNiIsCiAgICAgICJtZXRhZGF0YSIgOiB7CiAgICAgICAgIm1vZGVsIiA6ICJzbGltIgogICAgICB9CiAgICB9CiAgfQp9"}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.5.9","fallback": "那是我們的故鄉","bold": false} \
    ]

execute positioned 1112 82 375 if score story.chapter_2.ml.5 story.chapter_2 matches 10 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "stoy.characters.melisna",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc1NDg1MzY4MTAyMiwKICAicHJvZmlsZUlkIiA6ICJkNDAwODgyZmY3OGQ0ZGVhYjliMGNlMTc2YmQ1ZTQyMyIsCiAgInByb2ZpbGVOYW1lIiA6ICJQcmF4aWJldGwiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTQ2ODUyMzEyZTc1ZWZiY2I5OTY2YjgwNzRjYTI2OTc2Nzg1Y2MyMjBmNWM0ZDlhODFmZTVjZjYyNmUxMmEyNiIsCiAgICAgICJtZXRhZGF0YSIgOiB7CiAgICAgICAgIm1vZGVsIiA6ICJzbGltIgogICAgICB9CiAgICB9CiAgfQp9"}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.5.10","fallback": "所以在前往哈薩爾的這段時間我們可能沒辦法幫你","bold": false} \
    ]

execute positioned 1112 82 375 if score story.chapter_2.ml.5 story.chapter_2 matches 11 run \
tellraw @a[distance=..16] \
    [ \
        {"translate": "stoy.characters.melisna",color:"white","bold":true}, \
        {"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTc1NDg1MzY4MTAyMiwKICAicHJvZmlsZUlkIiA6ICJkNDAwODgyZmY3OGQ0ZGVhYjliMGNlMTc2YmQ1ZTQyMyIsCiAgInByb2ZpbGVOYW1lIiA6ICJQcmF4aWJldGwiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTQ2ODUyMzEyZTc1ZWZiY2I5OTY2YjgwNzRjYTI2OTc2Nzg1Y2MyMjBmNWM0ZDlhODFmZTVjZjYyNmUxMmEyNiIsCiAgICAgICJtZXRhZGF0YSIgOiB7CiAgICAgICAgIm1vZGVsIiA6ICJzbGltIgogICAgICB9CiAgICB9CiAgfQp9"}]},"bold":false}, \
        {"text":" : ","color":"white","bold": false}, \
        {"translate": "story.chapter_2.ml.5.11","fallback": "願我與哥哥祝福你旅途順利","bold": false} \
    ]

execute positioned 1112 82 375 if score story.chapter_2.ml.5 story.chapter_2 matches 11 run \
tellraw @a[distance=..16] \
    [ \
        {"text":"\n"},\
        {"translate": "story.end","fallback": "對話結束，再次點擊可重複查看對話內容","color":"gold"},\
        {"text":"\n"} \
    ]

execute if score story.chapter_2.ml.5 story.chapter_2 matches 11 run \
playsound minecraft:entity.player.levelup voice @a ~ ~1 ~ 0.5 1

execute \
    if score story.chapter_2.ml.5 story.chapter_2 matches 12 run \
schedule function story:chapter_2/ml/5/0 1t

data remove entity @s interaction

execute unless score story.chapter_2.ml.5 story.chapter_2 matches 1..12 run return 0

scoreboard players add story.chapter_2.ml.5 story.chapter_2 1
playsound minecraft:ui.button.click voice @a ~ ~1 ~ 0.5 1