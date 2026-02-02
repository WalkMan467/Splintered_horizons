execute \
    unless score @s player.setting.reduce_particles.trigger matches 1.. run \
return 0

execute \
    unless score @s player.setting.reduce_particles matches 1.. run \
return 0

scoreboard players enable @s player.setting.reduce_particles.trigger
scoreboard players set @s player.setting.reduce_particles.trigger 0
scoreboard players set @s player.setting.reduce_particles 0
scoreboard players display numberformat @s player.setting.reduce_particles fixed {"translate":"dialog.main.disabled","fallback":"Disabled","color":"dark_red","bold":true}

tellraw @s [{"text":"[","color": "white"},{"text": "⚠","color":"gold"},{"text":"]","color": "white"},{"text":" "},{"selector":"@s","color":"white","bold":true},{"text":" ","color":"white"},{"translate":"dialog.main.quick_actions.reduce_particles","fallback":"減少粒子","color":"white"},{"text":": "},{"translate":"dialog.main.disabled","fallback":"關閉","color":"dark_red","bold":true}]

stopsound @s voice minecraft:entity.cat.hurt
stopsound @s voice minecraft:entity.cat.ambient

playsound minecraft:entity.cat.hurt voice @s ~ ~1 ~ 1 1