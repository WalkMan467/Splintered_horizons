
execute \
    if entity @s[tag=!player.elytra_switch] run \
return 0

tag @s remove player.elytra_switch

function players:inventory/return {bag:"overworld"}

scoreboard players set @s player.animation.lock 0

function players:elytra_switch/safe_fall/true

advancement revoke @s only players:elytra_switch/true