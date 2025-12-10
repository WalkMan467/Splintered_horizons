execute if score @s weapon.sagittarius.use matches 1.. run return 0

stopsound @s voice minecraft:entity.warden.sonic_charge
execute if score @s weapon.sagittarius.hold_down matches 47.. run function weapons:type/bow/sagittarius/rc/run

scoreboard players reset @s weapon.sagittarius.use
scoreboard players reset @s weapon.sagittarius.hold_down

tag @s remove sagittarius.user