execute unless entity @s[type=player] run return 0

tellraw @s [{"translate":"sys.mini_game.hit_the_bullseye.remove.0","fallback": "已刪除所有 ID 為 ","color": "white","bold": false},{"score":{"name":"@s","objective":"sys.mini_game.hit_the_bullseye.remove.id"},"color":"green","bold": true},{"translate":"sys.mini_game.hit_the_bullseye.remove.1","fallback": " 的所有實體！","color": "white","bold": false}]

playsound minecraft:entity.breeze.deflect voice @s ~ ~ ~ 1 1
playsound minecraft:entity.breeze.deflect voice @s ~ ~ ~ 1 1

tag @s remove sys.mini_game.hit_the_bullseye.remove.user
scoreboard players reset @s sys.mini_game.hit_the_bullseye.remove.id