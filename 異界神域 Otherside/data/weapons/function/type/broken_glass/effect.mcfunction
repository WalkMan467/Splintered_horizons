damage @s 5 player_attack by @p

playsound minecraft:block.glass.break voice @a ~ ~1 ~ 1 1
playsound minecraft:entity.experience_orb.pickup voice @a ~ ~1 ~ 1 1

particle block{block_state:"minecraft:glass"} ~ ~ ~ 0.5 0.5 0.5 1 50 normal

# 25%
execute if predicate weapons:random_chance/25 run effect give @s wither 5 1 false

kill @n[tag=broken_glass.effect,limit=1]