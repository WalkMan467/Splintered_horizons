schedule function monsters:chapter_2/apostle_of_eternity/lock/main 1t

execute \
    as @a \
    unless entity @s[tag=monster.apostle_of_eternity.lock] run \
return fail

execute \
    as @a at @s \
    unless score @s monster.apostle_of_eternity.lock.timer matches 0.. run \
    return run \
function monsters:chapter_2/apostle_of_eternity/lock/broken

scoreboard players remove @a monster.apostle_of_eternity.lock.timer 1