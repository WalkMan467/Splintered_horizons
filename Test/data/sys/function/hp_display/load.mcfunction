
scoreboard objectives add hp_display dummy
scoreboard objectives add hp_display.hpmax dummy
scoreboard players add .strict hp_display 0

execute if entity 000000de-0000-0015-0000-007900000001 run return 0
forceload add 0 0 0 0
summon text_display 0 -65 0 {UUID:[I; 222, 21, 121, 1],Tags:["hp_display"]}