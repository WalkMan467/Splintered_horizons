advancement revoke @s only weapons:type/sword/rock_crushing_greatsword/defense

execute \
    unless score @s weapon.rock_crushing_greatsword.hold_down matches 9..14 run \
return 0

playsound minecraft:entity.iron_golem.repair voice @a ~ ~1 ~ 1 0.875
particle minecraft:crit ~ ~1 ~ 0 0 0 1.5 100 normal @a

scoreboard players set @s weapon.effect.holy_fire 100