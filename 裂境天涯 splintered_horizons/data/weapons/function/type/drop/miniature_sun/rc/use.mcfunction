execute unless score @s player.click.interval matches ..1 run return fail
scoreboard players set @s player.click.interval 20
clear @s *[custom_data~{type:"drop",weapon:"miniature_sun",rc:1b}] 1

playsound minecraft:entity.horse.saddle voice @a ~ ~1 ~ 1 0.75


function weapons:type/drop/miniature_sun/rc/motion/use