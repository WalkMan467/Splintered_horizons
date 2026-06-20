execute \
    unless entity @s[tag=aj.stellar.animation.boots_of_the_black_hole.playing,type=minecraft:item_display] run \
return 0

tag @s add temp

execute \
    as @a[distance=..10] at @s \
    if score @s player.id = @n[sort=arbitrary,tag=temp,type=minecraft:item_display,distance=..10] armor.black_hole.boots.aj.id run \
tag @s add temp

# Run
execute \
    as @p[sort=arbitrary,tag=temp,distance=..10] at @n[sort=arbitrary,tag=temp,type=minecraft:item_display,distance=..10] \
    positioned ~ ~-1 ~ run \
function armors:type/black_hole/boots/effect/use

tag @s remove temp
tag @p[sort=arbitrary,tag=temp,distance=..10] remove temp