# 開啟：打掉容器時不掉落任何物品

execute \
    unless score @s player.setting.keep_container_items.trigger matches 1.. run \
return 0

execute \
    if score @s player.setting.keep_container_items matches 1.. run \
return 0

scoreboard players enable @s player.setting.keep_container_items.trigger
scoreboard players set @s player.setting.keep_container_items.trigger 0
scoreboard players set @s player.setting.keep_container_items 1
scoreboard players display numberformat @s player.setting.keep_container_items fixed {"translate":"dialog.main.enabled","fallback":"Enabled","color":"dark_green","bold":true}

tellraw @a [{"text":"[","color": "white"},{"text": "⚠","color":"gold"},{"text":"]","color": "white"},{"text":" "},{"selector":"@s","color":"white","bold":true},{"text":" ","color":"white"},{"translate":"dialog.main.quick_actions.keep_container_items","fallback":"打掉容器不掉落物品","color":"white"},{"text":": "},{"translate":"dialog.main.enabled","fallback":"開啟","color":"dark_green","bold":true}]

dialog clear @s

# 開啟當下先歸零，避免把開啟前累積的挖掘次數算進來
function players:setting/keep_container_items/reset

stopsound @s voice minecraft:entity.cat.ambient
stopsound @s voice minecraft:entity.cat.hurt

playsound minecraft:entity.cat.ambient voice @s ~ ~1 ~ 1 1