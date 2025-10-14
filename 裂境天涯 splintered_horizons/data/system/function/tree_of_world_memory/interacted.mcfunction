# General Interaction Feedback


execute as 00000080-0000-0100-0000-019c00000006 if entity @s[tag=!system.tree_of_world_memory.crystal.run] on target if entity @s[predicate=!players:detect/input/sneak] as 00000080-0000-0100-0000-019c00000006 at @s if data entity @s interaction.timestamp run function system:tree_of_world_memory/crystal/reset
execute as 00000080-0000-0100-0000-019c00000006 if entity @s[tag=!system.tree_of_world_memory.crystal.run] on target if entity @s[predicate=players:detect/input/sneak] as 00000080-0000-0100-0000-019c00000006 at @s if data entity @s interaction.timestamp run function system:tree_of_world_memory/crystal/run