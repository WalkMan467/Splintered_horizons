# Special Skill 1

# Skill 1

execute \
    as ffff8285-0000-0c33-0000-5a5c0162349d at @s \
    if entity @s[tag=chapter_2.segrina.1] run \
function monsters:chapter_2/segrina/1/main

# Skill 2

execute \
    as ffff8285-0000-0c33-0000-5a5c0162349d at @s \
    if entity @s[tag=chapter_2.segrina.2] run \
function monsters:chapter_2/segrina/2/main

# Skill 3

execute \
    as ffff8285-0000-0c33-0000-5a5c0162349d at @s \
    if entity @s[tag=chapter_2.segrina.3] run \
function monsters:chapter_2/segrina/3/main

# Skill 34

execute \
    as ffff8285-0000-0c33-0000-5a5c0162349d at @s \
    if entity @s[tag=chapter_2.segrina.4] run \
function monsters:chapter_2/segrina/4/main

# Monster Self

execute \
    as ffff8285-0000-0c33-0000-5a5c0162349d at @s run \
function monsters:chapter_2/segrina/main.monster

execute \
    as @a[tag=chapter_2.segrina.lose] \
    positioned 725 107 605 \
    unless entity @s[dx=73,dy=26,dz=73] \
    at @s \
    facing entity ffff8285-0000-0c33-0000-5a5c0162349d feet run \
tp @s ^ ^ ^1

execute \
    as @e[distance=0..,sort=arbitrary,tag=monster.segrina.skill.4.monster,type=skeleton] at @s \
    positioned 725 107 605 \
    unless entity @s[dx=73,dy=26,dz=73] at @s \
    facing 762 107 642 run \
tp @s ^ ^ ^1


execute \
    positioned 725 107 605 \
    unless entity @p[sort=arbitrary,dx=73,dy=26,dz=73,tag=!chapter_2.segrina.lose] run \
function monsters:chapter_2/segrina/void

execute \
    if score #difficulty global.main matches 0 run \
function monsters:chapter_2/segrina/void

execute \
    if entity ffff8285-0000-0c33-0000-5a5c0162349d run \
schedule function monsters:chapter_2/segrina/main 1t