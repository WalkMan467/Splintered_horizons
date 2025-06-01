title @a actionbar ""

function cutscene:safe_area/0/0

stopsound @a record minecraft:bgm.whitesand_fallen_kingdom


execute as @a at @s run function players:inventory/-store {bag:"overworld"}

clear @a

item replace entity @a armor.head with leather_helmet[tooltip_display={hide_tooltip:true},item_name='{"bold":true,"color":"yellow","italic":false,"text":"Camera"}',minecraft:item_model="camera",equippable={slot:"head",asset_id:"minecraft:air",camera_overlay:"minecraft:screen/cutscene"},enchantments={"minecraft:binding_curse":1},enchantment_glint_override=false] 1
