# Special Skill 1

# Skill 1
execute as 00000100-0000-0080-0000-008000000005 at @s if entity @s[tag=chapter_2.elekiel_phase_2.1] run function monsters:chapter_2/elekiel_phase_2/1/main

# Skill 2
execute as 00000100-0000-0080-0000-008000000005 at @s if entity @s[tag=chapter_2.elekiel_phase_2.2] run function monsters:chapter_2/elekiel_phase_2/2/main

# Skill 3
execute as 00000100-0000-0080-0000-008000000005 at @s if entity @s[tag=chapter_2.elekiel_phase_2.3] run function monsters:chapter_2/elekiel_phase_2/3/main

# Skill 4
execute as 00000100-0000-0080-0000-008000000005 at @s if entity @s[tag=chapter_2.elekiel_phase_2.4] run function monsters:chapter_2/elekiel_phase_2/4/main

# Monster Self
execute as 00000100-0000-0080-0000-008000000005 at @s run function monsters:chapter_2/elekiel_phase_2/main.monster

# Players
execute as @a at @s run function monsters:chapter_2/elekiel_phase_2/player/main

schedule function monsters:chapter_2/elekiel_phase_2/main 1t