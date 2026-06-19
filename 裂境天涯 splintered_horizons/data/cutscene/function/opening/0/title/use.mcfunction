scoreboard players set cutscene.opening.title cutscene.opening.title.timer 0
scoreboard players set #cutscene.opening global.main 1

execute \
    as @a at @s run \
function players:stop_animation

advancement grant @a only players:elytra_switch/false
scoreboard players set @a player.disable.elytra_switch 40

gamemode survival @a
loot replace entity @a armor.head loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:leather_helmet",functions:[{function:"minecraft:set_components",components:{"minecraft:tooltip_display":{hide_tooltip:1b},"minecraft:item_name":{bold:1b,color:"yellow",italic:0b,text:"Camera"},"minecraft:item_model":"camera","minecraft:equippable":{slot:"head",equip_sound:"event.raid.horn",asset_id:"minecraft:air",camera_overlay:"minecraft:screen/fade_out"},"minecraft:enchantments":{binding_curse:1},"minecraft:enchantment_glint_override":0b}},{function:"minecraft:set_custom_data",tag:{camera:1b}}]}]}]}

stopsound @a voice event.raid.horn

schedule function cutscene:opening/0/title/main 3t


execute \
    in minecraft:overworld run \
tp @a 9999 95 10070

schedule function cutscene:opening/force_execution/summon/0/title 1t

title @a actionbar ""

scoreboard objectives setdisplay sidebar

gamerule minecraft:locator_bar false

execute \
    as @a at @s run \
playsound minecraft:block.fire.ambient voice @s ~ ~1 ~ 1 0.5
tag @a add cutscene.player_leave.detect

schedule function cutscene:opening/use 40s