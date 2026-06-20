tag @a add cutscene.opening.end
tag @a add sys.hide_world_area.name

loot replace entity @a armor.head loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:leather_helmet",functions:[{function:"minecraft:set_components",components:{"minecraft:tooltip_display":{hide_tooltip:1b},"minecraft:item_name":{bold:1b,color:"yellow",italic:0b,text:"Camera"},"minecraft:item_model":"camera","minecraft:equippable":{slot:"head",equip_sound:"event.raid.horn",asset_id:"minecraft:air",camera_overlay:"minecraft:screen/fade_out"},"minecraft:enchantments":{binding_curse:1},"minecraft:enchantment_glint_override":0b}},{function:"minecraft:set_custom_data",tag:{camera:1b}}]}]}]}
item modify entity @a armor.head [{function:"minecraft:set_item",item:"minecraft:leather_helmet"},{function:"minecraft:set_components",components:{"minecraft:tooltip_display":{hide_tooltip:1b},"minecraft:item_name":{bold:true,color:"yellow",italic:false,text:"Camera"},"minecraft:item_model":"camera","minecraft:equippable":{slot:"head",equip_sound:"event.raid.horn",asset_id:"minecraft:air",camera_overlay:"minecraft:screen/fade_out"},"minecraft:enchantments":{binding_curse:1},"minecraft:enchantment_glint_override":false}}]

scoreboard players set .opening cutscene.story 4000
schedule clear cutscene:opening/main

execute \
    as @a run \
ride @s dismount

tp @a 38 64 11 180.0 0.0

weather clear
scoreboard objectives setdisplay sidebar player.death_count

execute \
    as @a run \
attribute @s movement_speed modifier add cutscene.1 -1 add_multiplied_total

execute \
    as @a run \
attribute @s jump_strength modifier add cutscene.1 -1 add_multiplied_total

execute \
    as @a run \
attribute @s attack_damage modifier add cutscene.1 -1 add_multiplied_total

execute \
    as @a run \
attribute @s entity_interaction_range modifier add cutscene.1 -1 add_multiplied_total

execute \
    as @a run \
attribute @s block_interaction_range modifier add cutscene.1 -1 add_multiplied_total

schedule clear cutscene:opening/end/0
schedule clear cutscene:opening/end/1
schedule clear cutscene:opening/end/2
schedule clear cutscene:opening/end/3

schedule function cutscene:opening/end/0 3s