scoreboard players reset #monster.abyssal_black_knight.fx particle
execute rotated ~ 0 run function monsters:chapter_1/abyssal_black_knight/1/fx

playsound minecraft:entity.iron_golem.death voice @a ~ ~1 ~ 1 0.75
playsound minecraft:entity.iron_golem.hurt voice @a ~ ~1 ~ 1 0.5

effect give @e[type=!#dummy_mob,type=!player,distance=..4] speed 5 1 false

function monsters:chapter_1/abyssal_black_knight/cast/end