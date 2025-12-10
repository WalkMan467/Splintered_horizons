execute if score #difficulty global.main matches 0 run return 0

execute as @s[tag=monsters.forest_messenger.summon] at @s run function spawner:type/chapter_2/forest_messenger/sunmmon
execute as @s[tag=monsters.abyssal_black_knight.summon] at @s run function spawner:type/chapter_1/abyssal_black_knight/sunmmon
execute as @s[tag=monsters.explosion_arrow_skeleton.summon] at @s run function spawner:type/chapter_1/explosion_arrow_skeleton/sunmmon
execute as @s[tag=monsters.sunfire_emissary.summon] at @s run function spawner:type/chapter_3/sunfire_emissary/sunmmon
execute as @s[tag=monsters.emissary_of_the_temporal_rift.summon] at @s run function spawner:type/chapter_3/emissary_of_the_temporal_rift/sunmmon

execute as @s[tag=sys.spawner.mob] at @s run function spawner:setup/use