scoreboard players remove @s[type=player,scores={weapon.eye_of_the_end.interval=0..}] weapon.eye_of_the_end.interval 1
scoreboard players remove @s[type=player,scores={player.click.interval=1..}] player.click.interval 1

scoreboard players remove @s[type=player,scores={weapon.ruins_of_the_finality.effect.time=1..}] weapon.ruins_of_the_finality.effect.time 1
scoreboard players remove @s[type=player,scores={weapon.storm_sword.ultimate=0..}] weapon.storm_sword.ultimate 1
scoreboard players remove @s[type=player,scores={weapon.morning_light.cd=0..}] weapon.morning_light.cd 1
scoreboard players remove @s[type=player,scores={weapon.ruins_of_the_finality.effect.count.delay=1..}] weapon.ruins_of_the_finality.effect.count.delay 1
scoreboard players remove @s[type=player,scores={player.bow=1..}] player.bow 1
scoreboard players remove @s[type=player,scores={weapon.effect.resplendence=1..}] weapon.effect.resplendence 1
scoreboard players remove @s[type=player,scores={weapon.effect.shadow=1..}] weapon.effect.shadow 1
scoreboard players remove @s[type=player,scores={weapon.use_delay=1..}] weapon.use_delay 1

execute if score #is_water_sword_demon.passive? global.main matches 0.. run scoreboard players remove #is_water_sword_demon.passive? global.main 1