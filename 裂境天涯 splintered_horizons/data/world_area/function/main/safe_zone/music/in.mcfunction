function music:main/safe_zone/start

advancement grant @s only music:main/safe_zone/icon

stopsound @s voice minecraft:voice.join_game
playsound minecraft:voice.join_game voice @s ~ ~1 ~ 0.5 1


advancement revoke @s only world_area:main/safe_zone/music/out