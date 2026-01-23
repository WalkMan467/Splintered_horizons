scoreboard players add #monster.abyss_explode.fx particle 5

particle dust_color_transition{from_color:[0.000,0.020,0.012],to_color:[0.000,0.459,0.275],scale:0.5} ^ ^0.25 ^0.625 0 0 0 0 0 force @a

execute rotated ~5 0 \
    if score #monster.abyss_explode.fx particle matches ..360 run \
function monsters:chapter_1/generic/nightmare_difficulty/abyss_explode/poison/fx