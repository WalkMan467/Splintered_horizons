effect clear @s darkness
effect clear @s glowing
effect clear @s invisibility

advancement grant @s[type=player] only effects:void/effect/out

attribute @s movement_speed modifier remove effect.void
attribute @s jump_strength modifier remove effect.void
attribute @s knockback_resistance modifier remove effect.void
attribute @s attack_damage modifier remove effect.void
attribute @s attack_knockback modifier remove effect.void

data merge entity @s {NoAI:0b,Invulnerable:0b}

scoreboard players set @s effect.void 0