# Block unnecessary detection targets
execute unless entity @s[type=item] run return 0

# Tag Item
tag @s add paste_item
data merge entity @s {NoGravity:1b,PickupDelay:60}
tp @s -1031 116 -6

# Detect if it is a weapon?
execute if function system:forging_table/detect/is_weapon run tag @s add weapon

execute if function system:forging_table/detect/is_enchanted_book run tag @s add enchanted_book

# Sound Effects
stopsound @a voice minecraft:entity.ender_eye.death
stopsound @a voice minecraft:entity.firework_rocket.twinkle
playsound minecraft:entity.ender_eye.death voice @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.ender_eye.death voice @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.ender_eye.death voice @a ~ ~1 ~ 1 0.5
playsound minecraft:entity.firework_rocket.twinkle voice @a ~ ~1 ~ 1 1
particle totem_of_undying ~ ~1 ~ 0 0 0 0.5 20 normal @a

# Enable Loop Detection
execute positioned -1031 116 -6 run function system:forging_table/fusion_loop