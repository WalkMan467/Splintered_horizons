# 施法主程式

execute if score @s monster.skill.casting matches 1.. if score @s monster.skill.silence matches 1.. run function monsters:chapter_2/broken_moon/1/end
execute if score @s monster.skill.casting matches 1.. if score @s monster.skill.silence matches 1.. run return 0

execute if score @s monster.skill.casting matches 1 run particle flash ~ ~0.5 ~ 0 0 0 0 1 normal @a
execute if score @s monster.skill.casting matches 1 run playsound minecraft:item.trident.return voice @a ~ ~ ~ 1 1
execute if score @s monster.skill.casting matches 1 unless entity @p[distance=..8] run spreadplayers 10000 -10000 1 15 under 60 false @s
execute if score @s monster.skill.casting matches 1 if entity @p[distance=..8] run spreadplayers 10000 -10000 15 15 under 60 false @s
execute if score @s monster.skill.casting matches 2 run tp @s ~ 60 ~
execute if score @s monster.skill.casting matches 2 run particle flash ~ ~0.5 ~ 0 0 0 0 1 normal @a

# 解除鎖定 & 終止技能運行

execute if score @s monster.skill.casting matches 2.. run function monsters:chapter_2/broken_moon/cast/end