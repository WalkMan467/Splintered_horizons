execute \
    unless score @s player.setting.campfire_darkness.trigger matches 1.. run \
return 0

execute \
    if score @s player.setting.campfire_darkness matches 1.. run \
return 0

scoreboard players enable @s player.setting.campfire_darkness.trigger
scoreboard players set @s player.setting.campfire_darkness.trigger 0
scoreboard players set @s player.setting.campfire_darkness 1
scoreboard players display numberformat @s player.setting.campfire_darkness fixed {"translate":"dialog.main.enabled","fallback":"Enabled","color":"dark_green","bold":true}

tellraw @a [{"text":"[","color": "white"},{"text": "⚠","color":"gold"},{"text":"]","color": "white"},{"text":" "},{"selector":"@s","color":"white","bold":true},{"text":" ","color":"white"},{"translate":"dialog.main.quick_actions.campfire_darkness","fallback":"禁用營火黑暗效果","color":"white"},{"text":": "},{"translate":"dialog.main.enabled","fallback":"開啟","color":"dark_green","bold":true}]

stopsound @s voice minecraft:entity.cat.hurt
stopsound @s voice minecraft:entity.cat.ambient

playsound minecraft:entity.cat.ambient voice @s ~ ~1 ~ 1 1