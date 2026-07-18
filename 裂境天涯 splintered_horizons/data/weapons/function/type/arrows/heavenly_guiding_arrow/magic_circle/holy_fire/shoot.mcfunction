execute \
    unless score @s weapon.heavenly_guiding_bow.arrow.count matches 3.. run \
function weapons:type/arrows/heavenly_guiding_arrow/magic_circle/holy_fire/2

execute \
    unless score @s weapon.heavenly_guiding_bow.arrow.count matches 3.. run \
scoreboard players set @s weapon.heavenly_guiding_bow.arrow.time 0

execute \
    unless score @s weapon.heavenly_guiding_bow.arrow.count matches 3.. run \
    return run \
scoreboard players add @s weapon.heavenly_guiding_bow.arrow.count 1

kill @s