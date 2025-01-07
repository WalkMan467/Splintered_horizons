particle flash ~ ~1 ~ 0 0 0 0 1 force @a
stopsound @a voice minecraft:entity.breeze.wind_burst
stopsound @a voice minecraft:block.beacon.activate
stopsound @a voice minecraft:block.beacon.deactivate
playsound minecraft:block.beacon.activate voice @a ~ ~1 ~ 5 1.5


execute as @n[tag=chapter_1.walkman.1.main,limit=1] run data merge entity @s {Glowing:1b,start_interpolation: 1, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 2.0f], translation: [0.0f, 0.0f, 0.0f]}}

summon area_effect_cloud ~ ~ ~ {Tags:["boss.chapter_1.walkman.2.fx"],Duration:20}