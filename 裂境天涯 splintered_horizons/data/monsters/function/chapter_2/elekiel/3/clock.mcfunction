
execute if score global monster.elekiel.3.timer matches 15 run data modify entity 00000037-0000-0079-0000-001500000001 text set value [{"text":"░░░░░░░░░░░░░░","color":"green"},{"text":"░","color":"white"}]
execute if score global monster.elekiel.3.timer matches 14 run data modify entity 00000037-0000-0079-0000-001500000001 text set value [{"text":"░░░░░░░░░░░░░","color":"green"},{"text":"░░","color":"white"}]
execute if score global monster.elekiel.3.timer matches 13 run data modify entity 00000037-0000-0079-0000-001500000001 text set value [{"text":"░░░░░░░░░░░░","color":"green"},{"text":"░░░","color":"white"}]
execute if score global monster.elekiel.3.timer matches 12 run data modify entity 00000037-0000-0079-0000-001500000001 text set value [{"text":"░░░░░░░░░░░","color":"green"},{"text":"░░░░","color":"white"}]
execute if score global monster.elekiel.3.timer matches 11 run data modify entity 00000037-0000-0079-0000-001500000001 text set value [{"text":"░░░░░░░░░░","color":"green"},{"text":"░░░░░","color":"white"}]
execute if score global monster.elekiel.3.timer matches 10 run data modify entity 00000037-0000-0079-0000-001500000001 text set value [{"text":"░░░░░░░░░","color":"green"},{"text":"░░░░░░","color":"white"}]
execute if score global monster.elekiel.3.timer matches 8 run data modify entity 00000037-0000-0079-0000-001500000001 text set value [{"text":"░░░░░░░░","color":"green"},{"text":"░░░░░░░","color":"white"}]
execute if score global monster.elekiel.3.timer matches 7 run data modify entity 00000037-0000-0079-0000-001500000001 text set value [{"text":"░░░░░░░","color":"green"},{"text":"░░░░░░░░","color":"white"}]
execute if score global monster.elekiel.3.timer matches 6 run data modify entity 00000037-0000-0079-0000-001500000001 text set value [{"text":"░░░░░░","color":"green"},{"text":"░░░░░░░░░","color":"white"}]
execute if score global monster.elekiel.3.timer matches 5 run data modify entity 00000037-0000-0079-0000-001500000001 text set value [{"text":"░░░░░","color":"gold"},{"text":"░░░░░░░░░░","color":"white"}]
execute if score global monster.elekiel.3.timer matches 4 run data modify entity 00000037-0000-0079-0000-001500000001 text set value [{"text":"░░░░","color":"gold"},{"text":"░░░░░░░░░░░","color":"white"}]
execute if score global monster.elekiel.3.timer matches 3 run data modify entity 00000037-0000-0079-0000-001500000001 text set value [{"text":"░░░","color":"red"},{"text":"░░░░░░░░░░░░","color":"white"}]
execute if score global monster.elekiel.3.timer matches 2 run data modify entity 00000037-0000-0079-0000-001500000001 text set value [{"text":"░░","color":"red"},{"text":"░░░░░░░░░░░░░","color":"white"}]
execute if score global monster.elekiel.3.timer matches 1 run data modify entity 00000037-0000-0079-0000-001500000001 text set value [{"text":"░","color":"red"},{"text":"░░░░░░░░░░░░░░","color":"white"}]
execute if score global monster.elekiel.3.timer matches 0 run data modify entity 00000037-0000-0079-0000-001500000001 text set value [{"text":"░░░░░░░░░░░░░░░","color":"white"}]


execute unless score global monster.elekiel.3.timer matches ..6 run return 0
playsound minecraft:block.note_block.hat voice @s ~ ~1 ~ 1 1
playsound minecraft:block.note_block.hat voice @s ~ ~1 ~ 1 1
playsound minecraft:block.note_block.hat voice @s ~ ~1 ~ 1 1

execute if score global monster.elekiel.3.timer matches 1.. run return 0

kill @s[gamemode=!creative,tag=!chapter_2.elekiel.lose]
function monsters:chapter_2/elekiel/3/reset