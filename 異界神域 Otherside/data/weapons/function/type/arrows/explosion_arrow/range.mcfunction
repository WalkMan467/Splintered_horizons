scoreboard players add #weapon.explosion_arrow.range global.main 3

particle minecraft:flame ^ ^0.25 ^3 0 0 0 0 1 force

execute rotated ~3 0 if score #weapon.explosion_arrow.range global.main matches ..360 run function weapons:type/arrows/explosion_arrow/range