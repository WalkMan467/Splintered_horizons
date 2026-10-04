dialog clear @s

stopsound @s voice minecraft:entity.cat.ambient
stopsound @s voice minecraft:entity.cat.hurt

playsound minecraft:block.amethyst_block.break voice @a ~ ~1 ~ 1 1
playsound minecraft:block.amethyst_block.resonate voice @a ~ ~1 ~ 1 1
playsound minecraft:block.amethyst_block.resonate voice @a ~ ~1 ~ 1 1
playsound minecraft:block.amethyst_block.resonate voice @a ~ ~1 ~ 1 1

playsound minecraft:entity.cat.ambient voice @s ~ ~1 ~ 1 1

function players:reset_state