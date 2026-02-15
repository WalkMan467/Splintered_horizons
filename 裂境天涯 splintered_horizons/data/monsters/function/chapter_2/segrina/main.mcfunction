# Special Skill 1

# Skill 1

execute \
    as 00007d7b-0000-0080-0000-008000000005 at @s \
    if entity @s[tag=chapter_2.segrina.1] run \
function monsters:chapter_2/segrina/1/main

# Skill 2

execute \
    as 00007d7b-0000-0080-0000-008000000005 at @s \
    if entity @s[tag=chapter_2.segrina.2] run \
function monsters:chapter_2/segrina/2/main

# Monster Self

execute \
    as 00007d7b-0000-0080-0000-008000000005 at @s run \
function monsters:chapter_2/segrina/main.monster

schedule function monsters:chapter_2/segrina/main 1t