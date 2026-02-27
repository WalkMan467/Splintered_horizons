execute if score @s player.click.interval matches 1.. run return 0

scoreboard players set @s player.click.interval 5
scoreboard players add @s weapon.flame_of_finality.attack 1
scoreboard players reset #weapon.flame_of_finality.blade particle
scoreboard players set @s weapon.flame_of_finality.attack.timer 12
tag @s add weapon.flame_of_finality.user
attribute @s attack_damage modifier remove weapon.flame_of_finality

execute \
    if score @s weapon.flame_of_finality.attack matches 1 run \
function weapons:type/scythe/flame_of_finality/lc/1/use

execute \
    if score @s weapon.flame_of_finality.attack matches 2 run \
function weapons:type/scythe/flame_of_finality/lc/2/use

execute \
    if score @s weapon.flame_of_finality.attack matches 3 \
    positioned ~ ~1.5 ~ run \
function weapons:type/scythe/flame_of_finality/lc/3/use

execute \
    if score @s weapon.flame_of_finality.attack matches 4 run \
function weapons:type/scythe/flame_of_finality/lc/4/use

playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 0.75

tag @s remove weapon.flame_of_finality.user
attribute @s attack_damage modifier add weapon.flame_of_finality -1 add_multiplied_base

execute \
    unless score @s weapon.flame_of_finality.attack matches 4.. run \
return 0

scoreboard players reset @s weapon.flame_of_finality.attack