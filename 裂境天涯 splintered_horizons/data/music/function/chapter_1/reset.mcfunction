stopsound @s record minecraft:bgm.moonlight_sonata
stopsound @s record minecraft:bgm.etude_op_8_no_12


execute store result score @s music.chapter1.broken_city.rdm run random value 1..2
scoreboard players set @s music.chapter1.broken_city 0
scoreboard players set @s music.chapter1.abyssal_ruins 0