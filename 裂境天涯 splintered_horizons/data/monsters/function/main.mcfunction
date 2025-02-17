# 效能限制

execute if score #aj.performance_limit global.main matches 6.. as @e[tag=performance_limit,limit=1,sort=random] run function monsters:void

# Monsters
function monsters:chapter_2/soul_sharpshooter/main

execute as @s[tag=abyss_berserker] unless data entity @s {HurtTime:0s} run function monsters:abyss_berserker/run

execute as @s[tag=aj.abyssal_dragon.main] run function monsters:abyssal_dragon/loop

## ----- 偵測怪物死亡 ----- ##

function monsters:detect_kill/loop

## ----- 怪物技能系統 ----- ##
# 怪物即將施法提示(1s)
execute as @s[tag=monster,scores={monster.skill.cast.cd=30}] run function monsters:unlease_skill_tip

# 怪物技能CD冷卻
scoreboard players remove @s[tag=monster,scores={monster.skill.cast.cd=0..}] monster.skill.cast.cd 1

# 怪物技能施法中
scoreboard players add @s[tag=monster] monster.skill.casting 1