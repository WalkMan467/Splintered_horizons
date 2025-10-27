execute store result score #monster.elekiel_phase_2.3.summon_point.rdm global.main run random value 1..3

execute if score #monster.elekiel_phase_2.3.summon_point.rdm global.main matches 1 summon skeleton run function monsters:chapter_2/elekiel_phase_2/3/monsters_data/forest_messenger
execute if score #monster.elekiel_phase_2.3.summon_point.rdm global.main matches 2 summon skeleton run function monsters:chapter_2/elekiel_phase_2/3/monsters_data/abyss_skeleton
execute if score #monster.elekiel_phase_2.3.summon_point.rdm global.main matches 3 summon creeper run function monsters:chapter_2/elekiel_phase_2/3/monsters_data/creeper

kill @s