scoreboard players add #weapon.grip_of_withering.fx particle 3

particle dust_color_transition{from_color:[0.051,1.000,0.651],to_color:[0.000,0.000,0.000],scale:1.5} ^ ^0.5 ^6 0 0 0 0 0 force @a

execute rotated ~3 0 \
    if score #weapon.grip_of_withering.fx particle matches ..360 run \
function weapons:type/sword/grip_of_withering/rc/fx