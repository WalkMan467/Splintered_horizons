# The entire storyline is executed through the scoreboard story(dummy) combined with the schedule command


execute \
    positioned 867 148 949 \
    if score story.chapter_2.ml.3 story.chapter_2 matches 1 \
    unless score #story:icon/story/chapter_2/mq/scebe_3 global.main matches 1 \
    as @n[type=item_display,tag=aj.sophia.root,distance=..3] \
    on passengers run \
data modify entity @s Glowing set value 0b

execute \
    if score story.chapter_2.ml.3 story.chapter_2 matches 1 run \
scoreboard players set #story:icon/story/chapter_2/mq/scebe_3 global.main 1


execute \
    positioned 867 148 949 \
    if score story.chapter_2.ml.3 story.chapter_2 matches 1 run \
tellraw @a[distance=..16] [{"translate": "stoy.characters.sophia",color:"white","bold":true},{"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTczODMyNzM1NjE5OCwKICAicHJvZmlsZUlkIiA6ICJjNDIzYjQwMWZiOGU0ODc3YjMzMmVmMjhiZDdlZGZmZCIsCiAgInByb2ZpbGVOYW1lIiA6ICJSZWFjdGlvbkJyaW5lWVQiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWU2YzhhOWE1OWNkYjY5YzJiM2E3NjAxYWJhODJmNjMwOWQ3ZGQ0NWM0ZTg3OGE5YzQ2M2YwNDkxNDllYzI1IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}]},"bold":false},{"text":" : ","color":"white","bold": false},{"translate": "story.chapter_2.ml.3.1","fallback": "［蘇菲亞］看來我們越來越接近魔劍的位置了","bold": false}]

execute \
    positioned 867 148 949 \
    if score story.chapter_2.ml.3 story.chapter_2 matches 2 run \
tellraw @a[distance=..16] [{"translate": "stoy.characters.sophia",color:"white","bold":true},{"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTczODMyNzM1NjE5OCwKICAicHJvZmlsZUlkIiA6ICJjNDIzYjQwMWZiOGU0ODc3YjMzMmVmMjhiZDdlZGZmZCIsCiAgInByb2ZpbGVOYW1lIiA6ICJSZWFjdGlvbkJyaW5lWVQiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWU2YzhhOWE1OWNkYjY5YzJiM2E3NjAxYWJhODJmNjMwOWQ3ZGQ0NWM0ZTg3OGE5YzQ2M2YwNDkxNDllYzI1IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}]},"bold":false},{"text":" : ","color":"white","bold": false},{"translate": "story.chapter_2.ml.3.2","fallback": "［蘇菲亞］昔日的櫻花之城，這裡曾經是我與萊卡的故鄉","bold": false}]

execute \
    positioned 867 148 949 \
    if score story.chapter_2.ml.3 story.chapter_2 matches 3 run \
tellraw @a[distance=..16] [{"translate": "stoy.characters.sophia",color:"white","bold":true},{"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTczODMyNzM1NjE5OCwKICAicHJvZmlsZUlkIiA6ICJjNDIzYjQwMWZiOGU0ODc3YjMzMmVmMjhiZDdlZGZmZCIsCiAgInByb2ZpbGVOYW1lIiA6ICJSZWFjdGlvbkJyaW5lWVQiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWU2YzhhOWE1OWNkYjY5YzJiM2E3NjAxYWJhODJmNjMwOWQ3ZGQ0NWM0ZTg3OGE5YzQ2M2YwNDkxNDllYzI1IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}]},"bold":false},{"text":" : ","color":"white","bold": false},{"translate": "story.chapter_2.ml.3.3","fallback": "［蘇菲亞］也是我們踏上旅途的開始","bold": false}]

execute \
    positioned 867 148 949 \
    if score story.chapter_2.ml.3 story.chapter_2 matches 4 run \
tellraw @a[distance=..16] [{"translate": "stoy.characters.sophia",color:"white","bold":true},{"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTczODMyNzM1NjE5OCwKICAicHJvZmlsZUlkIiA6ICJjNDIzYjQwMWZiOGU0ODc3YjMzMmVmMjhiZDdlZGZmZCIsCiAgInByb2ZpbGVOYW1lIiA6ICJSZWFjdGlvbkJyaW5lWVQiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWU2YzhhOWE1OWNkYjY5YzJiM2E3NjAxYWJhODJmNjMwOWQ3ZGQ0NWM0ZTg3OGE5YzQ2M2YwNDkxNDllYzI1IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}]},"bold":false},{"text":" : ","color":"white","bold": false},{"translate": "story.chapter_2.ml.3.4","fallback": "［蘇菲亞］如同萊卡所說的","bold": false}]

execute \
    positioned 867 148 949 \
    if score story.chapter_2.ml.3 story.chapter_2 matches 5 run \
tellraw @a[distance=..16] [{"translate": "stoy.characters.sophia",color:"white","bold":true},{"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTczODMyNzM1NjE5OCwKICAicHJvZmlsZUlkIiA6ICJjNDIzYjQwMWZiOGU0ODc3YjMzMmVmMjhiZDdlZGZmZCIsCiAgInByb2ZpbGVOYW1lIiA6ICJSZWFjdGlvbkJyaW5lWVQiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWU2YzhhOWE1OWNkYjY5YzJiM2E3NjAxYWJhODJmNjMwOWQ3ZGQ0NWM0ZTg3OGE5YzQ2M2YwNDkxNDllYzI1IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}]},"bold":false},{"text":" : ","color":"white","bold": false},{"translate": "story.chapter_2.ml.3.5","fallback": "［蘇菲亞］在我們世界裡有著六大天啟","bold": false}]

execute \
    positioned 867 148 949 \
    if score story.chapter_2.ml.3 story.chapter_2 matches 6 run \
tellraw @a[distance=..16] [{"translate": "stoy.characters.sophia",color:"white","bold":true},{"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTczODMyNzM1NjE5OCwKICAicHJvZmlsZUlkIiA6ICJjNDIzYjQwMWZiOGU0ODc3YjMzMmVmMjhiZDdlZGZmZCIsCiAgInByb2ZpbGVOYW1lIiA6ICJSZWFjdGlvbkJyaW5lWVQiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWU2YzhhOWE1OWNkYjY5YzJiM2E3NjAxYWJhODJmNjMwOWQ3ZGQ0NWM0ZTg3OGE5YzQ2M2YwNDkxNDllYzI1IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}]},"bold":false},{"text":" : ","color":"white","bold": false},{"translate": "story.chapter_2.ml.3.6","fallback": "［蘇菲亞］與你世界的執政官一樣，在我們的世界成為「天啟」","bold": false}]

execute \
    positioned 867 148 949 \
    if score story.chapter_2.ml.3 story.chapter_2 matches 7 run \
tellraw @a[distance=..16] [{"translate": "stoy.characters.sophia",color:"white","bold":true},{"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTczODMyNzM1NjE5OCwKICAicHJvZmlsZUlkIiA6ICJjNDIzYjQwMWZiOGU0ODc3YjMzMmVmMjhiZDdlZGZmZCIsCiAgInByb2ZpbGVOYW1lIiA6ICJSZWFjdGlvbkJyaW5lWVQiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWU2YzhhOWE1OWNkYjY5YzJiM2E3NjAxYWJhODJmNjMwOWQ3ZGQ0NWM0ZTg3OGE5YzQ2M2YwNDkxNDllYzI1IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}]},"bold":false},{"text":" : ","color":"white","bold": false},{"translate": "story.chapter_2.ml.3.7","fallback": "［蘇菲亞］作為天啟，我們背負著沉重的命運","bold": false}]

execute \
    positioned 867 148 949 \
    if score story.chapter_2.ml.3 story.chapter_2 matches 8 run \
tellraw @a[distance=..16] [{"translate": "stoy.characters.sophia",color:"white","bold":true},{"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTczODMyNzM1NjE5OCwKICAicHJvZmlsZUlkIiA6ICJjNDIzYjQwMWZiOGU0ODc3YjMzMmVmMjhiZDdlZGZmZCIsCiAgInByb2ZpbGVOYW1lIiA6ICJSZWFjdGlvbkJyaW5lWVQiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWU2YzhhOWE1OWNkYjY5YzJiM2E3NjAxYWJhODJmNjMwOWQ3ZGQ0NWM0ZTg3OGE5YzQ2M2YwNDkxNDllYzI1IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}]},"bold":false},{"text":" : ","color":"white","bold": false},{"translate": "story.chapter_2.ml.3.8","fallback": "［蘇菲亞］在以前，萊卡總是問我的夢想是什麼","bold": false}]

execute \
    positioned 867 148 949 \
    if score story.chapter_2.ml.3 story.chapter_2 matches 9 run \
tellraw @a[distance=..16] [{"translate": "stoy.characters.sophia",color:"white","bold":true},{"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTczODMyNzM1NjE5OCwKICAicHJvZmlsZUlkIiA6ICJjNDIzYjQwMWZiOGU0ODc3YjMzMmVmMjhiZDdlZGZmZCIsCiAgInByb2ZpbGVOYW1lIiA6ICJSZWFjdGlvbkJyaW5lWVQiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWU2YzhhOWE1OWNkYjY5YzJiM2E3NjAxYWJhODJmNjMwOWQ3ZGQ0NWM0ZTg3OGE5YzQ2M2YwNDkxNDllYzI1IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}]},"bold":false},{"text":" : ","color":"white","bold": false},{"translate": "story.chapter_2.ml.3.9","fallback": "［蘇菲亞］與你一樣，以前的我總是對夢想感到迷茫","bold": false}]

execute \
    positioned 867 148 949 \
    if score story.chapter_2.ml.3 story.chapter_2 matches 10 run \
tellraw @a[distance=..16] [{"translate": "stoy.characters.sophia",color:"white","bold":true},{"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTczODMyNzM1NjE5OCwKICAicHJvZmlsZUlkIiA6ICJjNDIzYjQwMWZiOGU0ODc3YjMzMmVmMjhiZDdlZGZmZCIsCiAgInByb2ZpbGVOYW1lIiA6ICJSZWFjdGlvbkJyaW5lWVQiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWU2YzhhOWE1OWNkYjY5YzJiM2E3NjAxYWJhODJmNjMwOWQ3ZGQ0NWM0ZTg3OGE5YzQ2M2YwNDkxNDllYzI1IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}]},"bold":false},{"text":" : ","color":"white","bold": false},{"translate": "story.chapter_2.ml.3.10","fallback": "［蘇菲亞］但在每次與深淵怪物交戰過程中無辜的人們","bold": false}]

execute \
    positioned 867 148 949 \
    if score story.chapter_2.ml.3 story.chapter_2 matches 11 run \
tellraw @a[distance=..16] [{"translate": "stoy.characters.sophia",color:"white","bold":true},{"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTczODMyNzM1NjE5OCwKICAicHJvZmlsZUlkIiA6ICJjNDIzYjQwMWZiOGU0ODc3YjMzMmVmMjhiZDdlZGZmZCIsCiAgInByb2ZpbGVOYW1lIiA6ICJSZWFjdGlvbkJyaW5lWVQiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWU2YzhhOWE1OWNkYjY5YzJiM2E3NjAxYWJhODJmNjMwOWQ3ZGQ0NWM0ZTg3OGE5YzQ2M2YwNDkxNDllYzI1IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}]},"bold":false},{"text":" : ","color":"white","bold": false},{"translate": "story.chapter_2.ml.3.11","fallback": "［蘇菲亞］與最在乎我的家人與朋友都會逝去","bold": false}]

execute \
    positioned 867 148 949 \
    if score story.chapter_2.ml.3 story.chapter_2 matches 12 run \
tellraw @a[distance=..16] [{"translate": "stoy.characters.sophia",color:"white","bold":true},{"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTczODMyNzM1NjE5OCwKICAicHJvZmlsZUlkIiA6ICJjNDIzYjQwMWZiOGU0ODc3YjMzMmVmMjhiZDdlZGZmZCIsCiAgInByb2ZpbGVOYW1lIiA6ICJSZWFjdGlvbkJyaW5lWVQiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWU2YzhhOWE1OWNkYjY5YzJiM2E3NjAxYWJhODJmNjMwOWQ3ZGQ0NWM0ZTg3OGE5YzQ2M2YwNDkxNDllYzI1IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}]},"bold":false},{"text":" : ","color":"white","bold": false},{"translate": "story.chapter_2.ml.3.12","fallback": "［蘇菲亞］我才瞭解...救世主的命運是如此沉重的...","bold": false}]

execute \
    positioned 867 148 949 \
    if score story.chapter_2.ml.3 story.chapter_2 matches 13 run \
tellraw @a[distance=..16] [{"translate": "stoy.characters.sophia",color:"white","bold":true},{"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTczODMyNzM1NjE5OCwKICAicHJvZmlsZUlkIiA6ICJjNDIzYjQwMWZiOGU0ODc3YjMzMmVmMjhiZDdlZGZmZCIsCiAgInByb2ZpbGVOYW1lIiA6ICJSZWFjdGlvbkJyaW5lWVQiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWU2YzhhOWE1OWNkYjY5YzJiM2E3NjAxYWJhODJmNjMwOWQ3ZGQ0NWM0ZTg3OGE5YzQ2M2YwNDkxNDllYzI1IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}]},"bold":false},{"text":" : ","color":"white","bold": false},{"translate": "story.chapter_2.ml.3.13","fallback": "［蘇菲亞］願世界能夠不再有深淵","bold": false}]

execute \
    positioned 867 148 949 \
    if score story.chapter_2.ml.3 story.chapter_2 matches 14 run \
tellraw @a[distance=..16] [{"translate": "stoy.characters.sophia",color:"white","bold":true},{"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTczODMyNzM1NjE5OCwKICAicHJvZmlsZUlkIiA6ICJjNDIzYjQwMWZiOGU0ODc3YjMzMmVmMjhiZDdlZGZmZCIsCiAgInByb2ZpbGVOYW1lIiA6ICJSZWFjdGlvbkJyaW5lWVQiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWU2YzhhOWE1OWNkYjY5YzJiM2E3NjAxYWJhODJmNjMwOWQ3ZGQ0NWM0ZTg3OGE5YzQ2M2YwNDkxNDllYzI1IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}]},"bold":false},{"text":" : ","color":"white","bold": false},{"translate": "story.chapter_2.ml.3.14","fallback": "［蘇菲亞］我想守護著你、守護著我無法守護的人","bold": false}]

execute \
    positioned 867 148 949 \
    if score story.chapter_2.ml.3 story.chapter_2 matches 15 run \
tellraw @a[distance=..16] [{"translate": "stoy.characters.sophia",color:"white","bold":true},{"player":{"properties":[{"name":"textures","value":"ewogICJ0aW1lc3RhbXAiIDogMTczODMyNzM1NjE5OCwKICAicHJvZmlsZUlkIiA6ICJjNDIzYjQwMWZiOGU0ODc3YjMzMmVmMjhiZDdlZGZmZCIsCiAgInByb2ZpbGVOYW1lIiA6ICJSZWFjdGlvbkJyaW5lWVQiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWU2YzhhOWE1OWNkYjY5YzJiM2E3NjAxYWJhODJmNjMwOWQ3ZGQ0NWM0ZTg3OGE5YzQ2M2YwNDkxNDllYzI1IiwKICAgICAgIm1ldGFkYXRhIiA6IHsKICAgICAgICAibW9kZWwiIDogInNsaW0iCiAgICAgIH0KICAgIH0KICB9Cn0="}]},"bold":false},{"text":" : ","color":"white","bold": false},{"translate": "story.chapter_2.ml.3.15","fallback": "［蘇菲亞］這就是我的夢想","bold": false}]


execute \
    positioned 867 148 949 \
    if score story.chapter_2.ml.3 story.chapter_2 matches 15 run \
tellraw @a[distance=..16] [{"translate": "story.end","fallback": "對話結束，再次點擊可重複查看對話內容","color":"gold"},{"text":"\n"}]

execute \
    positioned 867 148 949 \
    if score story.chapter_2.ml.3 story.chapter_2 matches 15 run \
playsound minecraft:entity.player.levelup voice @a ~ ~1 ~ 0.5 1


execute \
    if score story.chapter_2.ml.3 story.chapter_2 matches 16 run \
schedule function story:chapter_2/ml/3/0 1t

data remove entity @s interaction


execute \
    unless score story.chapter_2.ml.3 story.chapter_2 matches 1..16 run \
return 0

scoreboard players add story.chapter_2.ml.3 story.chapter_2 1
playsound minecraft:ui.button.click voice @a ~ ~1 ~ 0.5 1


execute \
    as @n[distance=..1,tag=aj.sophia.root,type=item_display] at @s run \
function animated_java:sophia/animations/chat1/stop

execute \
    as @n[distance=..1,tag=aj.sophia.root,type=item_display] at @s run \
function animated_java:sophia/animations/chat1/tween {to_frame: 5, duration: 5}