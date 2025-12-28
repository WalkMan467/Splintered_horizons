scoreboard players add #sys.portal.fx particle 15

particle dust{color: [1.0f, 0.0f, 1.0], scale: 1.0f} ^ ^ ^1 0 0 0 0 0 force @a


execute rotated ~15 0 \
    if score #sys.portal.fx particle matches ..360 run \
function sys:portal/fx_range