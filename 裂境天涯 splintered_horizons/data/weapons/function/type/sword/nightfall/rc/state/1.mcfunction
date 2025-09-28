item modify entity @s weapon.mainhand weapons:type/sword/nightfall/1

title @s title {"text":"\uE005","font":"screen"}
title @s subtitle ""

title @s times 5 5 5

particle minecraft:smoke ~ ~1 ~ 0 0 0 0.1 80 normal @a
particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 1 1 normal @a

playsound minecraft:block.sculk_shrieker.shriek voice @a ~ ~1 ~ 0.5 0.5
playsound minecraft:entity.generic.explode voice @a ~ ~1 ~ 0.5 0.5
playsound minecraft:entity.iron_golem.death voice @a ~ ~1 ~ 1 0.75
playsound minecraft:entity.illusioner.prepare_blindness voice @a ~ ~1 ~ 1 1.5
playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 1 1

scoreboard players set @s weapon.nightfall.state 1