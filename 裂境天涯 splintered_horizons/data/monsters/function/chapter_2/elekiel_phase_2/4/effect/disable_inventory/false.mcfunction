tag @s remove monster.elekiel_phase_2.void.target

clear @s *[custom_data~{disable_inventory:1b}]
item replace entity @s weapon.offhand with air
item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

function players:inventory/return {bag:"monsters/elekiel_phase_2/4/effect/void"}