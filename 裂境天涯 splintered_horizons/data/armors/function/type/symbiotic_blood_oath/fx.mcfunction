scoreboard players add #armor.symbiotic_blood_oath.fx particle 3

particle block{block_state:"minecraft:redstone_block"} ^ ^0.5 ^4 2 0 2 0 5 force @a
particle dust{color:[1.000,0.000,0.000],scale:1.5} ^ ^0.5 ^6 0 0 0 0 0 force @a

execute rotated ~3 0 if score #armor.symbiotic_blood_oath.fx particle matches ..360 run function armors:type/symbiotic_blood_oath/fx