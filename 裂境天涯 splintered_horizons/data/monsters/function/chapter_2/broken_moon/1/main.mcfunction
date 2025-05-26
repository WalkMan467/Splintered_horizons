# 施法主程式
# @s = BOSS
execute if entity @s[tag=monster.broken_moon.passive.cding] run function monsters:chapter_2/broken_moon/1/end

execute if score @s monster.broken_moon.skill.1.casting matches 1.. if score @s monster.skill.silence matches 1.. run function monsters:chapter_2/broken_moon/1/end
execute if score @s monster.broken_moon.skill.1.casting matches 1.. if score @s monster.skill.silence matches 1.. run return 0

execute if score @s monster.broken_moon.skill.1.casting matches 1 run function monsters:chapter_2/broken_moon/1/0

# 釋放前提示
execute if score @s monster.broken_moon.skill.1.casting matches 11 run playsound minecraft:entity.warden.sonic_charge voice @a ~ ~1 ~ 2 2

# 開始偵測是否還有能量跟技能剩餘次數
execute if score @s monster.broken_moon.skill.1.casting matches 30.. unless score @s monster.broken_moon.1.count matches 1.. run function monsters:chapter_2/broken_moon/1/end

# 消耗能量並且釋放技能
execute if score @s monster.broken_moon.skill.1.casting matches 30 if score @s monster.broken_moon.1.count matches 1.. run playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 5 1
execute if score @s monster.broken_moon.skill.1.casting matches 40 if score @s monster.broken_moon.1.count matches 1.. run function monsters:chapter_2/broken_moon/1/run

execute if score @s monster.broken_moon.skill.1.casting matches 50 if score @s monster.broken_moon.1.count matches 1.. run playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 5 1
execute if score @s monster.broken_moon.skill.1.casting matches 60 if score @s monster.broken_moon.1.count matches 1.. run function monsters:chapter_2/broken_moon/1/run

execute if score @s monster.broken_moon.skill.1.casting matches 70 if score @s monster.broken_moon.1.count matches 1.. run playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 5 1
execute if score @s monster.broken_moon.skill.1.casting matches 80 if score @s monster.broken_moon.1.count matches 1.. run function monsters:chapter_2/broken_moon/1/run

execute if score @s monster.broken_moon.skill.1.casting matches 90 if score @s monster.broken_moon.1.count matches 1.. run playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 5 1
execute if score @s monster.broken_moon.skill.1.casting matches 100 if score @s monster.broken_moon.1.count matches 1.. run function monsters:chapter_2/broken_moon/1/run

execute if score @s monster.broken_moon.skill.1.casting matches 110 if score @s monster.broken_moon.1.count matches 1.. run playsound minecraft:entity.illusioner.cast_spell voice @a ~ ~1 ~ 5 1
execute if score @s monster.broken_moon.skill.1.casting matches 120 if score @s monster.broken_moon.1.count matches 1.. run function monsters:chapter_2/broken_moon/1/run

# 解除鎖定 & 終止技能運行

execute if score @s monster.broken_moon.skill.1.casting matches 120.. run function monsters:chapter_2/broken_moon/1/end