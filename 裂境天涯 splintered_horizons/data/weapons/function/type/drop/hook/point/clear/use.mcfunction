
# effect

effect give @p levitation 1 2 true
effect give @p slow_falling 2 0 true
scoreboard players set @p player.shift.skill.disable 11

kill @s
kill @n[type=marker,tag=owner]