item modify entity @s weapon.mainhand weapons:type/sword/nightfall/0

title @s title {"text":"\uE005","font":"screen"}
title @s subtitle ""

title @s times 5 5 5

particle minecraft:smoke ~ ~1 ~ 0 0 0 0.1 80 normal @a
particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 1 1 normal @a

playsound minecraft:block.respawn_anchor.charge voice @a ~ ~1 ~ 1 1
playsound minecraft:block.beacon.activate voice @a ~ ~1 ~ 1 2
playsound minecraft:block.beacon.activate voice @a ~ ~1 ~ 0.5 2
playsound minecraft:block.trial_spawner.ominous_activate voice @a ~ ~1 ~ 1 1

playsound minecraft:entity.generic.explode voice @a ~ ~1 ~ 0.5 0.5

scoreboard players set @s weapon.nightfall.state 0

scoreboard players set @s weapon.nightfall.cd 5