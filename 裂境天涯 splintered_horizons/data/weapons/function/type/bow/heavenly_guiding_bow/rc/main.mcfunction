
execute \
    if score @s weapon.heavenly_guiding_bow.use matches 1.. run \
return 0

stopsound @s voice minecraft:entity.warden.sonic_charge

execute \
    if score @s weapon.heavenly_guiding_bow.hold_down matches 10.. run \
function weapons:type/bow/heavenly_guiding_bow/rc/run

scoreboard players reset @s weapon.heavenly_guiding_bow.use
scoreboard players reset @s weapon.heavenly_guiding_bow.hold_down

tag @s remove heavenly_guiding_bow.user