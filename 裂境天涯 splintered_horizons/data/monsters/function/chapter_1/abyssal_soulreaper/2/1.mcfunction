scoreboard players reset #monster.abyssal_soulreaper.fx particle

execute rotated 0 0 run function monsters:chapter_1/abyssal_soulreaper/2/fx

execute as @a[distance=4..10] run damage @s 5 mob_attack
execute as @a[distance=4..10] at @s run function monsters:chapter_1/abyssal_soulreaper/2/effect/use

playsound minecraft:entity.iron_golem.death voice @a ~ ~1 ~ 1 0.75
playsound minecraft:entity.zombie.break_wooden_door voice @a ~ ~1 ~ 0.5 0.75