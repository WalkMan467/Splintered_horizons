function players:inventory/-return {bag:"overworld"}

scoreboard players set @s player.animation.lock 0

effect give @s slow_falling 2 1 true

advancement revoke @s only players:elytra_switch/true