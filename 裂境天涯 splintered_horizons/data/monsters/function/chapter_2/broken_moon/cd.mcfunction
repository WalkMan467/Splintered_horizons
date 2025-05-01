# 這隻 BOSS 全部的技能 CD
execute if score @s monster.skill.silence matches 0.. run return 0


execute if score @s monster.broken_moon.skill.1.cd matches 1.. run scoreboard players remove @s monster.broken_moon.skill.1.cd 1
execute if score @s monster.broken_moon.skill.3.cd matches 0.. run scoreboard players remove @s monster.broken_moon.skill.3.cd 1
execute if score @s monster.broken_moon.passive.cd matches 0.. run scoreboard players remove @s monster.broken_moon.passive.cd 1
execute if score @s monster.broken_moon.skill.4.cd matches 0.. run scoreboard players remove @s monster.broken_moon.skill.4.cd 1