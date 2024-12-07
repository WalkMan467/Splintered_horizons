effect clear @s darkness
effect clear @s glowing
effect clear @s invisibility

attribute @s movement_speed modifier remove effect.void
attribute @s knockback_resistance modifier remove effect.void
attribute @s attack_damage modifier remove effect.void
attribute @s attack_knockback modifier remove effect.void

data merge entity @s {NoAI:0b,Invulnerable:0b}