scoreboard players add #armor.windriders_legplates.fx particle 3

particle cloud ^ ^1 ^4 ^ ^ ^-1000000 0.0000005 0 force


execute rotated ~3 0 \
    if score #armor.windriders_legplates.fx particle matches ..360 run \
function armors:type/windriders_legplates/fx