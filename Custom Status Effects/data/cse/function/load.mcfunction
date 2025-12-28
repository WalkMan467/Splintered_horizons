    # scoreboard reload
function cse:scoreboard



execute \
    unless score #hide.reload.tips cse.global.main matches 1.. run \
tellraw @a[gamemode=creative] [{"text":"[","color": "white"},{"text": "WalkMan467","color": "gold"},{"text":"]","color": "white"},{"text":" ","color": "white"},{"text": "Custom Status Effects is Reloaded!", "color": "green"}]