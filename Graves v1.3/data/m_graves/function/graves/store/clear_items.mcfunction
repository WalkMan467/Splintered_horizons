## Clear item that should be dropped on death and adjusts 'multipack:graves' accordingly
# Clear non-kept_item tag item
execute if score #graves.keep_hotbar mp.settings matches 0 unless item entity @s hotbar.0 *[custom_data~{kept_item:true}] run item replace entity @s hotbar.0 with air
execute if score #graves.keep_hotbar mp.settings matches 0 unless item entity @s hotbar.1 *[custom_data~{kept_item:true}] run item replace entity @s hotbar.1 with air
execute if score #graves.keep_hotbar mp.settings matches 0 unless item entity @s hotbar.2 *[custom_data~{kept_item:true}] run item replace entity @s hotbar.2 with air
execute if score #graves.keep_hotbar mp.settings matches 0 unless item entity @s hotbar.3 *[custom_data~{kept_item:true}] run item replace entity @s hotbar.3 with air
execute if score #graves.keep_hotbar mp.settings matches 0 unless item entity @s hotbar.4 *[custom_data~{kept_item:true}] run item replace entity @s hotbar.4 with air
execute if score #graves.keep_hotbar mp.settings matches 0 unless item entity @s hotbar.5 *[custom_data~{kept_item:true}] run item replace entity @s hotbar.5 with air
execute if score #graves.keep_hotbar mp.settings matches 0 unless item entity @s hotbar.6 *[custom_data~{kept_item:true}] run item replace entity @s hotbar.6 with air
execute if score #graves.keep_hotbar mp.settings matches 0 unless item entity @s hotbar.7 *[custom_data~{kept_item:true}] run item replace entity @s hotbar.7 with air
execute if score #graves.keep_hotbar mp.settings matches 0 unless item entity @s hotbar.8 *[custom_data~{kept_item:true}] run item replace entity @s hotbar.8 with air
execute if score #graves.keep_hotbar mp.settings matches 0 unless item entity @s weapon.offhand *[custom_data~{kept_item:true}] run item replace entity @s weapon.offhand with air
execute if score #graves.keep_armor mp.settings matches 0 unless item entity @s armor.head *[custom_data~{kept_item:true}] run item replace entity @s armor.head with air
execute if score #graves.keep_armor mp.settings matches 0 unless item entity @s armor.chest *[custom_data~{kept_item:true}] run item replace entity @s armor.chest with air
execute if score #graves.keep_armor mp.settings matches 0 unless item entity @s armor.legs *[custom_data~{kept_item:true}] run item replace entity @s armor.legs with air
execute if score #graves.keep_armor mp.settings matches 0 unless item entity @s armor.feet *[custom_data~{kept_item:true}] run item replace entity @s armor.feet with air
execute unless item entity @s inventory.0 *[custom_data~{kept_item:true}] run item replace entity @s inventory.0 with air
execute unless item entity @s inventory.1 *[custom_data~{kept_item:true}] run item replace entity @s inventory.1 with air
execute unless item entity @s inventory.2 *[custom_data~{kept_item:true}] run item replace entity @s inventory.2 with air
execute unless item entity @s inventory.3 *[custom_data~{kept_item:true}] run item replace entity @s inventory.3 with air
execute unless item entity @s inventory.4 *[custom_data~{kept_item:true}] run item replace entity @s inventory.4 with air
execute unless item entity @s inventory.5 *[custom_data~{kept_item:true}] run item replace entity @s inventory.5 with air
execute unless item entity @s inventory.6 *[custom_data~{kept_item:true}] run item replace entity @s inventory.6 with air
execute unless item entity @s inventory.7 *[custom_data~{kept_item:true}] run item replace entity @s inventory.7 with air
execute unless item entity @s inventory.8 *[custom_data~{kept_item:true}] run item replace entity @s inventory.8 with air
execute unless item entity @s inventory.9 *[custom_data~{kept_item:true}] run item replace entity @s inventory.9 with air
execute unless item entity @s inventory.10 *[custom_data~{kept_item:true}] run item replace entity @s inventory.10 with air
execute unless item entity @s inventory.11 *[custom_data~{kept_item:true}] run item replace entity @s inventory.11 with air
execute unless item entity @s inventory.12 *[custom_data~{kept_item:true}] run item replace entity @s inventory.12 with air
execute unless item entity @s inventory.13 *[custom_data~{kept_item:true}] run item replace entity @s inventory.13 with air
execute unless item entity @s inventory.14 *[custom_data~{kept_item:true}] run item replace entity @s inventory.14 with air
execute unless item entity @s inventory.15 *[custom_data~{kept_item:true}] run item replace entity @s inventory.15 with air
execute unless item entity @s inventory.16 *[custom_data~{kept_item:true}] run item replace entity @s inventory.16 with air
execute unless item entity @s inventory.17 *[custom_data~{kept_item:true}] run item replace entity @s inventory.17 with air
execute unless item entity @s inventory.18 *[custom_data~{kept_item:true}] run item replace entity @s inventory.18 with air
execute unless item entity @s inventory.19 *[custom_data~{kept_item:true}] run item replace entity @s inventory.19 with air
execute unless item entity @s inventory.20 *[custom_data~{kept_item:true}] run item replace entity @s inventory.20 with air
execute unless item entity @s inventory.21 *[custom_data~{kept_item:true}] run item replace entity @s inventory.21 with air
execute unless item entity @s inventory.22 *[custom_data~{kept_item:true}] run item replace entity @s inventory.22 with air
execute unless item entity @s inventory.23 *[custom_data~{kept_item:true}] run item replace entity @s inventory.23 with air
execute unless item entity @s inventory.24 *[custom_data~{kept_item:true}] run item replace entity @s inventory.24 with air
execute unless item entity @s inventory.25 *[custom_data~{kept_item:true}] run item replace entity @s inventory.25 with air
execute unless item entity @s inventory.26 *[custom_data~{kept_item:true}] run item replace entity @s inventory.26 with air
# Clear kept_item tag item if kept item is disabled
execute if score #graves.keep_item mp.settings matches 1 run return 0
execute if score #graves.keep_hotbar mp.settings matches 0 run item replace entity @s hotbar.0 with air
execute if score #graves.keep_hotbar mp.settings matches 0 run item replace entity @s hotbar.1 with air
execute if score #graves.keep_hotbar mp.settings matches 0 run item replace entity @s hotbar.2 with air
execute if score #graves.keep_hotbar mp.settings matches 0 run item replace entity @s hotbar.3 with air
execute if score #graves.keep_hotbar mp.settings matches 0 run item replace entity @s hotbar.4 with air
execute if score #graves.keep_hotbar mp.settings matches 0 run item replace entity @s hotbar.5 with air
execute if score #graves.keep_hotbar mp.settings matches 0 run item replace entity @s hotbar.6 with air
execute if score #graves.keep_hotbar mp.settings matches 0 run item replace entity @s hotbar.7 with air
execute if score #graves.keep_hotbar mp.settings matches 0 run item replace entity @s hotbar.8 with air
execute if score #graves.keep_hotbar mp.settings matches 0 run item replace entity @s weapon.offhand with air
execute if score #graves.keep_armor mp.settings matches 0 run item replace entity @s armor.head with air
execute if score #graves.keep_armor mp.settings matches 0 run item replace entity @s armor.chest with air
execute if score #graves.keep_armor mp.settings matches 0 run item replace entity @s armor.legs with air
execute if score #graves.keep_armor mp.settings matches 0 run item replace entity @s armor.feet with air
item replace entity @s inventory.0 with air
item replace entity @s inventory.1 with air
item replace entity @s inventory.2 with air
item replace entity @s inventory.3 with air
item replace entity @s inventory.4 with air
item replace entity @s inventory.5 with air
item replace entity @s inventory.6 with air
item replace entity @s inventory.7 with air
item replace entity @s inventory.8 with air
item replace entity @s inventory.9 with air
item replace entity @s inventory.10 with air
item replace entity @s inventory.11 with air
item replace entity @s inventory.12 with air
item replace entity @s inventory.13 with air
item replace entity @s inventory.14 with air
item replace entity @s inventory.15 with air
item replace entity @s inventory.16 with air
item replace entity @s inventory.17 with air
item replace entity @s inventory.18 with air
item replace entity @s inventory.19 with air
item replace entity @s inventory.20 with air
item replace entity @s inventory.21 with air
item replace entity @s inventory.22 with air
item replace entity @s inventory.23 with air
item replace entity @s inventory.24 with air
item replace entity @s inventory.25 with air
item replace entity @s inventory.26 with air
