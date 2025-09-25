
## ----- Casting begins ----- ##
function monsters:-init/no_cast

# Skills

execute if score @s monster.skill.rdm.skill matches 1 run function monsters:chapter_1/abyssal_soulreaper/1/use
execute if score @s monster.skill.rdm.skill matches 2 run function monsters:chapter_1/abyssal_soulreaper/2/use