scoreboard players add @s player.death.delay 1

effect give @s darkness 5 255 true
effect give @s blindness 1 255 true
effect give @s invisibility infinite 255 true
effect give @s resistance infinite 255 true
effect give @s fire_resistance infinite 255 true
effect give @s regeneration infinite 255 true
effect clear @s glowing

attribute @s entity_interaction_range modifier add sys.respawnpoint.tp.loading -1 add_multiplied_total
attribute @s block_interaction_range modifier add sys.respawnpoint.tp.loading -1 add_multiplied_total
attribute @s attack_damage modifier add sys.respawnpoint.tp.loading -1 add_multiplied_total
attribute @s movement_speed modifier add sys.respawnpoint.tp.loading -1 add_multiplied_total
attribute @s jump_strength modifier add sys.respawnpoint.tp.loading -1 add_multiplied_total