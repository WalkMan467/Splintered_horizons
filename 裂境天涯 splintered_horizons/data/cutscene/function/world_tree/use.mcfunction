gamemode spectator @a
title @a times 0 20 20
title @a title {"translate":"\uE000","color":"white","font":"minecraft:screen"}
title @a subtitle ""
title @a actionbar ""

scoreboard players set #cutscene global.main 1
scoreboard players set #cutscene.world_tree global.main 1

scoreboard players set #cutscene.world_tree.timeline.end global.main 700

execute \
    store result score #send_command_feedback main.gamerule run \
gamerule send_command_feedback

gamerule send_command_feedback false
gamerule spawner_blocks_work false
gamerule locator_bar false

tag @a add sys.hide_world_area.name
tag @a add cutscene.player_leave.detect

function cutscene:world_tree/stop
function cutscene:world_tree/0/use
schedule function cutscene:world_tree/camera/main 1t
schedule function cutscene:world_tree/story/0 1t

item replace entity @a armor.head with leather_helmet[tooltip_display={hide_tooltip:true},item_name='{"bold":true,"color":"yellow","italic":false,"text":"Camera"}',minecraft:item_model="camera",equippable={slot:"head",equip_sound:"event.raid.horn",asset_id:"minecraft:air",camera_overlay:"minecraft:screen/cutscene"},enchantments={"minecraft:binding_curse":1},enchantment_glint_override=false] 1