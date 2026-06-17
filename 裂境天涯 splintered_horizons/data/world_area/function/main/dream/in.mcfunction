advancement revoke @s only world_area:main/dream/out
advancement grant @s only music:cutscene/opening/1/icon

tag @s add world_area.main.dream
schedule function world_area:main/dream/fx/main 1t
schedule function world_area:main/dream/weapon_drop/interacted 1t

function music:cutscene/opening/1/start