particle flash ~ ~1 ~ 0 0 0 0 1 force @a

stopsound @a voice minecraft:block.beacon.activate
stopsound @a voice minecraft:entity.warden.sonic_charge
playsound minecraft:block.beacon.activate voice @a ~ ~1 ~ 51 2
playsound minecraft:entity.warden.sonic_charge voice @a ~ ~1 ~ 5 1
title @a[distance=..60] title {"text":"\uE001","font": "minecraft:screen"}
title @a[distance=..60] subtitle ""
title @a[distance=..60] times 20 20 10

scoreboard players reset #boss.chapter_1.walkman.2 particle
execute rotated ~ 0 run function monsters:chapter_1.walkman/2/range_fx_2