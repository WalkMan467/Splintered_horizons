
# effect
tag @s add dmger

data merge entity @s {Motion:[0.0d,0.7d,0.0d]}

execute as @a if score @s player.id = #this player.id run tag @s add atker
damage @s 5 player_attack by @p[tag=atker]
tag @p[tag=atker] remove atker