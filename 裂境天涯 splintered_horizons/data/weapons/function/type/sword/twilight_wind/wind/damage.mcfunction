
# effect
tag @s add dmger

execute as @a if score @s player.id = #this player.id run tag @s add atker
damage @s 5 weapons:type/sword/wind_sword by @p[tag=atker]
tag @p[tag=atker] remove atker