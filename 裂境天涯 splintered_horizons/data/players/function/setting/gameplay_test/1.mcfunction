difficulty normal
gamerule spawner_blocks_work false

dialog clear @s

tellraw @a [{"text":"[","color": "white"},{"text": "⚠","color":"gold"},{"text":"]","color": "white"},{"text":" "},{"selector":"@s","color":"white","bold":true},{"text":" ","color":"white"},{"translate":"dialog.main.quick_actions.gameplay_test","fallback":"測試遊戲","color":"white"},{"text":": "},{"translate":"dialog.main.enabled","fallback":"開啟","color":"dark_green","bold":true}]

stopsound @s voice minecraft:entity.cat.ambient
stopsound @s voice minecraft:entity.cat.hurt

playsound minecraft:block.amethyst_block.break voice @a ~ ~1 ~ 1 1
playsound minecraft:block.amethyst_block.resonate voice @a ~ ~1 ~ 1 1
playsound minecraft:block.amethyst_block.resonate voice @a ~ ~1 ~ 1 1
playsound minecraft:block.amethyst_block.resonate voice @a ~ ~1 ~ 1 1

playsound minecraft:entity.cat.ambient voice @s ~ ~1 ~ 1 1