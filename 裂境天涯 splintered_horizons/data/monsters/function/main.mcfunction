## ----- Monster Main Program ----- ##

execute as @s[tag=monsters.soul_tree_remnant] run function monsters:chapter_2/soul_tree_remnant/main
function monsters:chapter_2/forest_messenger/main
function monsters:chapter_2/forest_messenger/cocoon/main
execute as @s[tag=monsters.elekiel] run function monsters:chapter_2/elekiel/main
function monsters:chapter_1/abyssal_black_knight/main
function monsters:chapter_1/abyssal_soulreaper/main
function monsters:chapter_3/corroder/main
function monsters:other/abyss_crystal/main


execute as @s[tag=abyss_berserker] unless data entity @s {HurtTime:0s} run function monsters:chapter_1/abyss_berserker/run

execute as @s[type=area_effect_cloud] at @s run function monsters:chapter_3/finality_creeper/main

## ----- Detect monster death ----- ##

function monsters:detect_kill/loop

## ----- Monster Skill System ----- ##
# Monster is about to cast a spell (1s warning)
execute as @s[tag=monster,scores={monster.skill.cast.cd=30},tag=!hide_skill_tip] run function monsters:unlease_skill_tip

# Monster skill cooldown
scoreboard players remove @s[tag=monster,scores={monster.skill.cast.cd=0..},tag=!freeze] monster.skill.cast.cd 1

# Monster skill is being cast
scoreboard players add @s[tag=monster] monster.skill.casting 1

# Skill silenced
scoreboard players remove @s[tag=monster,scores={monster.skill.silence=0..}] monster.skill.silence 1