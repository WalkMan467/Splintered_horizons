scoreboard players set cutscene.opening.title cutscene.opening.title.timer 0

item replace entity @a armor.head with leather_helmet[tooltip_display={hide_tooltip:true},item_name={"bold":true,"color":"yellow","italic":false,"text":"Camera"},item_model="camera",equippable={slot:"head",equip_sound:"event.raid.horn",asset_id:"minecraft:air",camera_overlay:"minecraft:screen/fade_out"},enchantments={"binding_curse":1},enchantment_glint_override=false] 1

stopsound @a voice event.raid.horn

schedule function cutscene:opening/0/title/main 1t

summon area_effect_cloud 9999 95 10070 {custom_particle:{type:"block",block_state:"minecraft:air"},UUID:[I;211,4,1,1],Radius:0f,Duration:360,Tags:["cutscene.opening.0.title"]}

gamemode spectator @a

execute \
    as @a[gamemode=spectator] run \
spectate 000000d3-0000-0004-0000-000100000001
title @a actionbar ""

scoreboard objectives setdisplay sidebar


execute \
    as @a at @s run \
playsound minecraft:block.fire.ambient voice @s ~ ~1 ~ 1 0.5

schedule function cutscene:opening/use 40s