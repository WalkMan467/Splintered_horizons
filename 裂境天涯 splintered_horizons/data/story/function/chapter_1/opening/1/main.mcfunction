execute positioned 38 64 9 if entity @s[distance=..6] unless score #story.chapter_1.opening.1 global.main matches 1 run function story:chapter_1/opening/1/true

execute positioned 38 64 9 unless entity @s[distance=..6] unless score #story.chapter_1.opening.1 global.main matches 0 run function story:chapter_1/opening/1/false

effect give @s[tag=campfire] darkness 2 255 true