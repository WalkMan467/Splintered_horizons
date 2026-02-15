scoreboard players set cutscene.opening.title cutscene.opening.title.timer 0

gamemode survival @a
loot replace entity @a armor.head loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:leather_helmet",functions:[{function:"minecraft:set_components",components:{"minecraft:tooltip_display":{hide_tooltip:1b},"minecraft:item_name":{bold:1b,color:"yellow",italic:0b,text:"Camera"},"minecraft:item_model":"camera","minecraft:equippable":{slot:"head",equip_sound:"event.raid.horn",asset_id:"minecraft:air",camera_overlay:"minecraft:screen/fade_out"},"minecraft:enchantments":{binding_curse:1},"minecraft:enchantment_glint_override":0b}},{function:"minecraft:set_custom_data",tag:{camera:1b}}]}]}]}

stopsound @a voice event.raid.horn

schedule function cutscene:opening/0/title/main 3t

execute \
    in minecraft:overworld run \
summon area_effect_cloud 9999 95 10070 {Rotation:[180.0f,0.0f],custom_particle:{type:"block",block_state:"minecraft:air"},UUID:[I;211,4,1,1],Radius:0f,Duration:800,Tags:["cutscene.opening.0.title"]}

title @a actionbar ""

scoreboard objectives setdisplay sidebar


execute \
    as @a at @s run \
playsound minecraft:block.fire.ambient voice @s ~ ~1 ~ 1 0.5

schedule function cutscene:opening/use 40s