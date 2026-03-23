execute \
    unless score @s player.setting.backup.id matches -2147483648..2147483647 run \
scoreboard players set @s player.setting.backup.id 1

execute \
    unless score @s player.setting.backup matches 1.. run \
return 0

execute \
    if score @s player.setting.backup.id matches 1 run \
function players:inventory/save {bag:"backup/1"}

execute \
    if score @s player.setting.backup.id matches 2 run \
function players:inventory/save {bag:"backup/2"}

execute \
    if score @s player.setting.backup.id matches 3 run \
function players:inventory/save {bag:"backup/3"}

execute \
    if score @s player.setting.backup.id matches 4 run \
function players:inventory/save {bag:"backup/4"}

execute \
    if score @s player.setting.backup.id matches 5 run \
function players:inventory/save {bag:"backup/5"}


execute \
    if score @s player.setting.backup.id matches 5.. run \
    return run \
    scoreboard players set @s player.setting.backup.id 1

scoreboard players add @s player.setting.backup.id 1