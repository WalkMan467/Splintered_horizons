# This is a system specifically designed to bypass 1.21.6+ high-privilege command prompts
# 'player.detect.click.event.trigger' will always keep ticking and execute any program you want to detect

execute if score @s player.detect.click_event.trigger matches 1 run function story:safe_area/click_event/1/run
execute if score @s player.detect.click_event.trigger matches 2 run function story:safe_area/click_event/selena/1/run
execute if score @s player.detect.click_event.trigger matches 3 run function system:shooting_contest/start

scoreboard players set @s player.detect.click_event.trigger 0
scoreboard players enable @s player.detect.click_event.trigger