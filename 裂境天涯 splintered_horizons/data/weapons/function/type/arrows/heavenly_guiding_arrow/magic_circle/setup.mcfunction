scoreboard players set @s duration 10

execute \
    unless entity @s[tag=weapon.heavenly_guiding_bow.arrow.magic_circle.hely_fire] run \
rotate @s facing entity @n[sort=arbitrary,distance=..15,tag=weapon.heavenly_guiding_bow.arrow.magic_circle.target,type=!#minecraft:dummy_mob,type=!#arrows,type=!player] feet

execute \
    if entity @s[tag=weapon.heavenly_guiding_bow.arrow.magic_circle.hely_fire] run \
rotate @s facing entity @n[sort=arbitrary,distance=..15,tag=weapon.heavenly_guiding_bow.arrow.magic_circle.target,type=#minecraft:dummy_mob] feet

tag @s remove summon