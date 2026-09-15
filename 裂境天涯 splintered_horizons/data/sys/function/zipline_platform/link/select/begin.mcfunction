# 執行者 : 玩家

tag @s add sys.zipline_platform.editing
scoreboard players operation @s sys.zipline_platform.link = #clicked sys.zipline_platform.link

playsound minecraft:block.copper_bulb.turn_on master @s ~ ~ ~ 1 1.5

tellraw @s [{"translate":"tips.zipline_platform.link.edit_mode","color":"gold","bold":true}," ",{"translate":"tips.zipline_platform.link.edit_mode.pos.start","color":"gray"},{"text":" #","color":"gray"},{score:{name:"#clicked",objective:"sys.zipline_platform.link"},"color":"yellow"},{"translate":"tips.zipline_platform.link.edit_mode.hint","color":"gray",with:[{"keybind":"key.use","underlined": true, "color": "dark_green"},{"keybind":"key.attack","underlined": true, "color": "dark_green"}]}]
