execute \
    store result score #temp global.main run \
data get entity @s Rotation[0] 1

execute \
    if score #temp global.main matches 135..180 \
    as @n[sort=arbitrary,distance=..1.5,tag=summon,tag=sys.mining_site,type=block_display] at @s run \
tp @s ~ ~ ~ 180 0

execute \
    if score #temp global.main matches -180..-135 \
    as @n[sort=arbitrary,distance=..1.5,tag=summon,tag=sys.mining_site,type=block_display] at @s run \
tp @s ~ ~ ~ 180 0


execute \
    if score #temp global.main matches -135..-45 \
    as @n[sort=arbitrary,distance=..1.5,tag=summon,tag=sys.mining_site,type=block_display] at @s run \
tp @s ~ ~ ~ -90 0

execute \
    if score #temp global.main matches 45..135 \
    as @n[sort=arbitrary,distance=..1.5,tag=summon,tag=sys.mining_site,type=block_display] at @s run \
tp @s ~ ~ ~ 90 0

execute \
    if score #temp global.main matches -45..45 \
    as @n[sort=arbitrary,distance=..1.5,tag=summon,tag=sys.mining_site,type=block_display] at @s run \
tp @s ~ ~ ~ 0 0

tag @n[sort=arbitrary,distance=..1.5,tag=summon,tag=sys.mining_site,type=block_display] remove summon