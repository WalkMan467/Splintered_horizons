
# log
scoreboard players operation #player_count.record global.main = #player_count global.main
scoreboard players operation #calculate global.main = #player_count global.main

# Give everyone an ID
scoreboard players reset @a player.id
function players:id/1
tag @a remove temp