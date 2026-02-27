damage @s 5 weapons:type/drop/broken_glass/dmg by @p

playsound minecraft:block.glass.break voice @a ~ ~1 ~ 1 1
playsound minecraft:entity.experience_orb.pickup voice @a ~ ~1 ~ 1 1

particle block{block_state:"minecraft:glass"} ~ ~ ~ 0.5 0.5 0.5 1 50 normal