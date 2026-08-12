
# Skill 1

execute \
    as @n[sort=arbitrary,distance=0..,tag=monsters.elekiel,type=skeleton] at @s \
    if entity @s[tag=chapter_2.elekiel.1] run \
function bossfight:chapter_2/elekiel/skills/1/main

# Skill 2

execute \
    as @n[sort=arbitrary,distance=0..,tag=monsters.elekiel,type=skeleton] at @s \
    if entity @s[tag=chapter_2.elekiel.2] run \
function bossfight:chapter_2/elekiel/skills/2/main

# Monster Self

execute \
    as @n[sort=arbitrary,distance=0..,tag=monsters.elekiel,type=skeleton] at @s run \
function bossfight:chapter_2/elekiel/skills/main.monster

execute \
    positioned 912 60 2018 \
    as @a[sort=arbitrary,distance=..30] at @s run \
function bossfight:chapter_2/elekiel/spawnpoint

execute \
    if entity @n[sort=arbitrary,distance=0..,tag=monsters.elekiel,type=skeleton] run \
schedule function bossfight:chapter_2/elekiel/skills/main 1t