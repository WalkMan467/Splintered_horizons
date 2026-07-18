# ## ---開頭--- ##

#     scoreboard players add #world_area.main.safe_zone.irina_temp global.main 0

#     execute \
#         as @n[tag=aj.irina.root,limit=1,tag=world_area.main.safe_zone.irina,distance=0..,type=item_display] at @s \
#         if entity @p[distance=..6] facing entity @p[distance=..6] eyes run \
#     rotate @s ~ 0
#     execute \
#         as @n[tag=aj.irina.root,limit=1,tag=world_area.main.safe_zone.irina,distance=0..,type=item_display] at @s \
#         unless entity @p[distance=..6] run \
#     rotate @s 45 0

#     # Detect
#     execute \
#         positioned 741 145 968 \
#         store result score #world_area.main.safe_zone.irina global.main \
#     if entity @a[distance=..16,gamemode=!spectator]

#     # If true;
#     execute \
#         positioned 741 145 968 \
#         if score #world_area.main.safe_zone.irina global.main matches 1 \
#         if score #world_area.main.safe_zone.irina_temp global.main matches 0 run \
#     function world_area:main/safe_zone/irina/true

#     # Else
#     execute \
#         positioned 741 145 968 \
#         if score #world_area.main.safe_zone.irina global.main matches 0 \
#         if score #world_area.main.safe_zone.irina_temp global.main matches 1 run \
#     function world_area:main/safe_zone/irina/false