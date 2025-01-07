scoreboard players add #boss.chapter_1.walkman.3 particle 3

particle dust_color_transition{from_color:[0.000,0.267,1.000],scale:1,to_color:[1.000,0.000,0.933]} ^ ^1 ^3 0 0 0 0 0 normal

execute rotated ~3 0 if score #boss.chapter_1.walkman.3 particle matches ..360 run function monsters:chapter_1.walkman/3/6