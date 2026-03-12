# 碰到邊界牆 ;回朔玩家位置

effect give @s slow_falling 1 255 true
function music:stop
tag @s remove player.death
function sys:respawnpoint/tp/store

function sys:respawnpoint/tp/run with storage minecraft:player.data spawnpoint

playsound minecraft:entity.cat.death master @s ~ ~ ~ 1 1 1
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 .5 1
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 .61 1

tellraw @s [{"translate": "world_area.main.boundary","color": "dark_green"}]