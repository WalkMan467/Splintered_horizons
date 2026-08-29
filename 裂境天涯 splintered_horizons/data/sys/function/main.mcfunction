function sys:shooting_contest/main
function sys:walkman467/main
function sys:item_frame/main
function sys:jump_platform/main

execute \
    as @a at @s run \
function sys:monument_point/objective_item/main

execute \
    as @e[type=!#minecraft:dummy_mob,distance=0..] at @s run \
function sys:dummy_mob/timer

# 訓練人偶鎖位置
execute \
    in minecraft:overworld run \
tp 0004e6cf-0000-7e39-0000-091c0000a8df 774.50 148.00 996.50 0.00 0.00