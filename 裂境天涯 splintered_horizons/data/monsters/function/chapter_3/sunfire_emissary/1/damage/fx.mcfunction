scoreboard players add #monster.sunfire_emissary.1.damage.fx particle 10

particle trial_spawner_detection ^ ^ ^3 0.1 0 0.1 0 1 normal @a

execute rotated ~10 0 if score #monster.sunfire_emissary.1.damage.fx particle matches ..360 run function monsters:chapter_3/sunfire_emissary/1/damage/fx