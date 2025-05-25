# 計時器導向

execute as @n[tag=monsters.broken_moon,type=stray] run function monsters:chapter_2/broken_moon/cd
execute as @n[tag=monsters.broken_moon,type=stray] run function monsters:chapter_2/broken_moon/passive/timer

execute as @a at @s run function monsters:chapter_2/broken_moon/3/player/timer
execute as @a at @s run function monsters:chapter_2/broken_moon/4/player/timer

function monsters:chapter_2/broken_moon/3/sun_area/timer