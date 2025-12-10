# tag @a remove sys.black_hole_gravity.player

# execute as @a[gamemode=!spectator,gamemode=!creative] at @s unless predicate players:detect/input/sneak if biome ~ ~ ~ #world_area:chapter_1 run tag @s add sys.black_hole_gravity.player

# execute as @a[tag=sys.black_hole_gravity.player] at @s facing 305 181 -225 rotated ~ 0 if block ^ ^ ^0.5 #penetrate if block ^ ^1 ^0.5 #penetrate run tp @s ^ ^ ^0.005

# tag @a remove sys.black_hole_gravity.player
# execute unless entity @p[sort=arbitrary,tag=sys.black_hole_gravity.player] run schedule function sys:black_hole_gravity/main 1t