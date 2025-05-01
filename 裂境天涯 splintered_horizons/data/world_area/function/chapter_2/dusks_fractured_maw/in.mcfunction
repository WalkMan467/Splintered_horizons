advancement revoke @s only world_area:chapter_2/dusks_fractured_maw/out

title @s title ["",{"text":"☀","color":"gold"},{"translate":"world_area.icon.chapter_2.dusks_fractured_maw","underlined":true,"color":"gold","fallback": "Dusk's Fractured Maw"},{"text":"☀","color":"gold"}]
title @s subtitle [{"text":""},{"text":"《","bold":true,"color":"gold"},{"translate":"monument.icon.chapter_2","bold":true,"color":"gold"},{"text":"》","bold":true,"color":"gold"}]
title @s times 20 20 20


playsound minecraft:voice.time_and_space_portal_open voice @s ~ ~1 ~ 0.25 1
playsound minecraft:block.respawn_anchor.deplete voice @s ~ ~1 ~ 1 0.5
playsound minecraft:block.respawn_anchor.deplete voice @s ~ ~1 ~ 1 0.5
playsound minecraft:block.vault.open_shutter voice @s ~ ~1 ~ 1 0.5
playsound minecraft:entity.generic.explode voice @s ~ ~1 ~ 0.5 0.5

scoreboard players set @s world_area.daytime_weather.player 1