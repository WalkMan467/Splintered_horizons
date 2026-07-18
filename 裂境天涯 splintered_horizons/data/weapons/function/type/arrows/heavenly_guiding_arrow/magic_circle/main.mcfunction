execute \
    if score @s weapon.heavenly_guiding_bow.arrow.time matches 2 run \
function weapons:type/arrows/heavenly_guiding_arrow/magic_circle/transform

execute \
    if score @s weapon.heavenly_guiding_bow.arrow.time matches 10.. run \
    return run \
kill @s

scoreboard players add @s weapon.heavenly_guiding_bow.arrow.time 1