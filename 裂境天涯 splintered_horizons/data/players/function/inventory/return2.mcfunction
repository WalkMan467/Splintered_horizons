
setblock ~ 255 ~ shulker_box
$data modify storage temp bag set from storage bag:$(bag) $(0)$(1)$(2)$(3)

# get info 1
data modify block ~ 255 ~ Items set from storage temp bag
item replace entity @s container.0 from block ~ 255 ~ container.0
item replace entity @s container.1 from block ~ 255 ~ container.1
item replace entity @s container.2 from block ~ 255 ~ container.2
item replace entity @s container.3 from block ~ 255 ~ container.3
item replace entity @s container.4 from block ~ 255 ~ container.4
item replace entity @s container.5 from block ~ 255 ~ container.5
item replace entity @s container.6 from block ~ 255 ~ container.6
item replace entity @s container.7 from block ~ 255 ~ container.7
item replace entity @s container.8 from block ~ 255 ~ container.8
item replace entity @s container.9 from block ~ 255 ~ container.9
item replace entity @s container.10 from block ~ 255 ~ container.10
item replace entity @s container.11 from block ~ 255 ~ container.11
item replace entity @s container.12 from block ~ 255 ~ container.12
item replace entity @s container.13 from block ~ 255 ~ container.13
item replace entity @s container.14 from block ~ 255 ~ container.14
item replace entity @s container.15 from block ~ 255 ~ container.15
item replace entity @s container.16 from block ~ 255 ~ container.16
item replace entity @s container.17 from block ~ 255 ~ container.17
item replace entity @s container.18 from block ~ 255 ~ container.18
item replace entity @s container.19 from block ~ 255 ~ container.19
item replace entity @s container.20 from block ~ 255 ~ container.20
item replace entity @s container.21 from block ~ 255 ~ container.21
item replace entity @s container.22 from block ~ 255 ~ container.22
item replace entity @s container.23 from block ~ 255 ~ container.23
item replace entity @s container.24 from block ~ 255 ~ container.24
item replace entity @s container.25 from block ~ 255 ~ container.25
item replace entity @s container.26 from block ~ 255 ~ container.26


# get info 2 | 27~35 80~83 100~103 -106
data remove block ~ 255 ~ Items
data modify storage temp bag[{Slot:27b}].Slot set value 0b
data modify storage temp bag[{Slot:28b}].Slot set value 1b
data modify storage temp bag[{Slot:29b}].Slot set value 2b
data modify storage temp bag[{Slot:30b}].Slot set value 3b
data modify storage temp bag[{Slot:31b}].Slot set value 4b
data modify storage temp bag[{Slot:32b}].Slot set value 5b
data modify storage temp bag[{Slot:33b}].Slot set value 6b
data modify storage temp bag[{Slot:34b}].Slot set value 7b
data modify storage temp bag[{Slot:35b}].Slot set value 8b

data modify storage temp bag[{Slot:100b}].Slot set value 13b
data modify storage temp bag[{Slot:101b}].Slot set value 14b
data modify storage temp bag[{Slot:102b}].Slot set value 15b
data modify storage temp bag[{Slot:103b}].Slot set value 16b
data modify storage temp bag[{Slot:-106b}].Slot set value 17b
data modify block ~ 255 ~ Items set from storage temp bag

item replace entity @s container.27 from block ~ 255 ~ container.0
item replace entity @s container.28 from block ~ 255 ~ container.1
item replace entity @s container.29 from block ~ 255 ~ container.2
item replace entity @s container.30 from block ~ 255 ~ container.3
item replace entity @s container.31 from block ~ 255 ~ container.4
item replace entity @s container.32 from block ~ 255 ~ container.5
item replace entity @s container.33 from block ~ 255 ~ container.6
item replace entity @s container.34 from block ~ 255 ~ container.7
item replace entity @s container.35 from block ~ 255 ~ container.8
item replace entity @s armor.feet from block ~ 255 ~ container.13
item replace entity @s armor.legs from block ~ 255 ~ container.14
item replace entity @s armor.chest from block ~ 255 ~ container.15
item replace entity @s armor.head from block ~ 255 ~ container.16
item replace entity @s weapon.offhand from block ~ 255 ~ container.17

# get levels
$data modify storage temp lvl set from storage bag:$(bag) $(0)$(1)$(2)$(3)_lvl
function players:inventory/return3 with storage temp lvl

data remove storage temp bag
data remove storage temp lvl
setblock ~ 255 ~ air