execute \
    unless score @s player.setting.reduce_particles.trigger matches 1.. run \
return 0

execute \
    if score @s player.setting.reduce_particles matches 1.. run \
return 0

scoreboard players enable @s player.setting.reduce_particles.trigger
scoreboard players set @s player.setting.reduce_particles.trigger 0
scoreboard players set @s player.setting.reduce_particles 1
scoreboard players display numberformat @s player.setting.reduce_particles fixed {"translate":"dialog.main.enabled","fallback":"Enabled","color":"dark_green","bold":true}

tellraw @a [{"text":"[","color": "white"},{"text": "⚠","color":"gold"},{"text":"]","color": "white"},{"text":" "},{"selector":"@s","color":"white","bold":true},{"text":" ","color":"white"},{"translate":"dialog.main.quick_actions.reduce_particles","fallback":"減少粒子","color":"white"},{"text":": "},{"translate":"dialog.main.enabled","fallback":"開啟","color":"dark_green","bold":true}]

stopsound @s voice minecraft:entity.cat.ambient
stopsound @s voice minecraft:entity.cat.hurt

playsound minecraft:entity.cat.ambient voice @s ~ ~1 ~ 1 1