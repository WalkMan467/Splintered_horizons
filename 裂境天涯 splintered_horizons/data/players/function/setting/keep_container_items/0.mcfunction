# 關閉：恢復原版行為

execute \
    unless score @s player.setting.keep_container_items.trigger matches 1.. run \
return 0

execute \
    unless score @s player.setting.keep_container_items matches 1.. run \
return 0

scoreboard players enable @s player.setting.keep_container_items.trigger
scoreboard players set @s player.setting.keep_container_items.trigger 0
scoreboard players set @s player.setting.keep_container_items 0
scoreboard players display numberformat @s player.setting.keep_container_items fixed {"translate":"dialog.main.disabled","fallback":"Disabled","color":"dark_red","bold":true}

tellraw @a [{"text":"[","color": "white"},{"text": "⚠","color":"gold"},{"text":"]","color": "white"},{"text":" "},{"selector":"@s","color":"white","bold":true},{"text":" ","color":"white"},{"translate":"dialog.main.quick_actions.keep_container_items","fallback":"打掉容器不掉落物品","color":"white"},{"text":": "},{"translate":"dialog.main.disabled","fallback":"關閉","color":"dark_red","bold":true}]

dialog clear @s

stopsound @s voice minecraft:entity.cat.hurt
stopsound @s voice minecraft:entity.cat.ambient

playsound minecraft:entity.cat.hurt voice @s ~ ~1 ~ 1 1
