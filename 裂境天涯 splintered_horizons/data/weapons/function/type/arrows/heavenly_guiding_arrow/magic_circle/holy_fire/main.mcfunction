function sys:dummy_mob/interface

tp @s @n[distance=..16,tag=!sys.dummy_mob.interface,type=!#minecraft:dummy_mob,type=!#minecraft:dummy_mob,type=!player]

tag @e[distance=..16,tag=sys.dummy_mob.interface,type=!#minecraft:dummy_mob,type=!#minecraft:dummy_mob,type=!player] remove sys.dummy_mob.interface

execute \
    if score @s weapon.heavenly_guiding_bow.arrow.time matches 6.. run \
function weapons:type/arrows/heavenly_guiding_arrow/magic_circle/holy_fire/shoot

scoreboard players add @s weapon.heavenly_guiding_bow.arrow.time 1