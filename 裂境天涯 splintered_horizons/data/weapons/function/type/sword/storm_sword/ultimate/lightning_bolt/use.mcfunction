scoreboard players reset #weapon.storm_sword.fx_range particle

execute rotated ~3 0 run function weapons:type/sword/storm_sword/ultimate/lightning_bolt/fx_range

particle dust_color_transition{from_color: [0.5f, 0.75f, 1.0f], scale: 1.5f, to_color: [0.0f, 1.0f, 0.5f]} ~ ~10 ~ 0 5 0 0 300 force @a


execute as @e[distance=..3,type=!player] run damage @s 5 weapons:bypasses_cooldown by @p