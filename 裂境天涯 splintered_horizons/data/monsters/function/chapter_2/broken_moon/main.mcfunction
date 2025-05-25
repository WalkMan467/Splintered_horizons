
# 技能

execute as @s[tag=monsters.broken_moon,tag=chapter_2.broken_moon.1] at @s run function monsters:chapter_2/broken_moon/1/main
execute as @s[tag=monsters.broken_moon,tag=chapter_2.broken_moon.3] at @s run function monsters:chapter_2/broken_moon/3/main
execute as @s[tag=monsters.broken_moon,tag=chapter_2.broken_moon.4] at @s run function monsters:chapter_2/broken_moon/4/main

execute as @a if score @s monster.broken_moon.skill.3.count matches 1.. store result score @s monster.broken_moon.skill.3.player_sun run clear @s *[custom_data~{sun:1b} | custom_data~{sun:1}] 0

execute as @s[tag=monsters.broken_moon.1.throwing_objects,type=block_display] at @s run function monsters:chapter_2/broken_moon/1/throwing_objects/main

# 地形
execute positioned 1721 100 882 run function monsters:chapter_2/broken_moon/4/terrain/main


# BOSS 自身
execute as @s[tag=monsters.broken_moon] at @s run function monsters:chapter_2/broken_moon/main.monster

execute if entity @s[gamemode=spectator,tag=!animation] run return 0
