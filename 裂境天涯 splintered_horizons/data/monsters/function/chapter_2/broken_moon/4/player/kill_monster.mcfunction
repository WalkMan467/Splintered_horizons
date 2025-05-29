advancement revoke @s only monsters:chapter_2/broken_moon/4/player/kill_monster

execute if entity @s[tag=!monster.broken_moon.skill.4.death_protection] run function monsters:chapter_2/broken_moon/4/player/death_protection
execute if entity @s[tag=monster.broken_moon.skill.4.death_protection] as @r[tag=!monster.broken_moon.skill.4.death_protection,tag=!chapter_2.broken_moon.lose] run function monsters:chapter_2/broken_moon/4/player/death_protection