function world_area:main/reload

execute as @a at @s run function #main:scoreboard

execute as @a run attribute @s minecraft:waypoint_receive_range base set 0
execute as @a run attribute @s minecraft:waypoint_transmit_range base set 0

function music:main

# Climbing claw assisted aiming
function weapons:type/drop/hook/aim_assist/main
function weapons:type/drop/hook/aim_assist/fx

# Player quick item swap functionality
function players:replace/block/main
function players:replace/torch/main
function players:replace/food/main

# Monster load
function monsters:load

# Weapons
schedule function weapons:type/core/main 1t

# Miniature Sun
function weapons:type/drop/miniature_sun/rc/main

# Timer (1s)
schedule function monsters:timer_s 1s
schedule function armors:timer_s 1s
schedule function music:timer 1s

schedule function system:monument_point/main 1t
schedule function system:forging_table/main 1t

# Hotbar switching

schedule function hotbar_sound:guide 2t