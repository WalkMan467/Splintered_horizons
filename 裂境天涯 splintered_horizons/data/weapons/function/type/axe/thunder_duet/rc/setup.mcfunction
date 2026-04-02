execute \
    rotated as @p run \
rotate @s ~ ~

tag @s remove summon

scoreboard players set @s duration 5

scoreboard players operation @s weapon.thunder_duet.id = #index weapon.thunder_duet.id