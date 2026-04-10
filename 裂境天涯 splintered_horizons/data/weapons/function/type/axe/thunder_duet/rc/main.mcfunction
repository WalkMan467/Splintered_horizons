tp @s ^ ^ ^1

scoreboard players operation @n[distance=..1.5,tag=!weapon.thunder_duet.tunder,type=!#minecraft:dummy_mob,type=!player] weapon.thunder_duet.id = @s weapon.thunder_duet.id

execute \
    unless block ~ ~ ~ #penetrate run \
kill @s