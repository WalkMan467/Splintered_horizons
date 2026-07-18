playsound minecraft:entity.illusioner.mirror_move voice @a ~ ~1 ~ 1 1
particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 1 1 normal @a
playsound minecraft:item.crossbow.loading_end voice @a ~ ~1 ~ 1 1
playsound minecraft:item.crossbow.loading_end voice @a ~ ~1 ~ 1 1
playsound minecraft:item.crossbow.loading_end voice @a ~ ~1 ~ 1 1

attribute @s movement_speed modifier add weapon.heavenly_guiding_bow.charging_complete -0.25 add_multiplied_base

execute \
    rotated ~ 0 run \
function weapons:type/bow/heavenly_guiding_bow/rc/fx