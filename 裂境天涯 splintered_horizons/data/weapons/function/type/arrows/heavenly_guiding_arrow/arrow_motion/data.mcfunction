$summon arrow ^ ^ ^-0.1 $(componments)

execute \
    as @n[distance=..1.5,type=#arrows,tag=!weapon.heavenly_guiding_bow.arrow.2] at @s run \
function weapons:type/arrows/heavenly_guiding_arrow/arrow_motion/setup

# data remove storage temp arrow