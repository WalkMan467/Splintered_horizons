
execute on attacker run \
scoreboard players add @a weapon.earthquake_axe.effect.cd 0


execute on attacker \
    if score @s weapon.earthquake_axe.effect.cd matches 1.. run \
return 0


execute on attacker run \
scoreboard players set @a weapon.earthquake_axe.effect.cd 80

execute on attacker \
    if score @s player.finality_tunder matches ..5 run \
scoreboard players add @a player.finality_tunder 1

tag @e[type=!player,type=!#dummy_mob,distance=..2.5] add dmger

execute on attacker run \
tag @s add atker

execute on attacker run \
scoreboard players set @s[tag=atker] atk 150

scoreboard players reset #weapon.earthquake_axe.fx particle
function weapons:type/axe/earthquake_axe/effect/fx
particle dust_pillar{block_state:"minecraft:cobbled_deepslate"} ~ ~1 ~ 0.5 0.5 0.5 0 200 normal @a
playsound minecraft:item.mace.smash_ground_heavy voice @a ~ ~1 ~ 1 0.75


execute on attacker \
    as @s[tag=atker] run \
function dmg_formula:weapons/type/axe/earthquake_axe/passive/calculate