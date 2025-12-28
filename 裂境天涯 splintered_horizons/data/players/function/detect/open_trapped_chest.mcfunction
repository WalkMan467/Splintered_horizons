advancement revoke @s only players:detect/open_trapped_chest

tag @s add trap.target

execute \
    positioned ~ ~1.5 ~ run \
function trap:raycast/use
tag @s remove trap.target