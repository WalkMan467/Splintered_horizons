scoreboard players add #weapon.earthquake_axe.fx particle 3

particle dust{color:[1.000,0.765,0.000],scale:1} ^ ^0.5 ^2.5 0 0 0 0 0 normal @a

execute rotated ~3 0 if score #weapon.earthquake_axe.fx particle matches ..360 run function weapons:type/axe/earthquake_axe/effect/fx