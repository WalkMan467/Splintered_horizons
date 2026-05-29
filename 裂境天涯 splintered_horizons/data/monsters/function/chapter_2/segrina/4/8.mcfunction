# 清除鎖 1 血
attribute @s max_health modifier remove monster.segrina.skill.4.1
attribute @s max_health modifier remove monster.segrina.skill.4.2
attribute @s max_health modifier remove monster.segrina.skill.4.3
attribute @s max_health modifier remove monster.segrina.skill.4.4
attribute @s max_health base reset

scoreboard players reset @s monster.segrina.skill.4.effect

effect give @s[tag=monster.segrina.skill.4.hp_lock] instant_health 1 27 true

tag @s remove monster.segrina.skill.4.hp_lock

# 清除無敵狀態
function monsters:chapter_2/segrina/4/5