
execute \
    if entity @s[type=player] run \
return 0


execute \
    if score @s particle matches 8 on passengers run \
item modify entity @s container.0 {function:"minecraft:set_custom_model_data",floats:{mode:"replace_all",values:[1]}}

execute \
    if score @s particle matches 7 on passengers run \
item modify entity @s container.0 {function:"minecraft:set_custom_model_data",floats:{mode:"replace_all",values:[2]}}

execute \
    if score @s particle matches 6 on passengers run \
item modify entity @s container.0 {function:"minecraft:set_custom_model_data",floats:{mode:"replace_all",values:[3]}}

execute \
    if score @s particle matches 5 on passengers run \
item modify entity @s container.0 {function:"minecraft:set_custom_model_data",floats:{mode:"replace_all",values:[4]}}

execute \
    if score @s particle matches 4 on passengers run \
item modify entity @s container.0 {function:"minecraft:set_custom_model_data",floats:{mode:"replace_all",values:[5]}}

execute \
    if score @s particle matches 3 on passengers run \
item modify entity @s container.0 {function:"minecraft:set_custom_model_data",floats:{mode:"replace_all",values:[6]}}

execute \
    if score @s particle matches 2 on passengers run \
item modify entity @s container.0 {function:"minecraft:set_custom_model_data",floats:{mode:"replace_all",values:[7]}}

execute \
    if score @s particle matches 1 on passengers run \
item modify entity @s container.0 {function:"minecraft:set_custom_model_data",floats:{mode:"replace_all",values:[8]}}


execute \
    if score @s particle matches ..0 on passengers run \
kill @s

execute \
    if score @s particle matches ..0 run \
kill @s
scoreboard players remove @s particle 1