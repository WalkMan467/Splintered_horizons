
## calculate
execute store result storage wma:data dmg float 0.001 run scoreboard players operation @s wma.hpmax -= #hp wma.main
execute if score @s wma.hpmax matches 0.. run data modify storage wma:data dmg set string storage wma:data dmg 0 -1
execute if score @s wma.hpmax matches ..0 run data modify storage wma:data dmg set string storage wma:data dmg 1 -1

## show entity
function wma:dmg_show/rdm_pos/use
execute unless data storage wma:data dummy.dmg_scale run data modify storage wma:data dummy.dmg_scale set value 1.1f
execute anchored eyes positioned ^ ^ ^ run function wma:dmg_show/modfiy_scale

data modify entity @s[tag=wma.dummy] Health set value 1000f
function wma:dmg_show/get_hpmax