scoreboard players add @s player.ultimate 0

execute \
    unless score @s player.ultimate matches ..0 run \
function weapons:ultimate_use_failed

execute \
    unless score @s player.ultimate matches ..0 run \
return 0

scoreboard players set @s player.click.interval 20
scoreboard players set @s player.ultimate 500