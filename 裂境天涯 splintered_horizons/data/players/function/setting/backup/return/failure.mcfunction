tellraw @s [{"translate":"dialog.main.quick_actions.backup.failure.2","color":"red","bold":true}]

playsound minecraft:entity.cat.death master @s ~ ~ ~ 1 1 1
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 .5 1
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 .61 1

scoreboard players set @s player.setting.backup.return.id 0
scoreboard players enable @s player.setting.backup.return.id

scoreboard players enable @s player.setting.backup.trigger
scoreboard players set @s player.setting.backup.trigger 0