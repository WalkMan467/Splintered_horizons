scoreboard players set @s player.setting.reduce_particles 0
scoreboard players display numberformat @s player.setting.campfire_darkness fixed {"translate":"dialog.main.disabled","fallback":"Disabled","color":"dark_red","bold":true}

scoreboard players set @s player.setting.campfire_darkness 1
scoreboard players display numberformat @s player.setting.reduce_particles fixed {"translate":"dialog.main.enabled","fallback":"Enabled","color":"dark_green","bold":true}