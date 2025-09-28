scoreboard players add #weapon.flame_of_abyss.fx particle 3

particle dust_color_transition{from_color:[0.416,0.000,0.780],scale:1.5,to_color:[1.000,0.000,1.000]} ^ ^ ^4 0 0 0 0 0 force @a

execute rotated ~3 0 if score #weapon.flame_of_abyss.fx particle matches ..360 run function weapons:type/scythe/flame_of_abyss/effect/fx