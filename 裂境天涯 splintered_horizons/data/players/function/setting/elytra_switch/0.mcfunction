execute \
    unless score @s player.setting.elytra_switch.trigger matches 1.. run \
return 0

execute \
    unless score @s player.setting.elytra_switch matches 1.. run \
return 0

dialog clear @s

scoreboard players enable @s player.setting.elytra_switch.trigger
scoreboard players set @s player.setting.elytra_switch.trigger 0
scoreboard players set @s player.setting.elytra_switch 0
scoreboard players display numberformat @s player.setting.elytra_switch fixed {"translate":"dialog.main.disabled","fallback":"Disabled","color":"dark_red","bold":true}

tellraw @s [{"text":"[","color": "white"},{"text": "⚠","color":"gold"},{"text":"]","color": "white"},{"text":" "},{"selector":"@s","color":"white","bold":true},{"text":" ","color":"white"},{"translate":"dialog.main.quick_actions.elytra_switch","fallback":"飛行功能","color":"white"},{"text":": "},{"translate":"dialog.main.disabled","fallback":"關閉","color":"dark_red","bold":true}]

execute \
    if entity @s[tag=player.elytra_switch] run \
dialog clear @s

stopsound @s voice minecraft:entity.cat.hurt
stopsound @s voice minecraft:entity.cat.ambient

playsound minecraft:entity.cat.hurt voice @s ~ ~1 ~ 1 1
