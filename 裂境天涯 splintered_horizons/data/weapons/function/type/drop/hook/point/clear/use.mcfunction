
# effect

effect give @p levitation 1 2 true
effect give @p slow_falling 2 0 true
scoreboard players set @p player.shift.skill.disable 16
scoreboard players set @p player.disable.elytra_switch 16

kill @s
kill @n[type=marker,tag=owner]