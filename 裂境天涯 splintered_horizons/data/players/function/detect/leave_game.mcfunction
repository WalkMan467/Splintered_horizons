
execute \
    if score @s player.leave_game matches 1.. run \
tag @s add forced_interrupt_animation

execute \
    if score @s player.leave_game matches 1.. run \
function #players:detect/leave_game

scoreboard players set @s player.leave_game 0