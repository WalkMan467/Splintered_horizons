
# player
scoreboard players set @s weapon.aquilumera.cd 25
effect give @s speed 15 2 true
effect give @s strength 5 0 true
effect give @s haste 15 1 true

# particle
title @s times 10 5 10
title @s title {"text":"\uE007","font": "screen"}
particle glow_squid_ink ~ ~1 ~ 0 0 0 0.5 20 normal @a
particle flash ~ ~1 ~ 0 0 0 1 2 normal @a[scores={main.light_sensitivity=0}]
particle dust_color_transition{from_color: [1.0f, 1.0f, 0.0f], scale: 2f, to_color: [1.0f, 1.0f, 1.0f]} ~ ~5 ~ 5 5 5 0 200 normal @a

playsound voice.aquilumera_light voice @a ~ ~0.5 ~ 0.5 1
playsound entity.generic.explode voice @a ~ ~ ~ 1 0.5

# dmg
tag @s add water_sword.l_user