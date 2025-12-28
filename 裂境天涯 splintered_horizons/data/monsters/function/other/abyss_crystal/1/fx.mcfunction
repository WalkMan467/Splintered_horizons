scoreboard players add #monster.abyss_crystal.fx particle 3

particle dust_color_transition{from_color: [0.0f, 0.0f, 0.0f], scale: 1.5f, to_color: [0.25f, 0.0f, 0.25f]} ^ ^ ^7 0 0 0 0 0 force @a


execute rotated ~3 0 \
    if score #monster.abyss_crystal.fx particle matches ..360 run \
function monsters:other/abyss_crystal/1/fx