data modify entity @s item.components."minecraft:custom_data" set value {type:"arrow",rarity:"epic",id:"heavenly_guiding_arrow",ground_detect:1b}

data modify entity @s PierceLevel set value 99
data modify entity @s Glowing set value 1b
data modify entity @s NoGravity set value 1b
scoreboard players set @s duration 60

playsound minecraft:entity.breeze.deflect voice @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.breeze.shoot voice @a ~ ~1 ~ 1 1.5
playsound minecraft:block.respawn_anchor.deplete voice @a ~ ~1 ~ 1 1
stopsound @a voice minecraft:block.amethyst_block.chime

tag @s add weapon.heavenly_guiding_bow.arrow

execute \
    on origin \
    unless score @s weapon.effect.holy_fire matches 1.. run \
return 0

tag @s add weapon.heavenly_guiding_bow.arrow.holy_fire