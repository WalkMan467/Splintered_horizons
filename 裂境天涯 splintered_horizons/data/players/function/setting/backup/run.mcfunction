execute \
    as @a at @s \
    if score @s player.setting.backup matches 1.. run \
function players:setting/backup/guide

schedule function players:setting/backup/run 300s