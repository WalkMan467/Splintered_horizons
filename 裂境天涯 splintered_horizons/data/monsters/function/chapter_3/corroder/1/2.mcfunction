
# effect

execute \
    positioned ^ ^ ^1 \
    as @a[distance=..1.5] run \
damage @s 8 mob_attack

execute \
    positioned ^ ^ ^3 \
    as @a[distance=..1.5] run \
damage @s 8 mob_attack

execute \
    positioned ^ ^ ^5 \
    as @a[distance=..1.5] run \
damage @s 8 mob_attack

execute \
    positioned ^ ^ ^7 \
    as @a[distance=..1.5] run \
damage @s 8 mob_attack

execute \
    positioned ^ ^ ^9 \
    as @a[distance=..1.5] run \
damage @s 8 mob_attack


execute \
    positioned ^ ^ ^1 run \
effect give @a[distance=..1.5] slowness 3 2 false

execute \
    positioned ^ ^ ^3 run \
effect give @a[distance=..1.5] slowness 3 2 false

execute \
    positioned ^ ^ ^5 run \
effect give @a[distance=..1.5] slowness 3 2 false

execute \
    positioned ^ ^ ^7 run \
effect give @a[distance=..1.5] slowness 3 2 false

execute \
    positioned ^ ^ ^9 run \
effect give @a[distance=..1.5] slowness 3 2 false

# particle
particle dust_color_transition{from_color:[1.000,0.000,0.000],scale:2.5,to_color:[0.000,0.000,0.000]} ^ ^1 ^1 0.25 0.25 0.25 0 1 force
particle dust_color_transition{from_color:[1.000,0.000,0.000],scale:2.5,to_color:[0.000,0.000,0.000]} ^ ^1 ^2 0.25 0.25 0.25 0 1 force
particle dust_color_transition{from_color:[1.000,0.000,0.000],scale:2.5,to_color:[0.000,0.000,0.000]} ^ ^1 ^3 0.25 0.25 0.25 0 1 force
particle dust_color_transition{from_color:[1.000,0.000,0.000],scale:2.5,to_color:[0.000,0.000,0.000]} ^ ^1 ^4 0.25 0.25 0.25 0 1 force
particle dust_color_transition{from_color:[1.000,0.000,0.000],scale:2.5,to_color:[0.000,0.000,0.000]} ^ ^1 ^5 0.25 0.25 0.25 0 1 force
particle dust_color_transition{from_color:[1.000,0.000,0.000],scale:2.5,to_color:[0.000,0.000,0.000]} ^ ^1 ^6 0.25 0.25 0.25 0 1 force
particle dust_color_transition{from_color:[1.000,0.000,0.000],scale:2.5,to_color:[0.000,0.000,0.000]} ^ ^1 ^7 0.25 0.25 0.25 0 1 force
particle dust_color_transition{from_color:[1.000,0.000,0.000],scale:2.5,to_color:[0.000,0.000,0.000]} ^ ^1 ^8 0.25 0.25 0.25 0 1 force
particle dust_color_transition{from_color:[1.000,0.000,0.000],scale:2.5,to_color:[0.000,0.000,0.000]} ^ ^1 ^9 0.25 0.25 0.25 0 1 force


particle block{block_state:"minecraft:redstone_block"} ^ ^1 ^1 0.5 0.5 0.5 0 5 force
particle block{block_state:"minecraft:redstone_block"} ^ ^1 ^2 0.5 0.5 0.5 0 5 force
particle block{block_state:"minecraft:redstone_block"} ^ ^1 ^3 0.5 0.5 0.5 0 5 force
particle block{block_state:"minecraft:redstone_block"} ^ ^1 ^4 0.5 0.5 0.5 0 5 force
particle block{block_state:"minecraft:redstone_block"} ^ ^1 ^5 0.5 0.5 0.5 0 5 force
particle block{block_state:"minecraft:redstone_block"} ^ ^1 ^6 0.5 0.5 0.5 0 5 force
particle block{block_state:"minecraft:redstone_block"} ^ ^1 ^7 0.5 0.5 0.5 0 5 force
particle block{block_state:"minecraft:redstone_block"} ^ ^1 ^8 0.5 0.5 0.5 0 5 force
particle block{block_state:"minecraft:redstone_block"} ^ ^1 ^9 0.5 0.5 0.5 0 5 force