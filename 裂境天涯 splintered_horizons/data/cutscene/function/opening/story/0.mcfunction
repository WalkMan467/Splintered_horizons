# The entire storyline is executed through the scoreboard story(dummy) combined with the schedule command

# ========================================= #



execute \
    if score .opening cutscene.story matches 120..240 run \
title @a actionbar [{"translate":"cutscene.opening.story.1"}]


execute \
    if score .opening cutscene.story matches 220 run \
title @a times 20 20 20

execute \
    if score .opening cutscene.story matches 220 run \
title @a title {"translate":"\uE000","font":"minecraft:screen"}


execute \
    if score .opening cutscene.story matches 240..360 run \
title @a actionbar [{"translate":"cutscene.opening.story.2"}]


execute \
    if score .opening cutscene.story matches 460 run \
title @a times 20 20 20

execute \
    if score .opening cutscene.story matches 460 run \
title @a title {"translate":"\uE000","font":"minecraft:screen"}


execute \
    if score .opening cutscene.story matches 360..480 run \
title @a actionbar {"translate":"cutscene.opening.story.3"}


execute \
    if score .opening cutscene.story matches 480..600 run \
title @a actionbar {"translate":"cutscene.opening.story.4"}


execute \
    if score .opening cutscene.story matches 600..720 run \
title @a actionbar {"translate":"cutscene.opening.story.5"}


execute \
    if score .opening cutscene.story matches 720..840 run \
title @a actionbar {"translate":"cutscene.opening.story.6"}


execute \
    if score .opening cutscene.story matches 840..960 run \
title @a actionbar {"translate":"cutscene.opening.story.7"}


execute \
    if score .opening cutscene.story matches 960..1080 run \
title @a actionbar {"translate":"cutscene.opening.story.8"}


execute \
    if score .opening cutscene.story matches 1080..1120 run \
scoreboard players set .opening cutscene.story 1120


execute \
    if score .opening cutscene.story matches 1120..1140 run \
title @a actionbar {"translate":"cutscene.opening.story.9"}


execute \
    if score .opening cutscene.story matches 1240..1360 run \
title @a actionbar {"translate":"cutscene.opening.story.10"}


execute \
    if score .opening cutscene.story matches 1360..1480 run \
title @a actionbar {"translate":"cutscene.opening.story.11"}


execute \
    if score .opening cutscene.story matches 1480..1600 run \
title @a actionbar {"translate":"cutscene.opening.story.12"}


execute \
    if score .opening cutscene.story matches 1600..1720 run \
title @a actionbar {"translate":"cutscene.opening.story.13"}


execute \
    if score .opening cutscene.story matches 1720..1760 run \
title @a actionbar {"translate":"cutscene.opening.story.14"}


execute \
    if score .opening cutscene.story matches 1760..1880 run \
title @a actionbar {"translate":"cutscene.opening.story.15"}


execute \
    if score .opening cutscene.story matches 1880..2000 run \
title @a actionbar {"translate":"cutscene.opening.story.16"}


execute \
    if score .opening cutscene.story matches 2000..2120 run \
title @a actionbar {"translate":"cutscene.opening.story.17"}


execute \
    if score .opening cutscene.story matches 2140..2240 run \
title @a actionbar {"translate":"cutscene.opening.story.18"}


execute \
    if score .opening cutscene.story matches 2240..2360 run \
title @a actionbar {"translate":"cutscene.opening.story.19"}


execute \
    if score .opening cutscene.story matches 2360..2480 run \
title @a actionbar {"translate":"cutscene.opening.story.20"}


execute \
    if score .opening cutscene.story matches 2600 run \
title @a times 40 20 0

execute \
    if score .opening cutscene.story matches 2600 run \
title @a title {"translate":"\uE000","font":"minecraft:screen"}

execute \
    if score .opening cutscene.story matches 2650 run \
function cutscene:opening/6/1

execute \
    if score .opening cutscene.story matches 2628 run \
function cutscene:opening/6/1_1

execute \
    if score .opening cutscene.story matches 2659 \
    as @n[tag=aj.aska.root,distance=0..,type=item_display] run \
function animated_java:aska/animations/pause_all

execute \
    if score .opening cutscene.story matches 2659 \
    as @n[tag=aj.aska.root,distance=0..,type=item_display] run \
function animated_java:aska/animations/death/play

execute \
    if score .opening cutscene.story matches 2780 run \
item modify entity @a armor.head [{function:"minecraft:set_item",item:"minecraft:leather_helmet"},{function:"minecraft:set_components",components:{"minecraft:tooltip_display":{hide_tooltip:1},"minecraft:item_name":{bold:true,color:"yellow",italic:false,text:"Camera"},"minecraft:item_model":"camera","minecraft:equippable":{slot:"head",equip_sound:"event.raid.horn",asset_id:"minecraft:air",camera_overlay:"minecraft:screen/fade_out"},"minecraft:enchantments":{binding_curse:1},"minecraft:enchantment_glint_override":false}}]

execute \
    if score .opening cutscene.story matches 2780 run \
title @a actionbar ""

execute \
    if score .opening cutscene.story matches 2780 run \
title @a title {"translate":"cutscene.opening.story.26","fallback": "多重時空交錯的新世界中"}

execute \
    if score .opening cutscene.story matches 2780 run \
title @a subtitle {"translate":"cutscene.opening.story.27","fallback": "一切都將重新開始"}

execute \
    if score .opening cutscene.story matches 2780 run \
title @a times 0 60 0

execute \
    if score .opening cutscene.story matches 2840 run \
item modify entity @a armor.head [{function:"minecraft:set_item",item:"minecraft:leather_helmet"},{function:"minecraft:set_components",components:{"minecraft:tooltip_display":{hide_tooltip:1},"minecraft:item_name":{bold:true,color:"yellow",italic:false,text:"Camera"},"minecraft:item_model":"camera","minecraft:equippable":{slot:"head",equip_sound:"event.raid.horn",asset_id:"minecraft:air",camera_overlay:"minecraft:screen/cutscene"},"minecraft:enchantments":{binding_curse:1},"minecraft:enchantment_glint_override":false}}]

# score +1

execute \
    if score .opening cutscene.story matches 0..4000 run \
scoreboard players add .opening cutscene.story 1


execute \
    as @a run \
function item:type/tp_book/rc/cancel

# loop

execute \
    if score .opening cutscene.story matches 0..4000 run \
schedule function cutscene:opening/story/0 1t