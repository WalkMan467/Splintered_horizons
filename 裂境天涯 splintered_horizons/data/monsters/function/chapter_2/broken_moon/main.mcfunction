
# 技能

execute as @s[tag=monsters.broken_moon,tag=chapter_2.broken_moon.1] at @s run function monsters:chapter_2/broken_moon/1/main
execute as @s[tag=monsters.broken_moon,tag=chapter_2.broken_moon.2] at @s run function monsters:chapter_2/broken_moon/2/main

execute as @s[tag=monsters.broken_moon.1.throwing_objects,type=block_display] at @s run function monsters:chapter_2/broken_moon/1/throwing_objects/main


# BOSS 自身
execute as @s[tag=monsters.broken_moon] at @s run function monsters:chapter_2/broken_moon/main.monster