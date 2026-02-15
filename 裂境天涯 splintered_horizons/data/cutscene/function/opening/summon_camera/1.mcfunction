function cutscene:opening/add_forceload
schedule function cutscene:opening/summon_camera/2 1t

execute \
    unless function cutscene:opening/summon_camera/loaded_detect run return run \
schedule function cutscene:opening/summon_camera/1 1t

# say summon done