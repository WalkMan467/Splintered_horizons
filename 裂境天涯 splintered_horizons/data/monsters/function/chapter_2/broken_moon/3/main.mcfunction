# 施法主程式

execute if score @s monster.skill.casting matches 1.. if score @s monster.skill.silence matches 1.. run function monsters:chapter_2/broken_moon/1/end
execute if score @s monster.skill.casting matches 1.. if score @s monster.skill.silence matches 1.. run return 0

execute if score @s monster.skill.casting matches 1 as @a[distance=..60,gamemode=!spectator] run function monsters:chapter_2/broken_moon/3/player/use

# 解除鎖定 & 終止技能運行

execute if score @s monster.skill.casting matches 2.. run function monsters:chapter_2/broken_moon/cast/end