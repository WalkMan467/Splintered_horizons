# Skill

execute \
    if score $monster.chapter_2.elekiel.1 monster.elekiel.skill.casting matches 0.. run \
scoreboard players add $monster.chapter_2.elekiel.1 monster.elekiel.skill.casting 1

execute \
    if score $monster.chapter_2.elekiel.2 monster.elekiel.skill.casting matches 0.. run \
scoreboard players add $monster.chapter_2.elekiel.2 monster.elekiel.skill.casting 1

# =============================================================================================

execute \
    if score $monster.chapter_2.elekiel.1 monster.elekiel.skill.cd matches 0.. run \
scoreboard players remove $monster.chapter_2.elekiel.1 monster.elekiel.skill.cd 1

execute \
    if score $monster.chapter_2.elekiel.2 monster.elekiel.skill.cd matches 0.. run \
scoreboard players remove $monster.chapter_2.elekiel.2 monster.elekiel.skill.cd 1

execute \
    if score $monster.chapter_2.elekiel.3 monster.elekiel.skill.cd matches 0.. run \
scoreboard players remove $monster.chapter_2.elekiel.3 monster.elekiel.skill.cd 1

execute if score $monster.chapter_2.elekiel.1 monster.elekiel.skill.cd matches ..0 run function monsters:chapter_2/elekiel/1/use
execute if score $monster.chapter_2.elekiel.2 monster.elekiel.skill.cd matches ..0 run function monsters:chapter_2/elekiel/2/use