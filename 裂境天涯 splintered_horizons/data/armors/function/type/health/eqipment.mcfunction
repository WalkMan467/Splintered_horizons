title @s title [{"translate": "armor.health_helmet.skill","color": "dark_aqua"}]
title @s subtitle ""
title @s times 40 40 40

particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.25 80 normal @s
particle minecraft:dripping_dripstone_water ~ ~5 ~ 5 5 5 0 200 normal @s

stopsound @s voice minecraft:voice.lament_of_the_pure_waters
playsound minecraft:voice.lament_of_the_pure_waters voice @s ~ ~1 ~ 3 1

attribute @s minecraft:max_health modifier add armor.health_armor.effect 0.5 add_multiplied_base
advancement revoke @s only armors:type/health/take_off