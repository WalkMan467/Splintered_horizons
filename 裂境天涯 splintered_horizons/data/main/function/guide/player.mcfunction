
function story:tick

execute if dimension minecraft:overworld in minecraft:overworld run spawnpoint @s 9987 165 9978
execute if dimension minecraft:the_end in minecraft:the_end run spawnpoint @s 9987 165 9978

execute positioned 9987 165 9978 as @s[tag=player.death,distance=..1] run function players:tp_to_spawnpoint/use

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
function #players:detect/click_event_trigger

# Area
function world_area:main/loop