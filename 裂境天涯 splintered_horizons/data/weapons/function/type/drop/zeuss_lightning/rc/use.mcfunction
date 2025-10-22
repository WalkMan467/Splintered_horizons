execute unless score @s weapon.zeuss_lightning.hold_down matches 0.. run function weapons:type/drop/zeuss_lightning/rc/0

execute if score @s weapon.zeuss_lightning.hold_down matches 39 run particle sonic_boom ~ ~1 ~ 0 0 0 0 1 force @a
execute if score @s weapon.zeuss_lightning.hold_down matches 39 run playsound minecraft:entity.experience_orb.pickup voice @a ~ ~1 ~ 1 1
execute if score @s weapon.zeuss_lightning.hold_down matches 15 run playsound minecraft:entity.warden.sonic_charge voice @a ~ ~1 ~ 1 1.5

execute if score @s weapon.zeuss_lightning.hold_down matches 2 run attribute @s gravity modifier remove weapon.zeuss_lightning.effect
scoreboard players set @s weapon.zeuss_lightning.use 1
tag @s add zeuss_lightning.user
execute if score @s weapon.zeuss_lightning.hold_down matches 2.. run attribute @s minecraft:gravity base set 0
execute unless score @s weapon.zeuss_lightning.hold_down matches 40.. run scoreboard players add @s weapon.zeuss_lightning.hold_down 1