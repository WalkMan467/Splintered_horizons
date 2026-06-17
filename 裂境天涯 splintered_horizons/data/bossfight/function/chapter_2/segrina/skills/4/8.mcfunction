# 清除無敵
scoreboard players reset @s monster.segrina.skill.4.effect

effect give @s[tag=monster.segrina.skill.4.hp_lock] instant_health 1 27 true

tag @s remove monster.segrina.skill.4.hp_lock

# 清除無敵狀態
function bossfight:chapter_2/segrina/skills/4/5