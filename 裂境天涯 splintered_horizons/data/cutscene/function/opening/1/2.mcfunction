execute as @n[tag=cutscene.opening.1,limit=1,type=block_display] at @s run data merge entity @s {teleport_duration:59}
execute as @n[tag=cutscene.opening.1,limit=1,type=block_display] at @s run tp @s 10035.52 130.74 10267.71 -30.0 7.5

schedule function cutscene:opening/1/3 2s