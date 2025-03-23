playsound minecraft:entity.generic.explode voice @a ~ ~ ~ 3 0.5
playsound minecraft:block.respawn_anchor.deplete voice @a ~ ~ ~ 3 0.75
playsound minecraft:block.beacon.deactivate voice @a ~ ~1 ~ 3 1
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 normal @a

title @p[tag=weapon.ruins_of_the_finality.used] title {"text": "\uE002","font": "minecraft:screen"}
title @p[tag=weapon.ruins_of_the_finality.used] subtitle ""
title @p[tag=weapon.ruins_of_the_finality.used] times 10 100 10
tag @a remove weapon.ruins_of_the_finality.used