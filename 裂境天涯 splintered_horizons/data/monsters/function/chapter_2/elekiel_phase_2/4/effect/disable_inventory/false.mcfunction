execute \
    unless entity @s[tag=monster.elekiel_phase_2.void.target] run \
return 0

clear @s *[custom_data~{disable_inventory:1b}]
item replace entity @s weapon.offhand with air
item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

function players:inventory/return {bag:"overworld"}

kill @e[sort=arbitrary,predicate=monsters:chapter_2/elekiel_phase_2/disable_inventory/item,type=item]

tag @s remove monster.elekiel_phase_2.void.target