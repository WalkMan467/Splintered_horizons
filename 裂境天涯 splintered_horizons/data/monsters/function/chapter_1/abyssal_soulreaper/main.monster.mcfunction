# Cast
execute if score @s monster.skill.cast.cd matches ..0 run function monsters:chapter_1/abyssal_soulreaper/cast/cast

execute if entity @p[distance=..6] run scoreboard players set @s monster.skill.rdm.skill 1