execute unless score #boss_area.chapter_2.elekiel global.main matches 1.. run return 0

say death
tag @s add chapter_2.elekiel.lose
gamemode spectator @a[tag=chapter_2.elekiel.lose]