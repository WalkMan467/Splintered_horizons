execute \
    as @a at @s \
    as @e[sort=arbitrary,distance=..3,tag=world_area.main.dream.fx,type=text_display] at @s run \
function world_area:main/dream/fx/guide

execute \
    as @a at @s \
    if biome ~ ~ ~ #world_area:prologue run \
schedule function world_area:main/dream/fx/main 2t