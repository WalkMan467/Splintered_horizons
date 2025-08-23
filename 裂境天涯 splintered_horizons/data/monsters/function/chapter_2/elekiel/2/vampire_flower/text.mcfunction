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

execute unless score @s monster.elekiel.2.timer matches 1..3 run return 0

execute as @a at @s run playsound minecraft:block.note_block.hat voice @s ~ ~1 ~ 1 1
execute as @a at @s run playsound minecraft:block.note_block.hat voice @s ~ ~1 ~ 1 1
execute as @a at @s run playsound minecraft:block.note_block.hat voice @s ~ ~1 ~ 1 1