
scoreboard players add @s mob.duration 1

# digit
function mob:elekiel/2/digit/use

# detect
execute as @a[distance=..5] positioned ~-2 ~ ~-2 if entity @s[dx=3,dy=1,dz=3] run advancement grant @s only mob:elekiel/2/in
execute as @a[distance=..5] positioned ~-2 ~ ~-2 unless entity @s[dx=3,dy=1,dz=3] run advancement grant @s only mob:elekiel/2/out


# silhouette
scoreboard players operation #duration mob.main = @s mob.duration
scoreboard players operation #duration mob.main %= #5 mob.main
execute if score #duration mob.main matches 0 run function mob:elekiel/2/crack_silhouette/use

execute if score @s mob.duration matches 200.. run kill @s