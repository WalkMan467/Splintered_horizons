function players:setting/reset_default_setup/default_setup

tellraw @a [{"text":"[","color": "white"},{"text": "⚠","color":"gold"},{"text":"]","color": "white"},{"text":" "},{"selector":"@s","color":"white","bold":true},{"text":" ","color":"white"},{"translate":"dialog.main.quick_actions.reset_default_setup","fallback":"重置默認設置","color":"yellow","underlined":true},{"text":": "}]