execute \
    if score @s sys.mini_game.hit_the_bullseye.main.id matches -2147483648..1 run \
scoreboard players set @s sys.mini_game.hit_the_bullseye.main.id 1

scoreboard players operation .index sys.mini_game.hit_the_bullseye.main.id = @s sys.mini_game.hit_the_bullseye.main.id

tellraw @s [{"translate":"sys.mini_game.hit_the_bullseye.main.0","fallback": "已將 ID 更改為 ","color": "white","bold": false},{"score":{"name":".index","objective":"sys.mini_game.hit_the_bullseye.main.id"},"color":"green","bold": true},{"text":"！","color": "white","bold": false}]

playsound minecraft:block.respawn_anchor.deplete voice @s ~ ~ ~ 1 0.75
playsound minecraft:block.respawn_anchor.deplete voice @s ~ ~ ~ 1 0.75

scoreboard players reset @s sys.mini_game.hit_the_bullseye.main.id
scoreboard players reset @s sys.mini_game.hit_the_bullseye.reward.id
scoreboard players reset @s sys.mini_game.hit_the_bullseye.bullseye.id