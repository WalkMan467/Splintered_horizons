
execute if score global monster.elekiel.3.timer matches 15 run data modify entity 00000037-0000-0079-0000-001500000001 d set value [{"text":"░░░░░░░░░░░░░░","color":"green"},{"text":"░","color":"white"}]
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

execute if score global monster.elekiel.3.timer matches 0.. store result bossbar chapter_2.elekiel.3 value run scoreboard players get global monster.elekiel.3.timer
execute if score global monster.elekiel.3.timer matches 0.. at 00000100-0000-0080-0000-008000000001 run bossbar set chapter_2.elekiel.3 players @a[distance=..60]

execute if score global monster.elekiel.3.timer matches 5 run bossbar set chapter_2.elekiel.3 color yellow
execute if score global monster.elekiel.3.timer matches 3 run bossbar set chapter_2.elekiel.3 color red

execute unless score global monster.elekiel.3.timer matches ..6 run return 0
playsound minecraft:block.note_block.hat voice @s ~ ~1 ~ 1 1
playsound minecraft:block.note_block.hat voice @s ~ ~1 ~ 1 1
playsound minecraft:block.note_block.hat voice @s ~ ~1 ~ 1 1

execute if score global monster.elekiel.3.timer matches 1.. run return 0

tag @a remove monster.elekiel_phase_2.4.effect.target

tag @a add temp
tag @a[tag=!animation,gamemode=spectator] remove temp
tag @a[tag=chapter_2.elekiel.lose] remove temp

tag @a[tag=temp] add forced_interrupt_animation
tag @a[tag=temp] add player.death

execute as @a[tag=temp] at @s run function players:stop_animation

kill @a[tag=player.death]

tag @a remove player.death

function monsters:chapter_2/elekiel/3/reset