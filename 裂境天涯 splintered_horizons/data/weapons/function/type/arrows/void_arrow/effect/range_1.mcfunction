scoreboard players add #weapon.void_arrow.range_1 global.main 3

particle dust_color_transition{from_color:[0.969,0.000,1.000],scale:1,to_color:[0.000,0.000,1.000]} ^ ^ ^3.5 0 0.1 0 0 2 normal @a

particle dust_color_transition{from_color:[0.969,0.000,1.000],scale:1,to_color:[0.000,0.000,1.000]} ^ ^1 ^-2.5 0 0 0 0 0 normal @a

particle dust_color_transition{from_color:[0.969,0.000,1.000],scale:1,to_color:[0.000,0.000,1.000]} ^ ^1.5 ^1.5 0 0 0 0 0 normal @a

execute rotated ~3 0 if score #weapon.void_arrow.range_1 global.main < #weapon.void_arrow.range_1.rdm global.main run function weapons:type/arrows/void_arrow/effect/range_1