# 施法主程式
execute if entity @s[tag=monster.broken_moon.passive.cding] run function monsters:chapter_2/broken_moon/3/end

execute if score @s monster.broken_moon.skill.3.casting matches 1.. if score @s monster.skill.silence matches 1.. run function monsters:chapter_2/broken_moon/3/end
execute if score @s monster.broken_moon.skill.3.casting matches 1.. unless score @s monster.broken_moon.passive matches 1.. run function monsters:chapter_2/broken_moon/1/reset
execute if score @s monster.broken_moon.skill.3.casting matches 1.. unless score @s monster.broken_moon.passive matches 1.. run function monsters:chapter_2/broken_moon/3/end
execute if score @s monster.broken_moon.skill.3.casting matches 1.. if score @s monster.skill.silence matches 1.. run return 0

execute if score @s monster.broken_moon.skill.3.casting matches 1 if score @s monster.broken_moon.passive matches 1.. run scoreboard players remove @s monster.broken_moon.passive 1
execute if score @s monster.broken_moon.skill.3.casting matches 1 as @a[distance=..60,gamemode=!spectator] run function monsters:chapter_2/broken_moon/3/player/use
execute if score @s monster.broken_moon.skill.3.casting matches 1 run function monsters:chapter_2/broken_moon/3/sun_area/summon
execute if score @s monster.broken_moon.skill.3.casting matches 1 run scoreboard players set #monster.broken_moon.skill.3.player_sun monster.broken_moon.skill.3.player_timer 5
execute if score @s monster.broken_moon.skill.3.casting matches 1 run scoreboard players set #monster.broken_moon.skill.3.player_sun monster.broken_moon.skill.3.count 2

# 解除鎖定 & 終止技能運行

execute if score @s monster.broken_moon.skill.3.casting matches 2.. run function monsters:chapter_2/broken_moon/3/end