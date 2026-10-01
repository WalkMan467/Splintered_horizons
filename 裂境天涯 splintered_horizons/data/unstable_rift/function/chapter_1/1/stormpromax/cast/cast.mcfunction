
## ----- 施法開始 ----- ##
function monsters:-init/no_cast

# Skill
execute if score @s monster.skill.rdm.skill matches 1 run function unstable_rift:chapter_1/1/stormpromax/1/use
execute if score @s monster.skill.rdm.skill matches 2 run function unstable_rift:chapter_1/1/stormpromax/2/use