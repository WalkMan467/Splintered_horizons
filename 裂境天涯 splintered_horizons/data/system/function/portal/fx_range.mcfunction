scoreboard players add #system.portal.fx particle 15

particle dust{color: [1.0f, 0.0f, 1.0], scale: 1.0f} ^ ^ ^1 0 0 0 0 0 force @a

execute rotated ~15 0 if score #system.portal.fx particle matches ..360 run function system:portal/fx_range