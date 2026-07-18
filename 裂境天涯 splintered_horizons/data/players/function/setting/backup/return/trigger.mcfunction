execute \
    unless score @s player.setting.backup.return.id matches 1..6 run \
return 0

execute \
    if score @s player.setting.backup.trigger.disabled matches 1.. run \
    return run \
function players:setting/backup/return/failure

execute \
    if score @s player.setting.backup.return.id matches 1 run \
function players:inventory/return {bag:"backup/1"}

execute \
    if score @s player.setting.backup.return.id matches 2 run \
function players:inventory/return {bag:"backup/2"}

execute \
    if score @s player.setting.backup.return.id matches 3 run \
function players:inventory/return {bag:"backup/3"}

execute \
    if score @s player.setting.backup.return.id matches 4 run \
function players:inventory/return {bag:"backup/4"}

execute \
    if score @s player.setting.backup.return.id matches 5 run \
function players:inventory/return {bag:"backup/5"}

scoreboard players set @s player.setting.backup.return.id 0
scoreboard players enable @s player.setting.backup.return.id