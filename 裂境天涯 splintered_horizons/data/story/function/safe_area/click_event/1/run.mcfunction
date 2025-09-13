# story.safe_area.elina.1.3
execute unless score story.safe_area.elina.1 story.safe_area matches 3 run tellraw @s [{"text": "(","color": "red"},{"color": "red", "translate": "tips.player.detect.click_event.trigger.failed"},{"text": ")","color": "red"}]
execute unless score story.safe_area.elina.1 story.safe_area matches 3 run return 0

scoreboard players set story.safe_area.elina.1 story.safe_area 5

function story:safe_area/1