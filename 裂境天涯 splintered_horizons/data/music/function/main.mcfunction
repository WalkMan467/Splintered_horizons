# ---奧蘭蒂斯城--- #

execute as @a[scores={music.chapter1.broken_city=1}] store result score @s music.chapter1.broken_city.rdm run random value 1..2

execute as @a[scores={music.chapter1.broken_city=1,music.chapter1.broken_city.rdm=1}] at @s run function music:chapter_1/broken_city/1/start
execute as @a[scores={music.chapter1.broken_city=1,music.chapter1.broken_city.rdm=2}] at @s run function music:chapter_1/broken_city/2/start

execute as @a[scores={music.chapter1.abyssal_ruins=1}] at @s if entity @n[tag=chapter_1.walkman,limit=1] run function music:chapter_1/abyssal_ruins/start

execute as @a[scores={music.main.campfire=1}] at @s run function music:main/campfire/start

execute as @a if biome ~ ~ ~ #world_area:chapter_1 run advancement grant @s only music:chapter_1/icon

schedule function music:main 1t