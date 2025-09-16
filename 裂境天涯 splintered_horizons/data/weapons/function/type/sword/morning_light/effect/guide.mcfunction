scoreboard players remove @s armor.finality_chestplate.effect.timer 1

attribute @s armor modifier remove weapon.morning_light.monster.effect

execute if score @s weapon.morning_light.monster.armor.state matches 1 run attribute @s armor modifier add weapon.morning_light.monster.effect -0.1 add_multiplied_base
execute if score @s weapon.morning_light.monster.armor.state matches 2 run attribute @s armor modifier add weapon.morning_light.monster.effect -0.2 add_multiplied_base
execute if score @s weapon.morning_light.monster.armor.state matches 3.. run attribute @s armor modifier add weapon.morning_light.monster.effect -0.3 add_multiplied_base