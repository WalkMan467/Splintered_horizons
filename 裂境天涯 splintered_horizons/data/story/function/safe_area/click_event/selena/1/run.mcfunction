# story.safe_area.selena.1.3

execute \
    unless score story.safe_area.selena.1 story.safe_area matches 3 run \
tellraw @s [{"text": "(","color": "red"},{"color": "red", "translate": "tips.player.detect.click_event.trigger.failed"},{"text": ")","color": "red"}]

execute \
    unless score story.safe_area.selena.1 story.safe_area matches 3 run \
return 0

scoreboard players set story.safe_area.selena.1 story.safe_area 4

function story:safe_area/selena/1