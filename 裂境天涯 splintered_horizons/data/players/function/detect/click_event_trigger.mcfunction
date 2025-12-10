# This is a sys specifically designed to bypass 1.21.6+ high-privilege command prompts
# 'player.detect.click.event.trigger' will always keep ticking and execute any program you want to detect


execute if score @s player.detect.click_event.trigger matches 1 run function story:safe_area/click_event/1/run
execute if score @s player.detect.click_event.trigger matches 2 run function story:safe_area/click_event/selena/1/run
execute if score @s player.detect.click_event.trigger matches 3 run function sys:shooting_contest/start
execute if score @s player.detect.click_event.trigger matches 4 run function story:chapter_1/sq/1/trigger/1/run
execute if score @s player.detect.click_event.trigger matches 5 run function story:chapter_1/sq/1/trigger/2/run


execute if score @s player.detect.click_event.trigger matches 6 run function players:tp_to_spawnpoint/use
execute if score @s player.detect.click_event.trigger matches 7 run function players:tp_to_safe_area/use

execute if score @s player.detect.click_event.trigger matches 8 run function sys:forging_table/act/crafting

scoreboard players set @s player.detect.click_event.trigger 0
scoreboard players enable @s player.detect.click_event.trigger