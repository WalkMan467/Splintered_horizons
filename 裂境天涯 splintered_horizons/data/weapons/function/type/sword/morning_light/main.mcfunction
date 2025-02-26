execute as @s[type=player,tag=weapon.morning_light.active] at @s if block ~ ~-0.1 ~ #air if items entity @s weapon.mainhand *[custom_data~{morning_light:1b}] run advancement grant @s only weapons:type/sword/morning_light/effect/true
execute as @s[type=player] at @s unless block ~ ~-0.1 ~ #air if items entity @s weapon.mainhand *[custom_data~{morning_light:1b}] run advancement grant @s only weapons:type/sword/morning_light/effect/false

scoreboard players remove @s[tag=weapon.morning_light.motion] weapon.morning_light.motion 1

execute as @s[tag=weapon.morning_light.motion] if score @s weapon.morning_light.motion matches ..0 run function weapons:type/sword/morning_light/cancel_ride