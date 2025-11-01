execute store result score @s monster.lord_of_the_cataclysm.1.rdm run random value 1..4

execute if score @s monster.lord_of_the_cataclysm.1.rdm matches 1 rotated 0 0 positioned ^ ^ ^5 summon block_display run function monsters:chapter_3/lord_of_the_cataclysm/1/1b
execute if score @s monster.lord_of_the_cataclysm.1.rdm matches 2 rotated 90 0 positioned ^ ^ ^5 summon block_display run function monsters:chapter_3/lord_of_the_cataclysm/1/1b
execute if score @s monster.lord_of_the_cataclysm.1.rdm matches 3 rotated 180 0 positioned ^ ^ ^5 summon block_display run function monsters:chapter_3/lord_of_the_cataclysm/1/1b
execute if score @s monster.lord_of_the_cataclysm.1.rdm matches 4 rotated -90 0 positioned ^ ^ ^5 summon block_display run function monsters:chapter_3/lord_of_the_cataclysm/1/1b