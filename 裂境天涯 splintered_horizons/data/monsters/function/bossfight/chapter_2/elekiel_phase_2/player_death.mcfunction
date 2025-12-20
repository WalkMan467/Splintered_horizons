execute unless score #boss_area.chapter_2.elekiel_phase_2 global.main matches 1.. run return 0

execute if entity @s[tag=monster.elekiel_phase_2.4.effect.target] at @s run function monsters:chapter_2/elekiel_phase_2/4/effect/false

tag @s add chapter_2.elekiel_phase_2.lose
gamemode spectator @a[tag=chapter_2.elekiel_phase_2.lose]