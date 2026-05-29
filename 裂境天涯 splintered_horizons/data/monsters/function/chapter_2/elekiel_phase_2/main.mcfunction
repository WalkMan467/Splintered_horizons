# Special Skill 1

# Skill 1

execute \
    as @n[sort=arbitrary,distance=0..,tag=monsters.elekiel_phase_2,type=skeleton] at @s \
    if entity @s[tag=chapter_2.elekiel_phase_2.1] run \
function monsters:chapter_2/elekiel_phase_2/1/main

# Skill 2

execute \
    as @n[sort=arbitrary,distance=0..,tag=monsters.elekiel_phase_2,type=skeleton] at @s \
    if entity @s[tag=chapter_2.elekiel_phase_2.2] run \
function monsters:chapter_2/elekiel_phase_2/2/main

# Skill 3

execute \
    as @n[sort=arbitrary,distance=0..,tag=monsters.elekiel_phase_2,type=skeleton] at @s \
    if entity @s[tag=chapter_2.elekiel_phase_2.3] run \
function monsters:chapter_2/elekiel_phase_2/3/main

# Skill 4

execute \
    as @n[sort=arbitrary,distance=0..,tag=monsters.elekiel_phase_2,type=skeleton] at @s \
    if entity @s[tag=chapter_2.elekiel_phase_2.4] run \
function monsters:chapter_2/elekiel_phase_2/4/main

# Skill 4

execute \
    as @n[sort=arbitrary,distance=0..,tag=monsters.elekiel_phase_2,type=skeleton] at @s \
    if entity @s[tag=chapter_2.elekiel_phase_2.5] run \
function monsters:chapter_2/elekiel_phase_2/5/main

# Monster Self

execute \
    as @n[sort=arbitrary,distance=0..,tag=monsters.elekiel_phase_2,type=skeleton] at @s run \
function monsters:chapter_2/elekiel_phase_2/main.monster

# Players

execute \
    as @a at @s run \
function monsters:chapter_2/elekiel_phase_2/player/main

execute \
    positioned -916 60 2750 \
    as @a[distance=..60] at @s run \
advancement grant @s only music:chapter_2/bossfight/3/play

execute \
    positioned -916 60 2750 \
    as @a[distance=60..] at @s run \
advancement grant @s only music:chapter_2/bossfight/3/reset


execute \
    if entity @n[sort=arbitrary,distance=0..,tag=monsters.elekiel_phase_2,type=skeleton] run \
schedule function monsters:chapter_2/elekiel_phase_2/main 1t