function cutscene:opening/add_forceload

execute \
    unless function cutscene:opening/remove_camera/1/loaded_detect run \
    return run \
schedule function cutscene:opening/remove_camera/1 1t

schedule function cutscene:opening/remove_camera/2 5t

