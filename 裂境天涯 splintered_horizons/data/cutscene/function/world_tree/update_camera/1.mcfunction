gamemode adventure @a[tag=cutscene.world_tree.camera.reset,gamemode=spectator]

execute \
    as @a[tag=cutscene.world_tree.camera.reset,gamemode=spectator] run \
ride @s dismount

tag @a[tag=cutscene.world_tree.camera.reset,gamemode=spectator] add cutscene.world_tree
tag @a[tag=cutscene.world_tree.camera.reset,gamemode=spectator] add sys.hide_world_area.name
tag @a[tag=cutscene.world_tree.camera.reset,gamemode=spectator] add cutscene.player_leave.detect

schedule function cutscene:world_tree/update_camera/2 2t