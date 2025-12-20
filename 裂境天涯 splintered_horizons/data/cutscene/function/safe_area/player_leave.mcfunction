execute unless score #cutscene.safe_area global.main matches 2 run return 0
execute unless entity @s[tag=cutscene.player_leave.detect] run return 0

gamemode adventure @s[gamemode=spectator]
function players:inventory/return {bag:"cutscene/safe_area"}
tag @s remove cutscene.player_leave.detect