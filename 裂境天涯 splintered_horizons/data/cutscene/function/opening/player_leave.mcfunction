
execute \
    unless score #cutscene.opening global.main matches 10.. run \
return 0

execute \
    unless entity @s[tag=cutscene.player_leave.detect] run \
return 0

gamemode adventure @s[gamemode=spectator]
tag @s remove cutscene.player_leave.detect

say ok

advancement grant @s only players:new_player