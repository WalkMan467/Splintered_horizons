
execute \
    if block ~ ~-1 ~ #minecraft:penetrate run \
tp @s ^ ^ ^3

execute \
    unless block ~ ~-1 ~ #minecraft:penetrate run \
tag @s add ground

execute \
    unless entity @s[tag=ground] \
    as @a[distance=..2] run \
damage @s 4 weapons:bypasses_cooldown_no_knockback