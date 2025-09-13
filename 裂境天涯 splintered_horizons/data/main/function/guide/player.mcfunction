
function story:tick
function items:timer_t

# Chair
execute as @e[tag=system.sit_down,type=interaction,distance=..15] at @s run function system:sit_down/interaction/main


# Weapons

function weapons:type/core/player

# Join the Game

execute as @s[scores={player.leave_game=1..}] run function players:join_game/0

# Mnument

function weapons:monument/synchronize_data

# Players
function players:main
function players:hide/false
function players:disable/movement/main
function players:actionbar/main
function players:timer
function #players:detect/click_event_trigger

# Area
function world_area:main/loop