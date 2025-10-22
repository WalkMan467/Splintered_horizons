scoreboard players remove @a[scores={weapon.eye_of_the_end.interval=0..}] weapon.eye_of_the_end.interval 1
scoreboard players remove @a[scores={player.click.interval=1..}] player.click.interval 1

scoreboard players remove @a[scores={weapon.ruins_of_the_finality.effect.time=1..}] weapon.ruins_of_the_finality.effect.time 1
scoreboard players remove @a[scores={weapon.storm_sword.ultimate=0..}] weapon.storm_sword.ultimate 1
scoreboard players remove @a[scores={weapon.ruins_of_the_finality.effect.count.delay=1..}] weapon.ruins_of_the_finality.effect.count.delay 1
scoreboard players remove @a[scores={weapon.ruins_of_the_finality.blade.animation=1..}] weapon.ruins_of_the_finality.blade.animation 1

scoreboard players remove @a[scores={player.bow=1..}] player.bow 1
scoreboard players remove @a[scores={weapon.effect.resplendence=1..}] weapon.effect.resplendence 1
scoreboard players remove @a[scores={weapon.effect.shadow=1..}] weapon.effect.shadow 1
scoreboard players remove @a[scores={weapon.effect.chaotic_thunder=1..}] weapon.effect.chaotic_thunder 1
scoreboard players remove @a[scores={weapon.effect.crimson_claw=1..}] weapon.effect.crimson_claw 1
scoreboard players remove @a[scores={weapon.effect.holy_fire=1..}] weapon.effect.holy_fire 1
scoreboard players remove @a[scores={weapon.effect.starry_sky_frost=1..}] weapon.effect.starry_sky_frost 1
scoreboard players remove @a[scores={weapon.ruins_of_the_finality.enhanced_finality_skill=1..}] weapon.ruins_of_the_finality.enhanced_finality_skill 1
scoreboard players remove @a[scores={weapon.zeuss_lightning.use=1..}] weapon.zeuss_lightning.use 1

execute if score #is_water_sword_demon.passive? global.main matches 0.. run scoreboard players remove #is_water_sword_demon.passive? global.main 1

execute if score #is_nightfall.passive? global.main matches 0.. run scoreboard players remove #is_nightfall.passive? global.main 1

execute as @a if score @s weapon.ruins_of_the_finality.blade.animation matches 0 run tag @a remove animation
scoreboard players reset @a[scores={weapon.ruins_of_the_finality.blade.animation=0}] weapon.ruins_of_the_finality.blade.animation