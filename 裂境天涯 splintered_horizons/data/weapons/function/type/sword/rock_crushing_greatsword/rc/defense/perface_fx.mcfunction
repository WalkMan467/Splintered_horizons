advancement revoke @s only weapons:type/sword/rock_crushing_greatsword/perface_defense


execute \
    unless score @s weapon.rock_crushing_greatsword.hold_down matches 1..8 run \
return 0

playsound minecraft:entity.iron_golem.repair voice @a ~ ~1 ~ 1 0.875
particle minecraft:crit ~ ~1 ~ 0 0 0 1.5 100 normal @a
playsound minecraft:block.anvil.land voice @a ~ ~1 ~ 1 1

particle minecraft:lava ~ ~1 ~ 0 0 0 1 10 normal @a
particle minecraft:flame ~ ~1 ~ 0 0 0 0.5 40 normal @a


execute \
    on attacker run \
effect give @s weakness 1 255 true

execute \
    on attacker run \
function weapons:type/sword/rock_crushing_greatsword/rc/apply_motion


execute \
    store result score #rdm global.main run \
random value 1..3

execute \
    if score #rdm global.main matches 1 run \
playsound minecraft:voice.deflect voice @a ~ ~1 ~ 0.5 0.75

execute \
    if score #rdm global.main matches 2 run \
playsound minecraft:voice.deflect voice @a ~ ~1 ~ 0.5 1

execute \
    if score #rdm global.main matches 3 run \
playsound minecraft:voice.deflect voice @a ~ ~1 ~ 0.5 1.25

advancement grant @s only players:adv/defense

function weapons:type/sword/rock_crushing_greatsword/rc/apply_motion
attribute @s minecraft:gravity modifier add no_knockup 2 add_multiplied_base

scoreboard players set @s weapon.effect.holy_fire 100

tag @s add weapon.rock_crushing_greatsword.perface_defense