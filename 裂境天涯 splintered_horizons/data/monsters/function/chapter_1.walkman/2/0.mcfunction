title @a[distance=..60] title [{"text":"[!]","color":"dark_red"}]
title @a[distance=..60] times 0 20 10
title @a[distance=..60] subtitle [{"translate": "boss.chapter_1.walkman.2","color":"dark_red"}]
playsound minecraft:entity.illusioner.prepare_mirror voice @a ~ ~1 ~ 5 1


attribute @s movement_speed modifier add boss.chapter_1.walkman.2 -1024 add_multiplied_base
attribute @s jump_strength modifier add boss.chapter_1.walkman.2 -100 add_multiplied_base
attribute @s gravity modifier add boss.chapter_1.walkman.2 99 add_value
attribute @s knockback_resistance modifier add boss.chapter_1.walkman.2 99 add_value

bossbar add minecraft:chapter_1.walkman.2 {"translate": "boss.chapter_1.walkman.2"}
bossbar set minecraft:chapter_1.walkman.2 color yellow
bossbar set chapter_1.walkman.2 max 80
scoreboard players set @s chapter_1.walkman.2.charge 0

effect give @s glowing 5 255 true
execute as @a at @s if biome ~ ~ ~ world_area:chapter_1/abyssal_ruins run bossbar set minecraft:chapter_1.walkman.2 players @s

stopsound @a voice minecraft:entity.breeze.wind_burst
stopsound @a voice minecraft:block.beacon.deactivate

playsound minecraft:block.beacon.deactivate voice @a ~ ~1 ~ 5 1.5
playsound minecraft:entity.breeze.wind_burst voice @a ~ ~1 ~ 5 0
particle flash ~ ~1 ~ 0 0 0 0 1 force @a

scoreboard players reset #boss.chapter_1.walkman.2 particle
execute rotated ~ 0 run function monsters:chapter_1.walkman/2/range_fx

summon minecraft:item_display ~ ~5 ~ {teleport_duration:1,interpolation_duration:5,Tags:["chapter_1.walkman.1.main"],billboard: "center", brightness: {block: 15, sky: 15}, item: {count: 1, id: "minecraft:ender_eye"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 0.0f, 2.0f], translation: [0.0f, 0.0f, 0.0f]}}
