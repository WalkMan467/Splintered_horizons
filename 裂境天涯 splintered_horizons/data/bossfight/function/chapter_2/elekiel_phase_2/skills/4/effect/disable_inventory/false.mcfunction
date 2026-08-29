
execute \
    unless entity @s[tag=monster.elekiel_phase_2.4.effect.player] run \
return 0

execute \
    unless entity @s[tag=monster.elekiel_phase_2.void.target] run \
return 0

clear @s *[custom_data~{disable_inventory:1b}]
item replace entity @s weapon.offhand with air
item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

# 先把狀態清掉，refresh 才會重算成「該回便服」
tag @s remove monster.elekiel_phase_2.void.target
function players:uniform/refresh

kill @e[sort=arbitrary,predicate=bossfight:chapter_2/elekiel_phase_2/skills/disable_inventory/item,type=item]
