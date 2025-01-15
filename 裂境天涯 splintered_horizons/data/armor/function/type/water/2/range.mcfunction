scoreboard players add #armor.water.2.range particle 3

particle minecraft:bubble_column_up ^ ^1 ^8 ~ ~ ~ 0 0 force
particle minecraft:item{item: "minecraft:light_blue_concrete"} ^ ^1 ^8 ^ ^1000000 ^1000000 0.0000001 0 force

execute rotated ~3 0 if score #armor.water.2.range particle matches ..360 run function armor:type/water/2/range