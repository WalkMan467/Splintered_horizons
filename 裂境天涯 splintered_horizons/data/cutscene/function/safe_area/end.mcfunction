scoreboard players set .safe_area cutscene.story -1

kill 00000079-0000-000c-0000-001500000015
kill 000000de-0000-000b-0000-001500000015
kill 00000015-0000-0016-0000-001500000015

forceload remove 762 931 758 935

execute positioned 758 143 935 as @n[type=item_display,distance=..10,tag=aj.rainy_night.root] run function animated_java:rainy_night/remove/this

tp @a 760 145 969 0 0

title @a times 0 20 60
title @a title {"text":"\uE000","font":"minecraft:screen"}

gamemode survival @a

clear @a

execute as @a at @s run function players:inventory/-return {bag:"overworld"}

function animated_java:amysis/remove/all

schedule clear cutscene:safe_area/main