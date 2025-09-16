execute as @a[scores={music.chapter1.broken_city=1}] store result score @s music.chapter1.broken_city.rdm run random value 1..2

execute as @a[scores={music.chapter1.broken_city=1,music.chapter1.broken_city.rdm=1}] at @s run function music:chapter_1/broken_city/1/start
execute as @a[scores={music.chapter1.broken_city=1,music.chapter1.broken_city.rdm=2}] at @s run function music:chapter_1/broken_city/1/start

execute as @a[scores={music.main.campfire=1}] at @s run function music:main/campfire/start

execute as @a[scores={music.chapter2.land_of_finality=1}] at @s run function music:chapter_2/land_of_finality/start

execute as @a[scores={music.main.safe_zone=1}] at @s run function music:main/safe_zone/start

execute as @a[scores={music.chapter2.forest_of_souls=1}] at @s run function music:chapter_2/forest_of_souls/start

execute as @a[scores={music.chapter2.forgotten_sakura_city=1}] at @s run function music:chapter_2/forgotten_sakura_city/start

execute as @a[scores={music.chapter2.bossfight.2=1}] at @s run function music:chapter_2/bossfight/2/start

execute as @a[scores={music.chapter2.temple_of_light=1}] at @s run function music:chapter_2/temple_of_light/start

execute as @a[scores={music.other.the_forgooten_lost_city=1}] at @s run function music:other/the_forgooten_lost_city/start

schedule function music:main 1t