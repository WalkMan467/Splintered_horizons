execute as @n[tag=cutscene.opening.1,limit=1,type=block_display] at @s run data merge entity @s {teleport_duration:59}
execute as @n[tag=cutscene.opening.1,limit=1,type=block_display] at @s run tp @s 10034.33 129.92 10308.06 -83.40 17.97
schedule function cutscene:opening/2/use 4s