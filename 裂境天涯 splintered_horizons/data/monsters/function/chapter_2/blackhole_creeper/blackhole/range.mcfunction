
scoreboard players add @s particle 3

execute \
    if score @s particle matches 360.. run \
return fail

particle minecraft:end_rod ^ ^ ^0.5 ^ ^ ^1000000 0.0000005 0 normal @a[scores={player.setting.reduce_particles=0}]

execute rotated ~3 0 run function monsters:chapter_2/blackhole_creeper/blackhole/range