scoreboard players set #cutscene.world_tree global.main 5

execute \
    in world_area:main/game_lobby run \
tp @s 16682.48 61.38 264.07 -155.00 14.00

schedule function cutscene:world_tree/force_execution/remove/1/5 1t
schedule function cutscene:world_tree/2/use 1t