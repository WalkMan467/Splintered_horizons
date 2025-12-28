
# effect
tag @s add dmger


execute \
    as @a \
    if score @s player.id = #this player.id run \
tag @s add atker
damage @s 5 weapons:type/sword/twilight_wind by @p[tag=atker]
tag @p[tag=atker] remove atker