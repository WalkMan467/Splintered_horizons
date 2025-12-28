
execute store result score @s player.spawnpoint.pos.x run \
data get entity @s Pos[0] 1

execute store result score @s player.spawnpoint.pos.y run \
data get entity @s Pos[1] 1

execute store result score @s player.spawnpoint.pos.z run \
data get entity @s Pos[2] 1

execute \
    if dimension minecraft:overworld run \
scoreboard players set @s player.spawnpoint.dimension 0

execute \
    if dimension minecraft:the_nether run \
scoreboard players set @s player.spawnpoint.dimension 1

execute \
    if dimension minecraft:the_end run \
scoreboard players set @s player.spawnpoint.dimension 2