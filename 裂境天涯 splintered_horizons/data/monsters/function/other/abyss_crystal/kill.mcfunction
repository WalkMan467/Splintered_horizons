
execute \
    on passengers \
    on passengers run \
kill @s

execute \
    on passengers run \
kill @s

playsound minecraft:entity.blaze.death voice @a ~ ~1 ~ 1 1
playsound minecraft:entity.creaking.death voice @a ~ ~1 ~ 1 1
playsound minecraft:block.respawn_anchor.deplete voice @a ~ ~1 ~ 1 0.75
particle dust_pillar{block_state:"sculk"} ~ ~1 ~ 0.5 0.5 0.5 1 40 force @a
particle dust_pillar{block_state:"sculk"} ~ ~1 ~ 0.5 0.5 0.5 1 80 force @a