# 這裡有嚴重 Bug 會使玩家在開始戰鬥後物品消失
execute unless entity @s[tag=monster.elekiel_phase_2.void.target] run return 0

clear @s *[custom_data~{disable_inventory:1b}]
item replace entity @s weapon.offhand with air
item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

function players:inventory/return {bag:"overworld"}


tag @s remove monster.elekiel_phase_2.void.target