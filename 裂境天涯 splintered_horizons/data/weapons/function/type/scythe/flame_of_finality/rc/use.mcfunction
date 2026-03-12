scoreboard players add @s player.ultimate 0

execute \
    unless function weapons:type/scythe/flame_of_finality/rc/detect run \
return run \
function weapons:ultimate_use_failed

execute \
    unless score @s player.finality_tunder matches 1.. \
    unless score @s player.ultimate matches 1.. run \
scoreboard players set @s player.ultimate 500

execute \
    if score @s player.finality_tunder matches 1.. run \
scoreboard players remove @s player.finality_tunder 1

attribute @s attack_damage modifier remove weapon.flame_of_finality
tag @s add weapon.flame_of_finality.user

execute \
    unless score @s weapon.flame_of_finality.attack matches 2.. run \
function weapons:type/scythe/flame_of_finality/rc/attack/1/use

execute \
    if score @s weapon.flame_of_finality.attack matches 2 run \
function weapons:type/scythe/flame_of_finality/rc/attack/2

execute \
    if score @s weapon.flame_of_finality.attack matches 3 run \
function weapons:type/scythe/flame_of_finality/rc/attack/3

attribute @s attack_damage modifier add weapon.flame_of_finality -1 add_multiplied_base
tag @s remove weapon.flame_of_finality.user