# Special Skill 1

# Skill 1

execute \
    as @n[sort=arbitrary,distance=0..,tag=monsters.segrina,type=zombie] at @s \
    if entity @s[tag=chapter_2.segrina.1] run \
function monsters:chapter_2/segrina/1/main

# Skill 2

execute \
    as @n[sort=arbitrary,distance=0..,tag=monsters.segrina,type=zombie] at @s \
    if entity @s[tag=chapter_2.segrina.2] run \
function monsters:chapter_2/segrina/2/main

# Skill 3

execute \
    as @n[sort=arbitrary,distance=0..,tag=monsters.segrina,type=zombie] at @s \
    if entity @s[tag=chapter_2.segrina.3] run \
function monsters:chapter_2/segrina/3/main

# Skill 34

execute \
    as @n[sort=arbitrary,distance=0..,tag=monsters.segrina,type=zombie] at @s \
    if entity @s[tag=chapter_2.segrina.4] run \
function monsters:chapter_2/segrina/4/main

# Monster Self

execute \
    as @n[sort=arbitrary,distance=0..,tag=monsters.segrina,type=zombie] at @s run \
function monsters:chapter_2/segrina/main.monster

execute \
    as @a[tag=chapter_2.segrina.lose] \
    positioned 725 107 605 \
    unless entity @s[dx=73,dy=26,dz=73] \
    at @s \
    facing entity @n[sort=arbitrary,distance=0..,tag=monsters.segrina,type=zombie] feet run \
tp @s ^ ^ ^1

execute \
    as @e[distance=0..,sort=arbitrary,tag=monster.segrina.skill.4.monster,type=skeleton] at @s \
    positioned 725 107 605 \
    unless entity @s[dx=73,dy=26,dz=73] at @s \
    facing 762 107 642 run \
tp @s ^ ^ ^1

function monsters:chapter_2/segrina/interface/in

execute \
    as @a[tag=!monster.segrina.bossfight.player,tag=!chapter_2.segrina.lose] \
    positioned 725 107 605 \
    if entity @s[dx=73,dy=26,dz=73] at @s run \
function bossfight:chapter_2/segrina/player_death

execute \
    as @a[tag=monster.segrina.bossfight.player] \
    positioned 725 107 605 \
    unless entity @s[dx=73,dy=26,dz=73] run \
tag @s remove monster.segrina.bossfight.player

function monsters:chapter_2/segrina/interface/out

execute \
    if entity @n[sort=arbitrary,distance=0..,tag=monsters.segrina,type=zombie] run \
schedule function monsters:chapter_2/segrina/main 1t