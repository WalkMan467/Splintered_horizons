
execute \
    if score $value armor.random_teleport.raycast.id matches 8.. run \
return 0

scoreboard players add $value armor.random_teleport.raycast.id 1
scoreboard players set $value armor.random_teleport.raycast 4