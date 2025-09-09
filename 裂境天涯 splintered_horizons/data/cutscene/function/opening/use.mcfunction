time set midnight
weather clear

execute in minecraft:overworld run forceload add 42 11 42 11

function cutscene:opening/remove_camera

function animated_java:aska/remove/all
function animated_java:oceanid/remove/all

weather clear

scoreboard objectives setdisplay sidebar

title @a title ""
title @a times 20 20 20
title @a actionbar ""


schedule clear cutscene:opening/0/0
schedule clear cutscene:opening/0/1
schedule clear cutscene:opening/0/use
schedule clear cutscene:opening/1/use
schedule clear cutscene:opening/1/guide
schedule clear cutscene:opening/1/0
schedule clear cutscene:opening/1/1
schedule clear cutscene:opening/1/2
schedule clear cutscene:opening/1/3
schedule clear cutscene:opening/2/0
schedule clear cutscene:opening/3/0
schedule clear cutscene:opening/4/0
schedule clear cutscene:opening/5/0
schedule clear cutscene:opening/6/0
schedule clear cutscene:opening/7/0
schedule clear cutscene:opening/end/use
schedule clear cutscene:opening/2/use
schedule clear cutscene:opening/3/use
schedule clear cutscene:opening/4/use
schedule clear cutscene:opening/5/use
schedule clear cutscene:opening/6/use
schedule clear cutscene:opening/7/use
schedule clear cutscene:opening/end/use

schedule clear cutscene:opening/main

execute as @a at @s run function cutscene:opening/0/use

item replace entity @a armor.head with leather_helmet[tooltip_display={hide_tooltip:true},item_name='{"bold":true,"color":"yellow","italic":false,"text":"Camera"}',minecraft:item_model="camera",equippable={slot:"head",equip_sound:"event.raid.horn",asset_id:"minecraft:air",camera_overlay:"minecraft:screen/cutscene"},enchantments={"minecraft:binding_curse":1},enchantment_glint_override=false] 1

stopsound @a voice event.raid.horn

tag @a remove cutscene.opening