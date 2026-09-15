# 執行者 : 玩家

tag @s remove sys.zipline_platform.editing
scoreboard players reset @s sys.zipline_platform.link

playsound minecraft:block.copper_bulb.turn_off master @s ~ ~ ~ 1 1.5

tellraw @s [{"translate":"tips.zipline_platform.link.edit_mode","color":"gold"},{"text":" "},{"translate":"tips.zipline_platform.link.edit_mode.exit","color":"gray"}]
