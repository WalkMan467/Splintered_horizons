function bossfight:chapter_2/act/elekiel/1/main
function bossfight:chapter_2/act/elekiel_phase_2/1/main
function bossfight:chapter_2/act/segrina/1/main

execute \
    as @a at @s \
    if entity @n[tag=bossfight.act,distance=..60,type=interaction] run \
scoreboard players set @s player.disable.tp_book 10

schedule function bossfight:chapter_2/act/main 1t