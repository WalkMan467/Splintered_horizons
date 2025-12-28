
execute \
    unless score @s weapon.nightfall.charge matches 5 run \
scoreboard players set @s player.actionbar.weapon.nightfall 10

execute \
    if score @s weapon.nightfall.charge matches 5 run \
scoreboard players set @s player.actionbar.weapon.nightfall 20

playsound minecraft:entity.ender_eye.death master @s ~ ~ ~ 1 0

execute \
    if score @s weapon.nightfall.charge matches 4 run \
playsound minecraft:entity.squid.squirt master @a ~ ~ ~ 1 2