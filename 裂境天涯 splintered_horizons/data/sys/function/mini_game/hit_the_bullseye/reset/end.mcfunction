execute unless entity @s[type=player] run return 0

tellraw @s [{"translate":"sys.mini_game.hit_the_bullseye.reset.0","fallback": "已重置所有 ID 為 ","color": "white","bold": false},{"score":{"name":"@s","objective":"sys.mini_game.hit_the_bullseye.reset.id"},"color":"green","bold": true},{"translate":"sys.mini_game.hit_the_bullseye.reset.1","fallback": " 的目標靶心！","color": "white","bold": false}]

playsound minecraft:entity.breeze.charge voice @s ~ ~ ~ 1 1.075
playsound minecraft:entity.breeze.charge voice @s ~ ~ ~ 1 1.075

tag @s remove sys.mini_game.hit_the_bullseye.reset.user
scoreboard players reset @s sys.mini_game.hit_the_bullseye.reset.id