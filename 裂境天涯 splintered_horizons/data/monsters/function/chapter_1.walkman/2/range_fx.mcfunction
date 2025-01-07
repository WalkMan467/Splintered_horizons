scoreboard players add #boss.chapter_1.walkman.2 particle 3

particle dust_color_transition{from_color:[0.000,0.267,1.000],scale:1,to_color:[1.000,0.000,0.933]} ^ ^1 ^6 0 0 0 0 0 normal
particle end_rod ^ ^1 ^-6 ^ ^ ^1000000 0.00000075 0 force

execute rotated ~3 0 if score #boss.chapter_1.walkman.2 particle matches ..360 run function monsters:chapter_1.walkman/2/range_fx