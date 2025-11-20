scoreboard players add @s weapon.sagittarius.cd 0
execute if score @s weapon.sagittarius.cd matches 1.. run return 0

execute if score @s weapon.sagittarius.hold_down matches 1 if items entity @s weapon.mainhand bow[custom_data~{weapon:"sagittarius"}] run item modify entity @s weapon.mainhand weapons:type/bow/sagittarius/0
execute if score @s weapon.sagittarius.hold_down matches 1 if items entity @s weapon.offhand bow[custom_data~{weapon:"sagittarius"}] run item modify entity @s weapon.offhand weapons:type/bow/sagittarius/0

execute if score @s weapon.sagittarius.hold_down matches 25 run function weapons:type/bow/sagittarius/rc/0

execute if score @s weapon.sagittarius.hold_down matches 26 run title @s title {"text":"\uE003","font":"minecraft:screen",shadow_color:0}
execute if score @s weapon.sagittarius.hold_down matches 26 run title @s times 5 5 5

execute if score @s weapon.sagittarius.hold_down matches 31.. run title @s title {"text":"\uE003","font":"minecraft:screen",shadow_color:0}
execute if score @s weapon.sagittarius.hold_down matches 31.. run title @s times 0 2 5

execute if score @s weapon.sagittarius.hold_down matches 46 if items entity @s weapon.mainhand bow[custom_data~{weapon:"sagittarius"}] run item modify entity @s weapon.mainhand weapons:type/bow/sagittarius/1
execute if score @s weapon.sagittarius.hold_down matches 46 if items entity @s weapon.offhand bow[custom_data~{weapon:"sagittarius"}] run item modify entity @s weapon.offhand weapons:type/bow/sagittarius/1

execute if score @s weapon.sagittarius.hold_down matches 46 run particle sonic_boom ~ ~1 ~ 0 0 0 0 1 force @a
execute if score @s weapon.sagittarius.hold_down matches 46 run playsound minecraft:entity.experience_orb.pickup voice @a ~ ~1 ~ 1 1
execute if score @s weapon.sagittarius.hold_down matches 46 run function weapons:type/bow/sagittarius/rc/sfx
execute if score @s weapon.sagittarius.hold_down matches 46 run function particle:ink_painting_expansion/use


execute if score @s weapon.sagittarius.hold_down matches 46.. run function weapons:type/bow/sagittarius/rc/charged

scoreboard players set @s weapon.sagittarius.use 1
tag @s add sagittarius.user
execute unless score @s weapon.sagittarius.hold_down matches 47.. run scoreboard players add @s weapon.sagittarius.hold_down 1