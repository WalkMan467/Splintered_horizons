# 碰到邊界牆 ;回朔玩家位置

scoreboard players set @s sys.fall_immunity 20

function players:stop_animation
function music:stop
tag @s remove player.death
function sys:respawnpoint/tp/store

function sys:respawnpoint/tp/run with storage minecraft:player.data spawnpoint

playsound minecraft:entity.cat.death master @s ~ ~ ~ 1 1 1
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 .5 1
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 .61 1

tellraw @s [{"translate": "world_area.main.boundary","color": "dark_green"}]