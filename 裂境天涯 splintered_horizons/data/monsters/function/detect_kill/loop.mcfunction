# kill monster

execute \
    on vehicle \
    unless data entity @s {DeathTime:0s} at @s run \
function monsters:detect_kill/kill_monster