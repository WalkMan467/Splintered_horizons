
# Items
setblock ~ 319 ~ shulker_box
summon item_display ~ ~ ~ {UUID:[I;847892230,-1441643320,-1398921292,-1778493248]}
data modify block ~ 319 ~ Items set from storage minecraft:temp bag.inventory
item replace entity @s container.0 from block ~ 319 ~ container.0
item replace entity @s container.1 from block ~ 319 ~ container.1
item replace entity @s container.2 from block ~ 319 ~ container.2
item replace entity @s container.3 from block ~ 319 ~ container.3
item replace entity @s container.4 from block ~ 319 ~ container.4
item replace entity @s container.5 from block ~ 319 ~ container.5
item replace entity @s container.6 from block ~ 319 ~ container.6
item replace entity @s container.7 from block ~ 319 ~ container.7
item replace entity @s container.8 from block ~ 319 ~ container.8
item replace entity @s container.9 from block ~ 319 ~ container.9
item replace entity @s container.10 from block ~ 319 ~ container.10
item replace entity @s container.11 from block ~ 319 ~ container.11
item replace entity @s container.12 from block ~ 319 ~ container.12
item replace entity @s container.13 from block ~ 319 ~ container.13
item replace entity @s container.14 from block ~ 319 ~ container.14
item replace entity @s container.15 from block ~ 319 ~ container.15
item replace entity @s container.16 from block ~ 319 ~ container.16
item replace entity @s container.17 from block ~ 319 ~ container.17
item replace entity @s container.18 from block ~ 319 ~ container.18
item replace entity @s container.19 from block ~ 319 ~ container.19
item replace entity @s container.20 from block ~ 319 ~ container.20
item replace entity @s container.21 from block ~ 319 ~ container.21
item replace entity @s container.22 from block ~ 319 ~ container.22
item replace entity @s container.23 from block ~ 319 ~ container.23
item replace entity @s container.24 from block ~ 319 ~ container.24
item replace entity @s container.25 from block ~ 319 ~ container.25
item replace entity @s container.26 from block ~ 319 ~ container.26


execute store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:27b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.27 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:28b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.28 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:29b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.29 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:30b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.30 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:31b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.31 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:32b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.32 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:33b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.33 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:34b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.34 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:35b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.35 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents


execute store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.equipment.offhand

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s weapon.offhand from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.equipment.head

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s armor.head from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.equipment.chest

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s armor.chest from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.equipment.legs

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s armor.legs from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.equipment.feet

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s armor.feet from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

# Execution Point
$xp set @s $(xp_level) levels
$xp set @s $(xp_point) points

data remove storage minecraft:temp bag
setblock ~ 319 ~ air
kill 3289cf06-aa12-44c8-ac9e-27b495fe58c0