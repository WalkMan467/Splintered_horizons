# Monsters
function monsters:chapter_2/soul_sharpshooter/main

execute as @s[tag=abyss_berserker] unless data entity @s {HurtTime:0s} run function monsters:abyss_berserker/run

## ----- 偵測怪物死亡 ----- ##

function monsters:detect_kill/loop

## ----- 怪物技能系統 ----- ##
# 怪物即將施法提示(1s)
execute as @s[tag=monster,scores={monster.skill.cast.cd=30}] run function monsters:unlease_skill_tip

# 怪物技能CD冷卻
scoreboard players remove @s[tag=monster,scores={monster.skill.cast.cd=0..}] monster.skill.cast.cd 1

# 怪物技能施法中
scoreboard players add @s[tag=monster] monster.skill.casting 1