# Detect boss battle end; remove player death detection

execute \
    as @a at @s \
    unless score #bossfight global.main matches 1.. run \
    return run \
function bossfight:chapter_2/segrina/reset_player_die

execute \
    unless score #bossfight global.main matches 1.. run \
return 0

# Bossfight Boundary Pullback
execute \
    as @a[sort=arbitrary,tag=monster.segrina.bossfight.player] \
    positioned 725 107 605 \
    unless entity @s[dx=73,dy=26,dz=73] \
    at @s \
    facing 762 107 642 run \
tp @s ^ ^ ^1

gamemode spectator @a[tag=chapter_2.segrina.lose]

function bossfight:chapter_2/segrina/skills/interface/in

execute \
    unless entity @n[sort=arbitrary,distance=0..,tag=!eliminate,tag=monster.segrina.bossfight.interface,type=player] \
    if score #bossfight global.main matches 1.. run \
function bossfight:chapter_2/segrina/lose

scoreboard players set @a[tag=chapter_2.segrina.lose] player.animation.lock 10

function bossfight:chapter_2/segrina/skills/interface/out

schedule function bossfight:chapter_2/segrina/loop 1t