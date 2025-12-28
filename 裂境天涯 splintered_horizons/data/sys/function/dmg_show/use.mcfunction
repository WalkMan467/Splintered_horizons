
## calculate

execute store result storage wma:data dmg float 0.001 run \
scoreboard players operation @s sys.dmg_show.hpmax -= #hp sys.dmg_show.main

execute \
    if score @s sys.dmg_show.hpmax matches 0.. run \
data modify storage wma:data dmg set string storage wma:data dmg 0 -1

execute \
    if score @s sys.dmg_show.hpmax matches ..0 run \
data modify storage wma:data dmg set string storage wma:data dmg 1 -1

## show entity
function sys:dmg_show/rdm_pos/use

execute \
    unless data storage wma:data dummy.dmg_scale run \
data modify storage wma:data dummy.dmg_scale set value 1.1f

execute anchored eyes \
    positioned ^ ^ ^ run \
function sys:dmg_show/modfiy_scale

data modify entity @s[tag=sys.dmg_show.dummy] Health set value 1000f
function sys:dmg_show/get_hpmax