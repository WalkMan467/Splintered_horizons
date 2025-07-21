scoreboard players add #weapon.crimson_claw_arrow.range global.main 3

particle dust_color_transition{from_color:[1.0,0.0,0.0],scale:1,to_color:[0.5,0.0,0.0]} ^ ^ ^4 0 0 0 1 0 force

execute rotated ~3 0 if score #weapon.crimson_claw_arrow.range global.main matches ..360 run function weapons:type/arrows/crimson_claw_arrow/range