scoreboard players add #weapon.void_arrow.range global.main 3

particle minecraft:dripping_obsidian_tear ^ ^-1 ^4 0 0 0 0 0 force

particle minecraft:trial_spawner_detection_ominous ^ ^-1 ^4 0 0 0 0 0 force

execute rotated ~3 0 if score #weapon.void_arrow.range global.main matches ..360 run function weapons:type/arrows/void_arrow/effect/range