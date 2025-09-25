scoreboard players add #monster.abyssal_soulreaper.fx particle 3

particle dust_color_transition{from_color: [0.0f, 0.75f, 0.75f], scale: 1.5f, to_color: [0.0f, 0.75f, 1.0f]} ^ ^ ^4 0 0 0 0 0 force @a

particle trial_spawner_detection_ominous ^ ^ ^4 0.1 0.1 0.1 0 2 normal @a

execute rotated ~3 0 if score #monster.abyssal_soulreaper.fx particle matches ..360 run function monsters:chapter_1/abyssal_soulreaper/1/fx