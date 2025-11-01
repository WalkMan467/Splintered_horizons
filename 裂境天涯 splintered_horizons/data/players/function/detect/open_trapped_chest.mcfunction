advancement revoke @s only players:detect/open_trapped_chest

tag @s add traps.target
execute positioned ~ ~1.5 ~ run function traps:raycast/use
tag @s remove traps.target