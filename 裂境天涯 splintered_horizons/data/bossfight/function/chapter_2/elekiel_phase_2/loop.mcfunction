# Detect boss battle end; remove player death detection

execute \
    as @a at @s \
    unless score #bossfight global.main matches 1.. run \
function bossfight:chapter_2/elekiel_phase_2/reset_player_die

execute \
    unless score #bossfight global.main matches 1.. run \
return 0

gamemode spectator @a[tag=chapter_2.elekiel_phase_2.lose]

execute \
    unless entity @n[sort=arbitrary,tag=!chapter_2.elekiel_phase_2.lose,type=player] \
    if score #bossfight global.main matches 1.. run \
function bossfight:chapter_2/elekiel_phase_2/lose

scoreboard players set @a[tag=chapter_2.elekiel_phase_2.lose] player.animation.lock 10

execute \
    if entity @n[sort=arbitrary,distance=0..,tag=monsters.elekiel_phase_2,type=skeleton] run \
schedule function bossfight:chapter_2/elekiel_phase_2/loop 1t