
# rotation
execute store result entity @s Rotation[0] float 0.1 run random value 0..3600
execute store result entity @s Rotation[1] float 0.1 run random value -750..750

# passenger
execute at @s on passengers run rotate @s ~ ~

tag @s remove summon
data remove storage mob:temp temp