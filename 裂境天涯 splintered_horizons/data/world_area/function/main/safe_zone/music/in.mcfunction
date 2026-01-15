function music:main/safe_zone/start

advancement grant @s only music:main/safe_zone/icon

scoreboard players set #safe_area.enter global.main 1

stopsound @s voice minecraft:voice.join_game
playsound minecraft:voice.join_game voice @s ~ ~1 ~ 0.5 1

advancement grant @s only item:type/tp_book/reset
advancement revoke @s only world_area:main/safe_zone/music/out