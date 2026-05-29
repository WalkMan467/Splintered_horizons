execute \
    unless score @s player.setting.waterfall_effect.trigger matches 1.. run \
return 0

execute \
    if score @s player.setting.waterfall_effect matches 1.. run \
return 0

scoreboard players enable @s player.setting.waterfall_effect.trigger
scoreboard players set @s player.setting.waterfall_effect.trigger 0
scoreboard players set @s player.setting.waterfall_effect 1
scoreboard players display numberformat @s player.setting.waterfall_effect fixed {"translate":"dialog.main.enabled","fallback":"Enabled","color":"dark_green","bold":true}

tellraw @a [{"text":"[","color": "white"},{"text": "⚠","color":"gold"},{"text":"]","color": "white"},{"text":" "},{"selector":"@s","color":"white","bold":true},{"text":" ","color":"white"},{"translate":"dialog.main.quick_actions.waterfall_effect","fallback":"瀑布效應","color":"white"},{"text":": "},{"translate":"dialog.main.enabled","fallback":"開啟","color":"dark_green","bold":true}]

stopsound @s voice minecraft:entity.cat.ambient
stopsound @s voice minecraft:entity.cat.hurt

playsound minecraft:entity.cat.ambient voice @s ~ ~1 ~ 1 1