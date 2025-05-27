execute as @a[gamemode=!spectator] at @s if function monsters:chapter_2/broken_moon/4/terrain/detect if entity @s[tag=monster.broken_moon.skill.4.death_protection] run function monsters:chapter_2/broken_moon/4/terrain/death_protection/player/true
execute as @a[gamemode=!spectator] at @s if function monsters:chapter_2/broken_moon/4/terrain/detect unless entity @s[tag=monster.broken_moon.skill.4.death_protection] run function monsters:chapter_2/broken_moon/4/terrain/death_protection/player/false

execute as @s[type=!#minecraft:dummy_mob,type=!player] at @s if function monsters:chapter_2/broken_moon/4/terrain/detect run function monsters:chapter_2/broken_moon/4/terrain/death_protection/monster/run

execute as @a unless score @s monster.broken_moon.skill.4.player_timer matches 0.. as @e[type=bogged,tag=monster.broken_moon.4.monster] at @s run function monsters:chapter_2/broken_moon/4/remove_monster