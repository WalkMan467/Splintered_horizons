# Tornado
execute as @e[type=block_display,tag=chapter_3.lord_of_the_cataclysm.1.1] at @s run function monsters:chapter_3/lord_of_the_cataclysm/1/3

# Monster Self
execute as @n[type=zombie,tag=monsters.lord_of_the_cataclysm] at @s run function monsters:chapter_3/lord_of_the_cataclysm/main.monster

schedule function monsters:chapter_3/lord_of_the_cataclysm/main 1t