
execute \
    unless score #cutscene.safe_area global.main matches 2 run \
return 0

execute \
    unless entity @s[tag=cutscene.player_leave.detect] run \
return 0

gamemode adventure @s[gamemode=spectator]
# 先把狀態清掉，refresh 才會重算成「該回便服」
tag @s remove cutscene.player_leave.detect
function players:uniform/refresh