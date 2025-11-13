scoreboard players add #particle.technological_force_wave.range.fx particle 3

particle end_rod ^ ^ ^0.1 ^ ^ ^1000000 0.000002 0 force
particle minecraft:glow_squid_ink ^ ^ ^0.5 ^ ^ ^1000000 0.000002 0 force

execute rotated ~3 0 if score #particle.technological_force_wave.range.fx particle matches ..360 run function particle:technological_force_wave/fx