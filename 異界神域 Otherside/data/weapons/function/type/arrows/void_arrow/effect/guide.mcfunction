execute as @e[distance=..4] run function weapons:type/arrows/void_arrow/effect/run

particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 0 1 force @a

particle minecraft:item_cobweb ~ ~ ~ 1 1 1 0.1 100 normal @a
particle minecraft:ominous_spawning ~ ~ ~ 1 1 1 0.1 200 normal @a
playsound minecraft:entity.warden.sonic_boom voice @a ~ ~1 ~ 1 1
playsound minecraft:block.respawn_anchor.deplete voice @a ~ ~1 ~ 2 0.5