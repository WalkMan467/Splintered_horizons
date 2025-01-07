scoreboard players add #boss.chapter_1.walkman.2.damage_range particle 3

particle dust{color:[1.000,0.000,0.000],scale:1} ^ ^1 ^13 0 0 0 0 0 force @a

execute rotated ~3 0 if score #boss.chapter_1.walkman.2.damage_range particle matches ..360 run function monsters:chapter_1.walkman/2/range_fx_3