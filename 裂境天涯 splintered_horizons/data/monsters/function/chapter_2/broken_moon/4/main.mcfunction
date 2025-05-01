# 施法主程式
execute if entity @s[tag=monster.broken_moon.passive.cding] run function monsters:chapter_2/broken_moon/4/end

execute if score @s monster.broken_moon.skill.4.casting matches 1 as @a[distance=..60] run function monsters:chapter_2/broken_moon/4/player/use
execute if score @s monster.broken_moon.skill.4.casting matches 1 run function monsters:chapter_2/broken_moon/4/terrain/true
execute if score @s monster.broken_moon.skill.4.casting matches 1 positioned 1698 101 859 run function monsters:chapter_2/broken_moon/4/summon_monster
execute if score @s monster.broken_moon.skill.4.casting matches 1 positioned 1698 101 905 run function monsters:chapter_2/broken_moon/4/summon_monster
execute if score @s monster.broken_moon.skill.4.casting matches 1 positioned 1744 101 905 run function monsters:chapter_2/broken_moon/4/summon_monster
execute if score @s monster.broken_moon.skill.4.casting matches 1 positioned 1744 101 859 run function monsters:chapter_2/broken_moon/4/summon_monster


# 解除鎖定 & 終止技能運行

execute if score @s monster.broken_moon.skill.4.casting matches 2.. run function monsters:chapter_2/broken_moon/4/end