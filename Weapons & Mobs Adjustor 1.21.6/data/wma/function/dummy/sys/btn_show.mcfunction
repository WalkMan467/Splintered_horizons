
execute store result storage wma:data dummy.btn byte 1 if data storage wma:data {dummy:{btn:0b}}

execute if data storage wma:data {dummy:{btn:0b}} run data modify storage wma:data dummy.btn_info set value {"text":"[關閉]","color":"red"}
execute if data storage wma:data {dummy:{btn:0b}} as @e[tag=wma.dummy.menu] run function wma:void

execute if data storage wma:data {dummy:{btn:1b}} run data modify storage wma:data dummy.btn_info set value {"text":"[開啟]","color":"green"}
execute if data storage wma:data {dummy:{btn:1b}} at @e[tag=wma.dummy,tag=wma.dumain,limit=1] run function wma:dummy/sys/macro_btn_summon

function wma:-menu
playsound ui.button.click master @s ~ ~ ~ 0.5 1