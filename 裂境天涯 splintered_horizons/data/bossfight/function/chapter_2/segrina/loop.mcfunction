# Detect boss battle end; remove player death detection

execute \
    as @a at @s \
    unless score #bossfight global.main matches 1.. run \
    return run \
function bossfight:chapter_2/segrina/reset_player_die

execute \
    unless score #bossfight global.main matches 1.. run \
return 0

gamemode spectator @a[tag=chapter_2.segrina.lose]

function monsters:chapter_2/segrina/interface/in

execute \
    unless entity @n[sort=arbitrary,distance=0..,tag=!eliminate,tag=monster.segrina.bossfight.interface,type=player] \
    if score #bossfight global.main matches 1.. run \
function bossfight:chapter_2/segrina/lose

scoreboard players set @a[tag=chapter_2.segrina.lose] player.animation.lock 10

function monsters:chapter_2/segrina/interface/out

schedule function bossfight:chapter_2/segrina/loop 1t