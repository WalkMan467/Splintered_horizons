scoreboard players set @s effect.void 101

scoreboard players reset #weapon.void_arrow.range global.main
scoreboard players reset #weapon.void_arrow.range_1 global.main
scoreboard players reset #weapon.void_arrow.range_2 global.main
execute store result score #weapon.void_arrow.range_1.rdm global.main run random value 25..180
execute store result score #weapon.void_arrow.range_2.rdm global.main run random value 25..180
execute rotated ~ 0 run function weapons:type/arrows/void_arrow/effect/range
execute rotated ~ 0 run function weapons:type/arrows/void_arrow/effect/range_1
execute rotated ~ 0 run function weapons:type/arrows/void_arrow/effect/range_2