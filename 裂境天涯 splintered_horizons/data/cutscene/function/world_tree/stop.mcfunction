scoreboard players reset #cutscene.world_tree global.main
scoreboard players reset #cutscene global.main
scoreboard players reset #cutscene.world_tree.timer global.main
scoreboard players reset .world_tree cutscene.story

tag @a remove cutscene.world_tree
tag @a remove cutscene.world_tree.camera.reset
tag @a remove cutscene.player_leave.detect
tag @a remove sys.hide_world_area.name

execute \
    in world_area:main/game_lobby run \
tp @a 16683.70 60.00 218.54

item replace entity @a armor.head with air

schedule clear cutscene:world_tree/0/walking/1
schedule clear cutscene:world_tree/0/walking/play
schedule clear cutscene:world_tree/0/walking/stop

schedule clear cutscene:world_tree/0/0
schedule clear cutscene:world_tree/0/1
schedule clear cutscene:world_tree/0/sine/2
schedule clear cutscene:world_tree/0/sine/2_rotate
schedule clear cutscene:world_tree/0/sine/3
schedule clear cutscene:world_tree/0/use
schedule clear cutscene:world_tree/1/use
schedule clear cutscene:world_tree/1/0
schedule clear cutscene:world_tree/1/1
schedule clear cutscene:world_tree/1/2
schedule clear cutscene:world_tree/1/3
schedule clear cutscene:world_tree/1/4
schedule clear cutscene:world_tree/1/5
schedule clear cutscene:world_tree/1/6
schedule clear cutscene:world_tree/2/0
schedule clear cutscene:world_tree/2/0
schedule clear cutscene:world_tree/2/1
schedule clear cutscene:world_tree/2/2
schedule clear cutscene:world_tree/2/3
schedule clear cutscene:world_tree/2/4
schedule clear cutscene:world_tree/story/0

schedule function cutscene:world_tree/force_execution/remove/0/0 1t
schedule function cutscene:world_tree/force_execution/remove/1/0 1t
schedule function cutscene:world_tree/force_execution/remove/1/5 1t
schedule function cutscene:world_tree/force_execution/remove/2/0 1t

gamerule minecraft:locator_bar true
gamerule spawner_blocks_work true

execute \
    if score #send_command_feedback main.gamerule matches 0 run \
gamerule send_command_feedback false

execute \
    if score #send_command_feedback main.gamerule matches 1 run \
gamerule send_command_feedback true

gamemode adventure @a