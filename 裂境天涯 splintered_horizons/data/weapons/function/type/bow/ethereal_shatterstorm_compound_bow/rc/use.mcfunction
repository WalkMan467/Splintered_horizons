
execute \
    if score @s weapon.ethereal_shatterstorm_compound_bow.hold_down matches 25 run \
function weapons:type/bow/ethereal_shatterstorm_compound_bow/rc/0


execute \
    if score @s weapon.ethereal_shatterstorm_compound_bow.hold_down matches 26 run \
title @s title {"text":"\uE011","font":"minecraft:screen",shadow_color:0}

execute \
    if score @s weapon.ethereal_shatterstorm_compound_bow.hold_down matches 26 run \
title @s times 5 5 5


execute \
    if score @s weapon.ethereal_shatterstorm_compound_bow.hold_down matches 31.. run \
title @s title {"text":"\uE011","font":"minecraft:screen",shadow_color:0}

execute \
    if score @s weapon.ethereal_shatterstorm_compound_bow.hold_down matches 31.. run \
title @s times 0 2 5


execute \
    if score @s weapon.ethereal_shatterstorm_compound_bow.hold_down matches 46 run \
particle sonic_boom ~ ~1 ~ 0 0 0 0 1 force @a

execute \
    if score @s weapon.ethereal_shatterstorm_compound_bow.hold_down matches 46 run \
playsound minecraft:entity.experience_orb.pickup voice @a ~ ~1 ~ 1 1

scoreboard players set @s weapon.ethereal_shatterstorm_compound_bow.use 1
tag @s add ethereal_shatterstorm_compound_bow.user

execute \
    unless score @s weapon.ethereal_shatterstorm_compound_bow.hold_down matches 47.. run \
scoreboard players add @s weapon.ethereal_shatterstorm_compound_bow.hold_down 1