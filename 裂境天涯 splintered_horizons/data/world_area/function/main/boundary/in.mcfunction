# 碰到邊界牆 ;回朔玩家位置

effect give @s slow_falling 1 255 true
function players:tp_to_spawnpoint/use

playsound minecraft:entity.cat.death master @s ~ ~ ~ 1 1 1
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 .5 1
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 .61 1

tellraw @s [{"translate": "world_area.main.boundary","color": "dark_green"}]