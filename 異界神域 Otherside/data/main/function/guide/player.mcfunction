function hotbar_sound:main

execute as @s[scores={player.leave_game=1..}] run function players:join_game/0

function players:hide/false

function players:disable_movement/main

function world_area:main/loop

function task:loop/main

function players:timer

function weapons:scoreboard