execute \
    unless score @s player.setting.backup.trigger matches 1.. run \
return 0

execute \
    if score @s player.setting.backup matches 1.. run \
return 0

scoreboard players enable @s player.setting.backup.trigger
scoreboard players set @s player.setting.backup.trigger 0
scoreboard players set @s player.setting.backup 1
scoreboard players display numberformat @s player.setting.backup fixed {"translate":"dialog.main.enabled","fallback":"Enabled","color":"dark_green","bold":true}

tellraw @a [{"text":"[","color": "white"},{"text": "⚠","color":"gold"},{"text":"]","color": "white"},{"text":" "},{"selector":"@s","color":"white","bold":true},{"text":" ","color":"white"},{"translate":"dialog.main.quick_actions.backup","fallback":"資料備份","color":"white"},{"text":": "},{"translate":"dialog.main.enabled","fallback":"開啟","color":"dark_green","bold":true}]

stopsound @s voice minecraft:entity.cat.hurt
stopsound @s voice minecraft:entity.cat.ambient

playsound minecraft:entity.cat.ambient voice @s ~ ~1 ~ 1 1