
scoreboard players add @s mob.duration 1

# digit
function particle:portal/digit/use

rotate @s ~ 0


# detect

execute \
    as @a[distance=..5] \
    positioned ~-2 ~ ~-2 \
    if entity @s[dx=3,dy=1,dz=3] run \
advancement grant @s only monsters:chapter_2/elekiel_phase_2/2/in

execute \
    as @a[distance=..5] \
    positioned ~-2 ~ ~-2 \
    unless entity @s[dx=3,dy=1,dz=3] run \
advancement grant @s only monsters:chapter_2/elekiel_phase_2/2/out


# silhouette
scoreboard players operation #duration mob.main = @s mob.duration
scoreboard players operation #duration mob.main %= #5 mob.main

execute \
    if score #duration mob.main matches 0 run \
function particle:portal/crack_silhouette/use


execute \
    if score @s mob.duration matches 500.. run \
kill @s