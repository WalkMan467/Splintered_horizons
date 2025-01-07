
## ----- 施法開始 ----- ##
function monsters:-init/no_cast

tag @s add cast

# Skill

execute if score @s monster.skill.rdm.skill matches 2 run function monsters:chapter_1.walkman/2/use
execute if score @s monster.skill.rdm.skill matches 3 run function monsters:chapter_1.walkman/3/use
execute if score @s monster.skill.rdm.skill matches 4 run function monsters:chapter_1.walkman/4/use