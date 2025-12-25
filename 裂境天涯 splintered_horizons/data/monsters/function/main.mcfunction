## ----- Monster Main Program ----- ##

execute unless score #difficulty global.main matches 1.. run return 0

function monsters:chapter_2/soul_tree_remnant/main
function monsters:chapter_2/forest_messenger/main
function monsters:chapter_2/forest_messenger/cocoon/main
function monsters:chapter_1/abyssal_black_knight/main
function monsters:chapter_1/abyssal_soulreaper/main
function monsters:chapter_1/explosion_arrow_skeleton/main
function monsters:chapter_3/corroder/main
function monsters:chapter_3/sunfire_emissary/main
function monsters:chapter_3/emissary_of_the_temporal_rift/main
function monsters:chapter_3/bloody_blade_spider/main

function monsters:other/abyss_crystal/main
function monsters:other/sun_of_the_abyssal_eclipse/main


execute as @s[tag=abyss_berserker] unless data entity @s {HurtTime:0s} run function monsters:chapter_1/abyss_berserker/run

execute as @s[type=area_effect_cloud] at @s run function monsters:chapter_3/finality_creeper/main

## ----- Monster Skill sys ----- ##
# Monster is about to cast a spell (1s warning)
execute as @s[tag=monster,tag=!hide_skill_tip] if score @s monster.skill.cast.cd matches 30 unless score @s monster.skill.freeze matches 0.. run function monsters:unlease_skill_tip

# Monster skill cooldown
execute unless entity @s[tag=freeze] unless score @s monster.skill.freeze matches 0.. if score @s monster.skill.cast.cd matches 0.. run scoreboard players remove @s monster.skill.cast.cd 1

# Monster Freeze
execute as @s[scores={monster.skill.freeze=0..}] at @s run function monsters:freeze/main

# Monster skill is being cast
scoreboard players add @s[tag=monster] monster.skill.casting 1

# Skill silenced
scoreboard players remove @s[tag=monster,scores={monster.skill.silence=0..}] monster.skill.silence 1

tag @s remove monsters.guide