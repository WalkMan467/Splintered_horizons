bossbar set minecraft:monsters.lord_of_the_cataclysm players @a[distance=..60]

# Bossbar
execute store result bossbar minecraft:monsters.lord_of_the_cataclysm max run attribute @s max_health get
execute store result bossbar minecraft:monsters.lord_of_the_cataclysm value run data get entity @s Health
bossbar set minecraft:monsters.lord_of_the_cataclysm visible true

# Skill 1
execute as @s[tag=chapter_3.lord_of_the_cataclysm.1] at @s run function monsters:chapter_3/lord_of_the_cataclysm/1/main

# Skill 2
execute as @s[tag=chapter_3.lord_of_the_cataclysm.2] at @s run function monsters:chapter_3/lord_of_the_cataclysm/2/main

# Skill 3
execute as @s[tag=chapter_3.lord_of_the_cataclysm.3] at @s run function monsters:chapter_3/lord_of_the_cataclysm/3/main

# Cast
execute if score @s monster.skill.cast.cd matches ..0 run function monsters:chapter_3/lord_of_the_cataclysm/cast/cast