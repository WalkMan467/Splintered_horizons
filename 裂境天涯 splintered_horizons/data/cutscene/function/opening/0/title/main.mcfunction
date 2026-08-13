
execute \
    if score cutscene.opening.title cutscene.opening.title.timer matches 630.. run \
return 0

scoreboard players add cutscene.opening.title cutscene.opening.title.timer 1
title @a actionbar ""


execute \
    as @a run \
attribute @s waypoint_receive_range modifier add cutscene -1024 add_value

execute \
    as @a run \
attribute @s waypoint_receive_range modifier add cutscene.1 -1024 add_multiplied_base

execute \
    as @a run \
attribute @s waypoint_transmit_range modifier add cutscene -1024 add_value

execute \
    as @a run \
attribute @s waypoint_transmit_range modifier add cutscene.1 -1024 add_multiplied_base

execute \
    if score cutscene.opening.title cutscene.opening.title.timer matches 1 run \
title @a title {"translate": "cutscene.opening.title.1","color": "white","bold": false}

execute \
    if score cutscene.opening.title cutscene.opening.title.timer matches 1 run \
title @a subtitle ""

execute \
    if score cutscene.opening.title cutscene.opening.title.timer matches 1 run \
title @a times 20 80 20


execute \
    if score cutscene.opening.title cutscene.opening.title.timer matches 140 run \
title @a title {"translate": "cutscene.opening.title.2","color": "white","bold": false}

execute \
    if score cutscene.opening.title cutscene.opening.title.timer matches 140 run \
title @a subtitle ""

execute \
    if score cutscene.opening.title cutscene.opening.title.timer matches 140 run \
title @a times 20 140 20

execute \
    if score cutscene.opening.title cutscene.opening.title.timer matches 210 run \
title @a subtitle {"translate": "cutscene.opening.title.3","color": "white","bold": false}


execute \
    if score cutscene.opening.title cutscene.opening.title.timer matches 350 run \
title @a title {"translate": "cutscene.opening.title.4","color": "white","bold": false}

execute \
    if score cutscene.opening.title cutscene.opening.title.timer matches 350 run \
title @a subtitle ""

execute \
    if score cutscene.opening.title cutscene.opening.title.timer matches 350 run \
title @a times 20 140 20


execute \
    if score cutscene.opening.title cutscene.opening.title.timer matches 420 run \
title @a subtitle {"translate": "cutscene.opening.title.5","color": "white","bold": false}


execute \
    if score cutscene.opening.title cutscene.opening.title.timer matches 560 run \
title @a title {"translate": "cutscene.opening.title.6","color": "white","bold": false}

execute \
    if score cutscene.opening.title cutscene.opening.title.timer matches 560 run \
title @a subtitle ""

execute \
    if score cutscene.opening.title cutscene.opening.title.timer matches 560 run \
title @a times 20 140 20


execute \
    if score cutscene.opening.title cutscene.opening.title.timer matches 630 run \
title @a subtitle {"translate": "cutscene.opening.title.7","color": "white","bold": false}

gamemode spectator @a

execute \
    as @a[gamemode=spectator] \
    unless items entity @s armor.head leather_helmet[custom_data={camera:1b}] run \
loot replace entity @s armor.head loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:leather_helmet",modifier:[{type:"minecraft:set_components",components:{"minecraft:tooltip_display":{hide_tooltip:1b},"minecraft:item_name":{bold:1b,color:"yellow",italic:0b,text:"Camera"},"minecraft:item_model":"camera","minecraft:equippable":{slot:"head",equip_sound:"event.raid.horn",asset_id:"minecraft:air",camera_overlay:"minecraft:screen/fade_out"},"minecraft:enchantments":{binding_curse:1},"minecraft:enchantment_glint_override":0b}},{type:"minecraft:set_custom_data",tag:{camera:1b}}]}]}]}


execute \
    as @a[gamemode=spectator] at @s run \
spectate 000000d3-0000-0004-0000-000100000001

execute \
    if score cutscene.opening.title cutscene.opening.title.timer matches ..631 run \
schedule function cutscene:opening/0/title/main 1t