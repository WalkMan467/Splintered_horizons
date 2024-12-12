advancement grant @s[type=player] only effects:void/effect/in

effect give @s darkness 5 255 true
effect give @s glowing 1 255 true
effect give @s invisibility 1 255 true
effect give @s resistance 1 255 true
effect give @s fire_resistance 1 255 true

attribute @s[type=!player] movement_speed modifier add effect.void -0.75 add_multiplied_base
attribute @s knockback_resistance modifier add effect.void 1 add_multiplied_base
attribute @s attack_damage modifier add effect.void -1 add_multiplied_base
attribute @s attack_knockback modifier add effect.void -1 add_multiplied_base

data merge entity @s {NoAI:1b,Invulnerable:1b}