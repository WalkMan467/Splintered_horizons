execute if score @s weapon.frostbow.use matches 1.. run return 0

stopsound @s voice minecraft:entity.warden.sonic_charge
execute if score @s weapon.frostbow.hold_down matches 47.. run function weapons:type/bow/frostbow/rc/run

scoreboard players reset @s weapon.frostbow.use
scoreboard players reset @s weapon.frostbow.hold_down

tag @s remove frostbow.user