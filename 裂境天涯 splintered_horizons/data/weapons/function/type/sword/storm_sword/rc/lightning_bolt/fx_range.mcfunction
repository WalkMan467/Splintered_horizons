scoreboard players add #weapon.storm_sword.fx_range particle 3

particle dust_color_transition{from_color: [0.5f, 0.75f, 1.0f], scale: 1.0f, to_color: [0.0f, 1.0f, 0.5f]} ^ ^ ^3 0 0 0 0 0 normal @a

execute rotated ~3 0 if score #weapon.storm_sword.fx_range particle matches ..360 run function weapons:type/sword/storm_sword/rc/lightning_bolt/fx_range