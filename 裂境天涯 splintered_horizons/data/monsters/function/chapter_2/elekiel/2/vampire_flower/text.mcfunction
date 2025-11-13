execute if score @s monster.elekiel.2.timer matches 10 run data modify entity @s text set value [{"text":"░░░░░░░░░░","color":"green"}]
execute if score @s monster.elekiel.2.timer matches 9 run data modify entity @s text set value [{"text":"░░░░░░░░░","color":"green"},{"text":"░","color":"white"}]
execute if score @s monster.elekiel.2.timer matches 8 run data modify entity @s text set value [{"text":"░░░░░░░░","color":"green"},{"text":"░░","color":"white"}]
execute if score @s monster.elekiel.2.timer matches 7 run data modify entity @s text set value [{"text":"░░░░░░░","color":"green"},{"text":"░░░","color":"white"}]
execute if score @s monster.elekiel.2.timer matches 6 run data modify entity @s text set value [{"text":"░░░░░░","color":"green"},{"text":"░░░░","color":"white"}]
execute if score @s monster.elekiel.2.timer matches 5 run data modify entity @s text set value [{"text":"░░░░░","color":"gold"},{"text":"░░░░░","color":"white"}]
execute if score @s monster.elekiel.2.timer matches 4 run data modify entity @s text set value [{"text":"░░░░","color":"gold"},{"text":"░░░░░░","color":"white"}]
execute if score @s monster.elekiel.2.timer matches 3 run data modify entity @s text set value [{"text":"░░░","color":"red"},{"text":"░░░░░░░","color":"white"}]
execute if score @s monster.elekiel.2.timer matches 2 run data modify entity @s text set value [{"text":"░░","color":"red"},{"text":"░░░░░░░░","color":"white"}]
execute if score @s monster.elekiel.2.timer matches 1 run data modify entity @s text set value [{"text":"░","color":"red"},{"text":"░░░░░░░░░","color":"white"}]
execute if score @s monster.elekiel.2.timer matches 0 run data modify entity @s text set value [{"text":"░░░░░░░░░░","color":"white"}]

execute if score @s monster.elekiel.2.timer matches 0.. store result bossbar chapter_2.elekiel.2 value run scoreboard players get @s monster.elekiel.2.timer
execute if score @s monster.elekiel.2.timer matches 0.. at 00000100-0000-0080-0000-008000000001 run bossbar set chapter_2.elekiel.2 players @a[distance=..60]

execute if score @s monster.elekiel.2.timer matches 5 run bossbar set chapter_2.elekiel.2 color yellow
execute if score @s monster.elekiel.2.timer matches 3 run bossbar set chapter_2.elekiel.2 color red

execute unless score @s monster.elekiel.2.timer matches 1..3 run return 0

execute as @a at @s run playsound minecraft:block.note_block.hat voice @s ~ ~1 ~ 1 1
execute as @a at @s run playsound minecraft:block.note_block.hat voice @s ~ ~1 ~ 1 1
execute as @a at @s run playsound minecraft:block.note_block.hat voice @s ~ ~1 ~ 1 1