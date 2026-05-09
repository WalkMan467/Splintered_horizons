function music:main/safe_zone/reset

stopsound @s voice minecraft:voice.join_game

advancement revoke @s only world_area:main/safe_zone/music/in

attribute @s movement_speed modifier remove world_area.resource_warehouse.effect

effect clear @s saturation