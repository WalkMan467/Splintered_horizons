scoreboard players add #weapon.starry_sky_frost_arrow.range global.main 3

particle dust_color_transition{from_color:[1.0,1.000,1.0],scale:1,to_color:[0.5,0.5,0.5]} ^ ^ ^4 0 0 0 1 0 force
particle minecraft:enchant ^ ^1 ^4 0.1 0.1 0.1 0 2 normal @a
particle minecraft:ominous_spawning ^ ^ ^1 ^ ^ ^1000000 0.0000025 0 force

execute rotated ~3 0 if score #weapon.starry_sky_frost_arrow.range global.main matches ..360 run function weapons:type/arrows/starry_sky_frost_arrow/range