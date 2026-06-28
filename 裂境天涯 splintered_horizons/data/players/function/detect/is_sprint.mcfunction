execute \
    if score @s player.detect.sprint matches 1.. \
    unless predicate players:detect/movement run \
    return run \
function players:detect/group/sprint_cancel

execute \
    unless score @s player.detect.sprint matches 1.. run \
return 0

# Run Function
function players:detect/group/sprinting