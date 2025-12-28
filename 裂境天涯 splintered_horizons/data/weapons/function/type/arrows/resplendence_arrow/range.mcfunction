scoreboard players add #weapon.resplendence_arrow.range global.main 3

particle dust_color_transition{from_color:[0.969,1.000,0.071],scale:1,to_color:[1.000,0.576,0.020]} ^ ^ ^4 0 0 0 1 0 force
particle minecraft:enchant ^ ^1 ^4 0.1 0.1 0.1 0 2 normal @a
particle minecraft:enchanted_hit ^ ^ ^1 ^ ^ ^1000000 0.0000025 0 force


execute rotated ~3 0 \
    if score #weapon.resplendence_arrow.range global.main matches ..360 run \
function weapons:type/arrows/resplendence_arrow/range