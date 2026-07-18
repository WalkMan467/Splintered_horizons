execute \
    unless score @s player.setting.auto_refill_items.trigger matches 1.. run \
return 0

execute \
    if score @s player.setting.auto_refill_items matches 1.. run \
return 0

scoreboard players enable @s player.setting.auto_refill_items.trigger
scoreboard players set @s player.setting.auto_refill_items.trigger 0
scoreboard players set @s player.setting.auto_refill_items 1
scoreboard players display numberformat @s player.setting.auto_refill_items fixed {"translate":"dialog.main.enabled","fallback":"Enabled","color":"dark_green","bold":true}

tellraw @a [{"text":"[","color": "white"},{"text": "⚠","color":"gold"},{"text":"]","color": "white"},{"text":" "},{"selector":"@s","color":"white","bold":true},{"text":" ","color":"white"},{"translate":"dialog.main.quick_actions.auto_refill_items","fallback":"平滑行走","color":"white"},{"text":": "},{"translate":"dialog.main.enabled","fallback":"開啟","color":"dark_green","bold":true}]

stopsound @s voice minecraft:entity.cat.ambient
stopsound @s voice minecraft:entity.cat.hurt

playsound minecraft:entity.cat.ambient voice @s ~ ~1 ~ 1 1