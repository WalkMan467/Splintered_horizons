execute \
    on attacker \
    unless entity @s[type=player] run \
return 0

execute \
    on attacker \
    if score @s weapon.effect.holy_fire matches 1.. run \
effect give @s absorption 10 0 true

execute \
    on attacker \
    unless entity @s[tag=weapon.rock_crushing_greatsword.perface_defense] run \
return 0

execute \
    on attacker run \
tag @s remove weapon.rock_crushing_greatsword.perface_defense

tag @e[distance=..3,type=!#minecraft:dummy_mob,type=!player] add dmger

execute \
    on attacker run \
tag @s[tag=!atker] add atker

execute \
    on attacker run \
scoreboard players set @s[tag=atker] atk 250

execute \
    on attacker run \
function dmg_formula:weapons/type/sword/rock_crushing_greatsword/calculate

particle dust_pillar{block_state:"minecraft:cobbled_deepslate"} ~ ~1 ~ 1 0.5 1 0 100 normal
playsound minecraft:entity.generic.explode voice @a ~ ~ ~ 1 0.75
playsound minecraft:item.mace.smash_ground voice @a ~ ~1 ~ 1 0.875

scoreboard players reset #weapon.rock_crushing_greatsword.fx particle
function weapons:type/sword/rock_crushing_greatsword/rc/effect/fx