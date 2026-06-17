# 鎖 1 血並給無敵

attribute @s max_health modifier add monster.segrina.skill.4.1 -4 add_value
attribute @s max_health modifier add monster.segrina.skill.4.2 -4 add_value
attribute @s max_health modifier add monster.segrina.skill.4.3 -4 add_value
attribute @s max_health modifier add monster.segrina.skill.4.4 -4 add_value
attribute @s max_health modifier add monster.segrina.skill.4.5 -4 add_value

attribute @s max_health base set 1

scoreboard players set @s monster.segrina.skill.4.effect 5
tag @s add monster.segrina.skill.4.hp_lock
scoreboard players set @s monster.segrina.skill.4.invincible 600
effect give @s glowing 30 255 true

function bossfight:chapter_2/segrina/skills/4/4