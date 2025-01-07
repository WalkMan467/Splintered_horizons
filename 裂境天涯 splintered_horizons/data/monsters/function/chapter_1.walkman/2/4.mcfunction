attribute @s movement_speed modifier remove boss.chapter_1.walkman.2
attribute @s jump_strength modifier remove boss.chapter_1.walkman.2
attribute @s gravity modifier remove boss.chapter_1.walkman.2
attribute @s knockback_resistance modifier remove boss.chapter_1.walkman.2

effect clear @s glowing

kill @n[tag=chapter_1.walkman.1.main,limit=1]

function particle:void_wave/use