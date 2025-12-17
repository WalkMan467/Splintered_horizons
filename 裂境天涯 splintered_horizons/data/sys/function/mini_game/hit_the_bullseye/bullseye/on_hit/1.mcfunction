particle totem_of_undying ~ ~ ~ 0 0 0 0.5 20 force @a
particle sonic_boom ~ ~ ~ 0 0 0 0 1 force @a

execute \
    on origin at @s run \
playsound minecraft:entity.experience_orb.pickup voice @s ~ ~1 ~ 1 0.5

kill @s