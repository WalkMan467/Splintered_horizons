tag @r add chapter_1.walkman.4.clock.tp
execute as @p[tag=chapter_1.walkman.4.clock.tp] run function effects:void/false

execute at @p[tag=chapter_1.walkman.4.clock.tp] run particle flash ~ ~1 ~ 0 0 0 0 1 force @a
particle flash ~ ~1 ~ 0 0 0 0 1 force @a
tp @p[tag=chapter_1.walkman.4.clock.tp] @s[scores={chapter_1.walkman.4.clock=0}]
damage @p[tag=chapter_1.walkman.4.clock.tp] 5 weapons:bypasses_cooldown by @s[scores={chapter_1.walkman.4.clock=0}]
playsound minecraft:block.respawn_anchor.deplete voice @a ~ ~1 ~ 3 0.75
particle minecraft:ominous_spawning ~ ~1 ~ 1.5 1.5 1.5 0.5 80

effect give @p[tag=chapter_1.walkman.4.clock.tp] wither 8 1 false

tag @a remove chapter_1.walkman.4.clock.tp