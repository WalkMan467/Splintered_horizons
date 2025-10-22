
# effect
scoreboard players set @s mob.cd 2147483647
scoreboard players reset @s mob.duration

attribute @s knockback_resistance modifier add mob.charge 1 add_value
attribute @s attack_damage modifier add mob.charge -1 add_multiplied_total
attribute @s movement_speed modifier add mob.charge -1 add_multiplied_total