scoreboard players enable @s player.setting.reset_default_setup.trigger
scoreboard players set @s player.setting.reset_default_setup.trigger 0

tellraw @a [{"text":"[","color": "white"},{"text": "⚠","color":"gold"},{"text":"]","color": "white"},{"text":" "},{"selector":"@s","color":"white","bold":true},{"text":" ","color":"white"},{"translate":"dialog.main.quick_actions.reset_default_setup.cancel","fallback":"已取消 %s","color":"red","bold":true,"with":[{"translate":"dialog.main.quick_actions.reset_default_setup","fallback":"重置默認設置","color":"yellow","underlined":true,"bold":false}]}]