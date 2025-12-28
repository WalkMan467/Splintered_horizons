
execute \
    on vehicle run \
tag @s add void
ride @s dismount


execute \
    as @n[tag=void,type=!#minecraft:dummy_mob] at @s run \
tp @s ~ -255 ~
kill @e[tag=void,type=!#minecraft:dummy_mob]