
execute \
    on attacker \
    if score @s weapon.morning_light.cd matches 1.. run \
return 0

particle dust_color_transition{from_color:[1.000,0.800,0.000],scale:1,to_color:[1.000,0.729,0.459]} ~ ~0.5 ~ 1.5 0 1.5 1 60 normal @a


execute \
    on attacker \
    unless score @s weapon.effect.resplendence matches 1.. run \
scoreboard players set @s weapon.morning_light.cd 100
tag @e[type=!player,type=!#dummy_mob,distance=..3] add dmger

execute \
    as @e[type=!player,type=!#dummy_mob,distance=..3] \
    unless score @s entity.dummy_mob matches 1.. run \
function cse:status_effects/apply/armor_shred/use {duration:200,base:0.1, value:0.1,max:0.3}

function weapons:type/sword/morning_light/effect/fx/use


execute \
    on attacker run \
tag @s[tag=!atker,type=player] add atker

execute \
    on attacker run \
scoreboard players set @s[tag=atker,type=player] atk 150

execute \
    on attacker \
    as @s[type=player] run \
function dmg_formula:weapons/type/sword/morning_light/calculate


execute \
    on attacker run \
scoreboard players set @s weapon.effect.holy_fire 200