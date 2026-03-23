scoreboard players set #cutscene global.main 1

execute \
    store result score #send_command_feedback main.gamerule run \
gamerule send_command_feedback

gamerule send_command_feedback false
gamerule spawner_blocks_work false
gamerule locator_bar false

tag @a add sys.hide_world_area.name

function cutscene:opening/0/0

schedule function cutscene:opening/force_execution/remove/0/title 1t