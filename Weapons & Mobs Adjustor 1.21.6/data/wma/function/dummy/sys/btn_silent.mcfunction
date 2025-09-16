
execute store result storage wma:data dummy.silent byte 1 if data storage wma:data {dummy:{silent:0b}}

execute if data storage wma:data {dummy:{silent:0b}} run data modify storage wma:data dummy.silent_info set value '{"text":"[否]","color":"red"}'
execute if data storage wma:data {dummy:{silent:0b}} as @e[tag=wma.dummy] run data modify entity @s Silent set value 0b

execute if data storage wma:data {dummy:{silent:1b}} run data modify storage wma:data dummy.silent_info set value '{"text":"[是]","color":"green"}'
execute if data storage wma:data {dummy:{silent:1b}} as @e[tag=wma.dummy] run data modify entity @s Silent set value 1b

function wma:dummy/-menu
playsound ui.button.click master @s ~ ~ ~ 0.5 1