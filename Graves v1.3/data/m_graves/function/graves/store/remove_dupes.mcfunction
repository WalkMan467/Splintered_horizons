## Removes items the player hasn't dropped from grave storage
# Get a new copy of the inventory
data modify storage multipack:graves kept set from entity @s Inventory
data modify storage multipack:graves kept append from entity @s equipment.offhand
execute if items entity @s weapon.offhand * run data modify storage multipack:graves kept[-1].Slot set value "offhand"
data modify storage multipack:graves kept append from entity @s equipment.feet
execute if items entity @s armor.feet * run data modify storage multipack:graves kept[-1].Slot set value "feet"
data modify storage multipack:graves kept append from entity @s equipment.legs
execute if items entity @s armor.legs * run data modify storage multipack:graves kept[-1].Slot set value "legs"
data modify storage multipack:graves kept append from entity @s equipment.chest
execute if items entity @s armor.chest * run data modify storage multipack:graves kept[-1].Slot set value "chest"
data modify storage multipack:graves kept append from entity @s equipment.head
execute if items entity @s armor.head * run data modify storage multipack:graves kept[-1].Slot set value "head"
# Remove items shared by both
execute if data storage multipack:graves kept[{Slot:0b}] run data remove storage multipack:graves Items[{Slot:0b}]
execute if data storage multipack:graves kept[{Slot:1b}] run data remove storage multipack:graves Items[{Slot:1b}]
execute if data storage multipack:graves kept[{Slot:2b}] run data remove storage multipack:graves Items[{Slot:2b}]
execute if data storage multipack:graves kept[{Slot:3b}] run data remove storage multipack:graves Items[{Slot:3b}]
execute if data storage multipack:graves kept[{Slot:4b}] run data remove storage multipack:graves Items[{Slot:4b}]
execute if data storage multipack:graves kept[{Slot:5b}] run data remove storage multipack:graves Items[{Slot:5b}]
execute if data storage multipack:graves kept[{Slot:6b}] run data remove storage multipack:graves Items[{Slot:6b}]
execute if data storage multipack:graves kept[{Slot:7b}] run data remove storage multipack:graves Items[{Slot:7b}]
execute if data storage multipack:graves kept[{Slot:8b}] run data remove storage multipack:graves Items[{Slot:8b}]
execute if data storage multipack:graves kept[{Slot:9b}] run data remove storage multipack:graves Items[{Slot:9b}]
execute if data storage multipack:graves kept[{Slot:10b}] run data remove storage multipack:graves Items[{Slot:10b}]
execute if data storage multipack:graves kept[{Slot:11b}] run data remove storage multipack:graves Items[{Slot:11b}]
execute if data storage multipack:graves kept[{Slot:12b}] run data remove storage multipack:graves Items[{Slot:12b}]
execute if data storage multipack:graves kept[{Slot:13b}] run data remove storage multipack:graves Items[{Slot:13b}]
execute if data storage multipack:graves kept[{Slot:14b}] run data remove storage multipack:graves Items[{Slot:14b}]
execute if data storage multipack:graves kept[{Slot:15b}] run data remove storage multipack:graves Items[{Slot:15b}]
execute if data storage multipack:graves kept[{Slot:16b}] run data remove storage multipack:graves Items[{Slot:16b}]
execute if data storage multipack:graves kept[{Slot:17b}] run data remove storage multipack:graves Items[{Slot:17b}]
execute if data storage multipack:graves kept[{Slot:18b}] run data remove storage multipack:graves Items[{Slot:18b}]
execute if data storage multipack:graves kept[{Slot:19b}] run data remove storage multipack:graves Items[{Slot:19b}]
execute if data storage multipack:graves kept[{Slot:20b}] run data remove storage multipack:graves Items[{Slot:20b}]
execute if data storage multipack:graves kept[{Slot:21b}] run data remove storage multipack:graves Items[{Slot:21b}]
execute if data storage multipack:graves kept[{Slot:22b}] run data remove storage multipack:graves Items[{Slot:22b}]
execute if data storage multipack:graves kept[{Slot:23b}] run data remove storage multipack:graves Items[{Slot:23b}]
execute if data storage multipack:graves kept[{Slot:24b}] run data remove storage multipack:graves Items[{Slot:24b}]
execute if data storage multipack:graves kept[{Slot:25b}] run data remove storage multipack:graves Items[{Slot:25b}]
execute if data storage multipack:graves kept[{Slot:26b}] run data remove storage multipack:graves Items[{Slot:26b}]
execute if data storage multipack:graves kept[{Slot:27b}] run data remove storage multipack:graves Items[{Slot:27b}]
execute if data storage multipack:graves kept[{Slot:28b}] run data remove storage multipack:graves Items[{Slot:28b}]
execute if data storage multipack:graves kept[{Slot:29b}] run data remove storage multipack:graves Items[{Slot:29b}]
execute if data storage multipack:graves kept[{Slot:30b}] run data remove storage multipack:graves Items[{Slot:30b}]
execute if data storage multipack:graves kept[{Slot:31b}] run data remove storage multipack:graves Items[{Slot:31b}]
execute if data storage multipack:graves kept[{Slot:32b}] run data remove storage multipack:graves Items[{Slot:32b}]
execute if data storage multipack:graves kept[{Slot:33b}] run data remove storage multipack:graves Items[{Slot:33b}]
execute if data storage multipack:graves kept[{Slot:34b}] run data remove storage multipack:graves Items[{Slot:34b}]
execute if data storage multipack:graves kept[{Slot:35b}] run data remove storage multipack:graves Items[{Slot:35b}]
execute if data storage multipack:graves kept[{Slot:"offhand"}] run data remove storage multipack:graves Items[{Slot:"offhand"}]
execute if data storage multipack:graves kept[{Slot:"feet"}] run data remove storage multipack:graves Items[{Slot:"feet"}]
execute if data storage multipack:graves kept[{Slot:"legs"}] run data remove storage multipack:graves Items[{Slot:"legs"}]
execute if data storage multipack:graves kept[{Slot:"chest"}] run data remove storage multipack:graves Items[{Slot:"chest"}]
execute if data storage multipack:graves kept[{Slot:"head"}] run data remove storage multipack:graves Items[{Slot:"head"}]
data remove storage multipack:graves kept
