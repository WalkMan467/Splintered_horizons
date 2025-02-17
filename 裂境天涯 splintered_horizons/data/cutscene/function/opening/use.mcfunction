time set midnight
weather clear

execute in minecraft:overworld run normalload add 42 11 42 11

function animated_java:aska/remove/all
function animated_java:oceanid/remove/all

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

function cutscene:opening/0/use
title @a actionbar ""

item replace entity @a armor.head with leather_helmet[equippable={slot:"head",asset_id:"minecraft:air",camera_overlay:"minecraft:screen/cutscene"},enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:false},enchantment_glint_override=false] 1

tag @a remove cutscene.opening