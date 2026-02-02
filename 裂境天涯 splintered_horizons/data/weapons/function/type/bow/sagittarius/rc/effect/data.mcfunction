data modify entity @s item.components."minecraft:custom_data" set value {type:"arrow",rarity:"epic",id:"sagittarius_arrow",ground_detect:1b}

data modify entity @s Glowing set value 1b

playsound minecraft:entity.breeze.shoot voice @a ~ ~1 ~ 1 0.5
playsound minecraft:block.respawn_anchor.deplete voice @a ~ ~1 ~ 1 1
stopsound @a voice minecraft:block.amethyst_block.chime

tag @s add weapon.sagittarius.arrow