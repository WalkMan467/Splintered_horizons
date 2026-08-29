difficulty peaceful
gamerule spawner_blocks_work true

dialog clear @s

tellraw @s [{"text":"[","color": "white"},{"text": "⚠","color":"gold"},{"text":"]","color": "white"},{"text":" "},{"selector":"@s","color":"white","bold":true},{"text":" ","color":"white"},{"translate":"dialog.main.quick_actions.gameplay_test","fallback":"測試遊戲","color":"white"},{"text":": "},{"translate":"dialog.main.disabled","fallback":"關閉","color":"dark_red","bold":true}]

stopsound @s voice minecraft:entity.cat.hurt
stopsound @s voice minecraft:entity.cat.ambient
playsound minecraft:block.amethyst_block.resonate voice @a ~ ~1 ~ 1 1
playsound minecraft:block.amethyst_block.resonate voice @a ~ ~1 ~ 1 1
playsound minecraft:block.amethyst_block.resonate voice @a ~ ~1 ~ 1 1

playsound minecraft:entity.cat.hurt voice @s ~ ~1 ~ 1 1