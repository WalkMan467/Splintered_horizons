execute if score @s weapon.zeuss_lightning.use matches 1.. run return 0

stopsound @s voice minecraft:entity.warden.sonic_charge
execute if score @s weapon.zeuss_lightning.hold_down matches 40 run function weapons:type/drop/zeuss_lightning/rc/run

scoreboard players reset @s weapon.zeuss_lightning.use
scoreboard players reset @s weapon.zeuss_lightning.hold_down

scoreboard players set @s player.click.interval 20

tag @s add player.elytra_switch.safe_fall


attribute @s minecraft:gravity base reset
attribute @s gravity modifier remove weapon.zeuss_lightning.effect

tag @s remove zeuss_lightning.user
