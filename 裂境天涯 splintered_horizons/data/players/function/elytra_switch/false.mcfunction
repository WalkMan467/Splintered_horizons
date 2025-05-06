function players:inventory/-return {bag:"overworld"}

scoreboard players set @s player.animation.lock 0

function players:elytra_switch/safe_fall/true

advancement revoke @s only players:elytra_switch/true