execute \
    unless score @s player.setting.night_vision.trigger matches 1.. run \
return 0

execute \
    unless score @s player.setting.night_vision matches 1.. run \
return 0

scoreboard players enable @s player.setting.night_vision.trigger
scoreboard players set @s player.setting.night_vision.trigger 0
scoreboard players set @s player.setting.night_vision 0
scoreboard players display numberformat @s player.setting.night_vision fixed {"translate":"dialog.main.disabled","fallback":"Disabled","color":"dark_red","bold":true}

tellraw @s [{"text":"[","color": "white"},{"text": "⚠","color":"gold"},{"text":"]","color": "white"},{"text":" "},{"selector":"@s","color":"white","bold":true},{"text":" ","color":"white"},{"translate":"dialog.main.quick_actions.night_vision","fallback":"夜視效果","color":"white"},{"text":": "},{"translate":"dialog.main.disabled","fallback":"關閉","color":"dark_red","bold":true}]

dialog clear @s
effect clear @s night_vision

stopsound @s voice minecraft:entity.cat.hurt
stopsound @s voice minecraft:entity.cat.ambient

playsound minecraft:entity.cat.hurt voice @s ~ ~1 ~ 1 1