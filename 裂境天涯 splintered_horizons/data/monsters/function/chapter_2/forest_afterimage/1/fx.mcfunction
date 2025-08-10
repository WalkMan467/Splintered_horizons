scoreboard players add #monster.forest_afterimage.fx particle 3

particle dust{color: [1.0f, 0.0f, 0.0f], scale: 1.0f} ^ ^1 ^4 0 0 0 0 0 force @a

execute rotated ~3 0 if score #monster.forest_afterimage.fx particle matches ..360 run function monsters:chapter_2/forest_afterimage/1/fx