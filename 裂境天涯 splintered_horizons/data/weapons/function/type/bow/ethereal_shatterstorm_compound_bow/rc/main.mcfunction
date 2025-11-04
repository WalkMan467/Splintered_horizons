execute if score @s weapon.ethereal_shatterstorm_compound_bow.use matches 1.. run return 0

stopsound @s voice minecraft:entity.warden.sonic_charge
execute if score @s weapon.ethereal_shatterstorm_compound_bow.hold_down matches 47.. run function weapons:type/bow/ethereal_shatterstorm_compound_bow/rc/run

scoreboard players reset @s weapon.ethereal_shatterstorm_compound_bow.use
scoreboard players reset @s weapon.ethereal_shatterstorm_compound_bow.hold_down

tag @s remove ethereal_shatterstorm_compound_bow.user