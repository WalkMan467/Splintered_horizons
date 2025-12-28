
# Skill 1

execute \
    as 00000100-0000-0080-0000-008000000001 at @s \
    if entity @s[tag=chapter_2.elekiel.1] run \
function monsters:chapter_2/elekiel/1/main

# Skill 2

execute \
    as 00000100-0000-0080-0000-008000000001 at @s \
    if entity @s[tag=chapter_2.elekiel.2] run \
function monsters:chapter_2/elekiel/2/main

# Monster Self

execute \
    as 00000100-0000-0080-0000-008000000001 at @s run \
function monsters:chapter_2/elekiel/main.monster

schedule function monsters:chapter_2/elekiel/main 1t