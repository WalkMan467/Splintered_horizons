execute \
    unless score @s player.setting.bloom.trigger matches 1.. run \
return 0

execute \
    unless score @s player.setting.bloom matches 1.. run \
return 0

scoreboard players enable @s player.setting.bloom.trigger
scoreboard players set @s player.setting.bloom.trigger 0
scoreboard players set @s player.setting.bloom 0
scoreboard players display numberformat @s player.setting.bloom fixed {"translate":"dialog.main.disabled","fallback":"Disabled","color":"dark_red","bold":true}

tellraw @s [{"text":"[","color": "white"},{"text": "⚠","color":"gold"},{"text":"]","color": "white"},{"text":" "},{"selector":"@s","color":"white","bold":true},{"text":" ","color":"white"},{"translate":"dialog.main.quick_actions.bloom","fallback":"光影泛光","color":"white"},{"text":": "},{"translate":"dialog.main.disabled","fallback":"關閉","color":"dark_red","bold":true}]

dialog clear @s
posteffect remove @s minecraft:bloom

stopsound @s voice minecraft:entity.cat.hurt
stopsound @s voice minecraft:entity.cat.ambient

playsound minecraft:entity.cat.hurt voice @s ~ ~1 ~ 1 1
