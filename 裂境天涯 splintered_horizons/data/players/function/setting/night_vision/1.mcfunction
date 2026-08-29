execute \
    unless score @s player.setting.night_vision.trigger matches 1.. run \
return 0

execute \
    if score @s player.setting.night_vision matches 1.. run \
return 0

scoreboard players enable @s player.setting.night_vision.trigger
scoreboard players set @s player.setting.night_vision.trigger 0
scoreboard players set @s player.setting.night_vision 1
scoreboard players display numberformat @s player.setting.night_vision fixed {"translate":"dialog.main.enabled","fallback":"Enabled","color":"dark_green","bold":true}

tellraw @a [{"text":"[","color": "white"},{"text": "⚠","color":"gold"},{"text":"]","color": "white"},{"text":" "},{"selector":"@s","color":"white","bold":true},{"text":" ","color":"white"},{"translate":"dialog.main.quick_actions.night_vision","fallback":"夜視效果","color":"white"},{"text":": "},{"translate":"dialog.main.enabled","fallback":"開啟","color":"dark_green","bold":true}]

dialog clear @s
effect give @s night_vision infinite 255 true

stopsound @s voice minecraft:entity.cat.ambient
stopsound @s voice minecraft:entity.cat.hurt

playsound minecraft:entity.cat.ambient voice @s ~ ~1 ~ 1 1