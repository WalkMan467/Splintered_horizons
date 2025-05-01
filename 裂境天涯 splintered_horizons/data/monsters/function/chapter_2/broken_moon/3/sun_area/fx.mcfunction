scoreboard players add #monster.broken_moon.skill.3.player_sun particle 3

particle minecraft:flame ^ ^0.5 ^4 ~ ~ ~ 0 0 force @a
particle minecraft:trial_spawner_detection ^ ^0.5 ^4 0.1 0.1 0.1 0 2 force @a

execute rotated ~3 0 if score #monster.broken_moon.skill.3.player_sun particle matches ..360 run function monsters:chapter_2/broken_moon/3/sun_area/fx