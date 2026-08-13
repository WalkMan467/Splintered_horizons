# dmg
execute \
    on attacker \
    unless score @s weapon.effect.starry_sky_frost matches 1.. run \
return 0

tag @s add dmger

execute \
    on attacker run \
function weapons:type/sword/aquilumera/passive/on_attacker
