scoreboard players add #monster.sunfire_emissary.1.fx_range particle 10

particle small_flame ^ ^0.5 ^3 0.1 0 0.1 0 2 force @a

execute rotated ~10 0 if score #monster.sunfire_emissary.1.fx_range particle matches ..360 run function monsters:chapter_3/sunfire_emissary/1/raycast/fx