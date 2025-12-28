
execute \
    if entity @s[type=player] run \
return 0

data modify entity @s block_state set value {Name: "minecraft:target"}
data modify entity @s Glowing set value 1b

tag @s add sys.mini_game.hit_the_bullseye.bullseye.actived

playsound minecraft:entity.breeze.charge voice @a ~ ~ ~ 1 1.075
playsound minecraft:entity.breeze.charge voice @a ~ ~ ~ 1 1.075

particle minecraft:ominous_spawning ~ ~ ~ 0 0 0 0.75 100 force @a
particle minecraft:sonic_boom ~ ~ ~ 0 0 0 0 1 force @a