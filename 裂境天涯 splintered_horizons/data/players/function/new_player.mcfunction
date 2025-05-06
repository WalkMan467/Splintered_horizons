advancement grant @s only music:icon
advancement grant @s only weapons:icon/icon
advancement grant @s only weapons:icon/old_story
advancement grant @s only weapons:icon/orantes
advancement grant @s only story:icon/story/icon
advancement grant @s only story:icon/proper_noun/icon
advancement grant @s only story:icon/proper_noun/old_story
advancement grant @s only story:icon/proper_noun/war_of_light_and_darkness
advancement grant @s only story:icon/proper_noun/final_battle
advancement grant @s only story:icon/proper_noun/orantes
advancement grant @s only story:icon/proper_noun/water_magic_sword

function players:id/detect
attribute @s minecraft:movement_speed base set 0.1

function items:type/tp_book/rc/reset

execute unless score #story global.main matches 1.. run function story:chapter_1/opening/1/0
scoreboard players set #story global.main 1

spawnpoint @s 38 64 11
setworldspawn 38 64 11