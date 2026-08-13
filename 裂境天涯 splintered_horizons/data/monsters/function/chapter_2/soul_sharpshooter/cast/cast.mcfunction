
## ----- Casting begins ----- ##
function monsters:-init/no_cast

# Skill
execute \
    if score @s monster.skill.rdm.skill matches 1 run \
function monsters:chapter_2/soul_sharpshooter/1/use

execute \
    if score @s monster.skill.rdm.skill matches 2 run \
function monsters:chapter_2/soul_sharpshooter/2/use