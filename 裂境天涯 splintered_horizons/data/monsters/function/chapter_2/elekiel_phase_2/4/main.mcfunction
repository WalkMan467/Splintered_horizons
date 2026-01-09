scoreboard players add @s monster.elekiel_phase_2.skill.4.casting 1

execute \
    if score @s monster.elekiel_phase_2.skill.4.casting matches 1 run \
function monsters:chapter_2/elekiel_phase_2/4/0

execute \
    if score @s monster.elekiel_phase_2.skill.4.casting matches 1..128 \
    as @p[tag=monster.elekiel_phase_2.4.portal.target] at @s run \
tp 0020ac89-fe15-d2ca-0024-d629fff9b4fb ~ ~ ~

execute \
    if score @s monster.elekiel_phase_2.skill.4.casting matches 28 run \
function monsters:chapter_2/elekiel_phase_2/4/2

execute \
    if score @s monster.elekiel_phase_2.skill.4.casting matches 128 run \
function monsters:chapter_2/elekiel_phase_2/4/3

execute \
    if score @s monster.elekiel_phase_2.skill.4.casting matches 128..328 run \
function monsters:chapter_2/elekiel_phase_2/4/5

execute \
    if score @s monster.elekiel_phase_2.skill.4.casting matches 308 run \
function monsters:chapter_2/elekiel_phase_2/4/6


execute \
    if score @s monster.elekiel_phase_2.skill.4.casting matches 328 run \
function particle:technological_force_wave/use

execute \
    if score @s monster.elekiel_phase_2.skill.4.casting matches 328 \
    as @a[sort=arbitrary,distance=..60] at @s run \
function monsters:chapter_2/elekiel_phase_2/4/7


execute \
    if score @s monster.elekiel_phase_2.skill.4.casting matches 368.. run \
function monsters:chapter_2/elekiel_phase_2/4/end