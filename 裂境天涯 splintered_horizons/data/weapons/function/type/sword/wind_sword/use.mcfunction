
# player
tag @s add wind_sword.user

scoreboard players set @s weapon.wind_sword.cd 20
scoreboard players set @s weapon.wind_sword.timer 0

tellraw @s [{"translate":"weapon.wind_sword.skill","color":"dark_green","bold":true}," ",{"translate":"weapon.skill_activation","color":"green","bold":true}]

# particle

playsound minecraft:voice.wind_sword_skill_1 voice @a[distance=..8] ~ ~1 ~ 0.7 1 1
particle dust_color_transition{from_color: [0.5f, 0.75f, 1.0f], scale: 1.2f, to_color: [0.0f, 1.0f, 0.5f]} ~ ~0.75 ~ 1.5 1 1.5 0 50 normal @a