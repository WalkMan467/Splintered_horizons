# 鎖 1 血並給無敵

attribute @s max_health modifier add monster.segrina.skill.4.1 -0.25 add_multiplied_total
attribute @s max_health modifier add monster.segrina.skill.4.2 -0.25 add_multiplied_total
attribute @s max_health modifier add monster.segrina.skill.4.3 -0.25 add_multiplied_total
attribute @s max_health modifier add monster.segrina.skill.4.4 -0.25 add_multiplied_total

attribute @s max_health base set 1

scoreboard players set @s monster.segrina.skill.4.effect 4
tag @s add monster.segrina.skill.4.hp_lock

function monsters:chapter_2/segrina/4/4