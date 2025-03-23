scoreboard players remove @s[scores={weapon.wind_sword.cd=1..}] weapon.wind_sword.cd 1
scoreboard players remove @s[scores={weapon.grip_of_withering.effect=1..}] weapon.grip_of_withering.effect 1
scoreboard players remove @s[scores={weapon.ruins_of_the_finality.cd=1..}] weapon.ruins_of_the_finality.cd 1

# 風力劍
tellraw @s[scores={weapon.wind_sword.cd=1}] [{"text":"[","color":"green","bold":true},{"translate":"weapon.wind_sword","color":"dark_green","bold":true},{"text":"] ","color":"green","bold":true},{"translate":"weapon.cd_completed","color":"green","bold":true}]
playsound minecraft:entity.player.levelup voice @s[scores={weapon.wind_sword.cd=1}] ~ ~1 ~ 1 1.5

# 終焉之墟
tellraw @s[scores={weapon.ruins_of_the_finality.cd=1}] [{"text":"[","color":"green","bold":true},{"translate":"weapon.ruins_of_the_finality","color":"dark_green","bold":true},{"text":"] ","color":"green","bold":true},{"translate":"weapon.cd_completed","color":"green","bold":true}]
playsound minecraft:entity.player.levelup voice @s[scores={weapon.ruins_of_the_finality.cd=1}] ~ ~1 ~ 1 1.5

advancement grant @s[scores={weapon.grip_of_withering.effect=1}] only weapons:type/sword/grip_of_withering/0