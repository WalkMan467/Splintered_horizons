
execute \
    if score $value weapon.aquilumera.switch.water.fx.rdm_pos.raycast.id matches 8.. run \
return 0

scoreboard players add $value weapon.aquilumera.switch.water.fx.rdm_pos.raycast.id 1
execute \
    store result score $value weapon.aquilumera.switch.water.fx.rdm_pos.raycast run \
random value 2..8