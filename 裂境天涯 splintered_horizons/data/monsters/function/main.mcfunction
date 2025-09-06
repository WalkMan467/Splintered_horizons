## ----- 怪物主程式 ----- ##

execute as @s[tag=monsters.soul_tree_remnant] run function monsters:chapter_2/soul_tree_remnant/main
function monsters:chapter_2/forest_messenger/main
function monsters:chapter_2/forest_messenger/cocoon/main
execute as @s[tag=monsters.elekiel] run function monsters:chapter_2/elekiel/main
function monsters:chapter_1/abyssal_black_knight/main
function monsters:chapter_3/corroder/main


execute as @s[tag=abyss_berserker] unless data entity @s {HurtTime:0s} run function monsters:chapter_1/abyss_berserker/run

execute as @s[type=area_effect_cloud] at @s run function monsters:chapter_3/finality_creeper/main

## ----- 偵測怪物死亡 ----- ##

function monsters:detect_kill/loop

## ----- 怪物技能系統 ----- ##
# 怪物即將施法提示(1s)
execute as @s[tag=monster,scores={monster.skill.cast.cd=30},tag=!hide_skill_tip] run function monsters:unlease_skill_tip

# 怪物技能CD冷卻
scoreboard players remove @s[tag=monster,scores={monster.skill.cast.cd=0..},tag=!freeze] monster.skill.cast.cd 1

# 怪物技能施法中
scoreboard players add @s[tag=monster] monster.skill.casting 1

# 技能沉默
scoreboard players remove @s[tag=monster,scores={monster.skill.silence=0..}] monster.skill.silence 1