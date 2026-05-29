# Detect boss battle end; remove player death detection
execute \
    as @a at @s \
    unless score #bossfight global.main matches 1.. run \
    return run \
function bossfight:chapter_2/elekiel/reset_player_die

gamemode spectator @a[tag=chapter_2.elekiel.lose]
tag @a[tag=chapter_2.elekiel.lose] remove monsters.elekiel.2.vampire_flower.target
scoreboard players set @a[tag=chapter_2.elekiel.lose] player.animation.lock 10

execute \
    unless entity @n[sort=arbitrary,tag=!chapter_2.elekiel.lose,type=player] \
    if score #bossfight global.main matches 1.. run \
    return run \
function bossfight:chapter_2/elekiel/lose

execute \
    if score #bossfight global.main matches 1.. run \
schedule function bossfight:chapter_2/elekiel/loop 1t