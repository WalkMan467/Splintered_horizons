execute if score @s monster.skill.freeze matches 0.. run return 0

# Skill 1
execute as @s[tag=chapter_1.abyss_crystal.1,type=zombie] run function monsters:other/abyss_crystal/1/main

# Monster Self
execute as @s[tag=monsters.abyss_crystal,type=zombie] run function monsters:other/abyss_crystal/main.monster