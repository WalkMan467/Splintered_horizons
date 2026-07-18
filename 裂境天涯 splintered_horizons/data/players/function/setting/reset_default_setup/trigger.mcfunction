execute \
    unless score @s player.setting.reset_default_setup.trigger matches 1.. run \
return 0


dialog clear @s

scoreboard players enable @s player.setting.reset_default_setup.trigger
scoreboard players set @s player.setting.reset_default_setup.trigger 0

tellraw @s [{"text":"[","color": "white"},{"text": "⚠","color":"gold"},{"text":"]","color": "white"},{"text":" "},{"selector":"@s","color":"white","bold":true},{"text":" ","color":"white"},{"translate":"dialog.main.quick_actions.reset_default_setup.1","fallback":"你確定要%s嗎?","with":[{"translate":"dialog.main.quick_actions.reset_default_setup","underlined":true,"color":"yellow"}],"color":"white"}]
tellraw @s ""
tellraw @s [{"translate":"dialog.main.quick_actions.reset_default_setup.2","color":"white","bold":true,"underlined":false}]
tellraw @s ["",{"font":"minecraft:default","text":"☞ ","color":"dark_gray"},{text:"[",bold:true,color:"dark_green",click_event:{action:"run_command",command:"trigger player.detect.click_event.trigger set 22"}},{translate:"dialog.main.confirm",bold:true,underlined:true,color:"dark_green",click_event:{action:"run_command",command:"trigger player.detect.click_event.trigger set 22"}},{text:"]",bold:true,color:"dark_green",click_event:{action:"run_command",command:"trigger player.detect.click_event.trigger set 22"}},{text:"    "},{text:"[",bold:true,color:"dark_red",click_event:{action:"run_command",command:"trigger player.detect.click_event.trigger set 23"}},{translate:"dialog.main.cancel",bold:true,underlined:true,color:"dark_red",click_event:{action:"run_command",command:"trigger player.detect.click_event.trigger set 23"}},{text:"]",bold:true,color:"dark_red",click_event:{action:"run_command",command:"trigger player.detect.click_event.trigger set 23"}}]

playsound minecraft:entity.cat.death master @s ~ ~ ~ 1 1 1
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 .5 1
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 .61 1
