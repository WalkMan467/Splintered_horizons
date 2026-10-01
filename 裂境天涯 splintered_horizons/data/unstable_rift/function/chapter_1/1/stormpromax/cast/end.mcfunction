
## ----- 重製 ----- ##
scoreboard players reset @s monster.skill.casting

# 標籤
tag @s remove stormpm.1

# 隨機技能CD
# 技能冷卻走這包的絕對截止時間制：cast.at 存的是「可以放技能的那一 tick」。
#
# 不能寫 cast.cd —— monsters:main 每 tick 會用 cast.at - #gametime 把它重算掉，
# 那是給預告與 debug 看的衍生值。cast.dur 留著給技能預告算進度，
# cast.tip 要 reset 才會在下一輪重新預告一次。

execute store result score @s monster.skill.cast.at run random value 80..150
scoreboard players operation @s monster.skill.cast.dur = @s monster.skill.cast.at
scoreboard players operation @s monster.skill.cast.at += #gametime global.main
scoreboard players reset @s monster.skill.cast.tip
execute store result score @s monster.skill.rdm.skill run random value 1..2
