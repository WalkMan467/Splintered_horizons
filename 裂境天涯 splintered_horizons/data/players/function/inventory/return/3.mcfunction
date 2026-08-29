# Items
#
# This used to stage the inventory through a shulker box at ~ 319 ~, then pull
# slots 0-26 out of it in bulk and handle 27-35 one at a time through a display
# entity. That worked only in the overworld: this pack raises it to height 400,
# so y=319 is in bounds there, but the end and the nether are both 0..255, so
# the setblock failed outright. Everything downstream then did nothing while
# return.mcfunction had already run `clear @s` -- the player's inventory was
# emptied and never refilled. The end is where most of this map takes place.
#
# So every slot now goes through the display entity, which lives at the player
# and has no height requirement at all. It also stops the restore from
# destroying whatever block happened to sit at y=319 above the player.
#
# The kill before the summon is deliberate: the display uses a fixed UUID, so a
# leftover from a run that died partway would make the summon fail and break
# every later restore. Killing a UUID that does not exist just fails quietly.
kill 3289cf06-aa12-44c8-ac9e-27b495fe58c0
summon item_display ~ ~ ~ {UUID:[I;847892230,-1441643320,-1398921292,-1778493248]}

# Inventory, hotbar included: container.0-8 is the hotbar, 9-35 the rest.

execute \
    store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:0b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.0 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute \
    store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:1b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.1 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute \
    store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:2b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.2 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute \
    store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:3b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.3 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute \
    store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:4b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.4 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute \
    store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:5b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.5 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute \
    store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:6b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.6 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute \
    store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:7b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.7 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute \
    store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:8b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.8 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute \
    store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:9b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.9 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute \
    store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:10b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.10 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute \
    store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:11b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.11 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute \
    store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:12b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.12 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute \
    store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:13b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.13 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute \
    store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:14b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.14 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute \
    store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:15b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.15 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute \
    store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:16b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.16 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute \
    store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:17b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.17 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute \
    store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:18b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.18 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute \
    store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:19b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.19 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute \
    store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:20b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.20 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute \
    store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:21b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.21 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute \
    store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:22b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.22 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute \
    store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:23b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.23 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute \
    store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:24b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.24 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute \
    store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:25b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.25 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute \
    store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:26b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.26 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute \
    store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:27b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.27 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute \
    store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:28b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.28 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute \
    store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:29b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.29 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute \
    store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:30b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.30 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute \
    store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:31b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.31 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute \
    store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:32b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.32 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute \
    store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:33b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.33 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute \
    store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:34b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.34 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute \
    store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.inventory[{Slot:35b}]

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s container.35 from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents


# Equipment

execute \
    store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.equipment.offhand

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s weapon.offhand from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute \
    store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.equipment.head

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s armor.head from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute \
    store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.equipment.chest

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s armor.chest from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute \
    store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.equipment.legs

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s armor.legs from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents

execute \
    store success score #has_item hp_display run \
data modify entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 item set from storage minecraft:temp bag.equipment.feet

execute \
    if score #has_item hp_display matches 1 run \
item replace entity @s armor.feet from entity 3289cf06-aa12-44c8-ac9e-27b495fe58c0 contents


# Execution Point
$xp set @s $(xp_level) levels
$xp set @s $(xp_point) points

data remove storage minecraft:temp bag
kill 3289cf06-aa12-44c8-ac9e-27b495fe58c0
