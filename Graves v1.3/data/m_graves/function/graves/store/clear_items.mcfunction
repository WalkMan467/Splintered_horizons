## Clear items that should be dropped on death and adjusts 'multipack:graves' accordingly
# Clear non-kept_item tag items
execute if score #graves.keep_hotbar mp.settings matches 0 unless items entity @s hotbar.0 #m_graves:kept_items run item replace entity @s hotbar.0 with air
execute if score #graves.keep_hotbar mp.settings matches 0 unless items entity @s hotbar.1 #m_graves:kept_items run item replace entity @s hotbar.1 with air
execute if score #graves.keep_hotbar mp.settings matches 0 unless items entity @s hotbar.2 #m_graves:kept_items run item replace entity @s hotbar.2 with air
execute if score #graves.keep_hotbar mp.settings matches 0 unless items entity @s hotbar.3 #m_graves:kept_items run item replace entity @s hotbar.3 with air
execute if score #graves.keep_hotbar mp.settings matches 0 unless items entity @s hotbar.4 #m_graves:kept_items run item replace entity @s hotbar.4 with air
execute if score #graves.keep_hotbar mp.settings matches 0 unless items entity @s hotbar.5 #m_graves:kept_items run item replace entity @s hotbar.5 with air
execute if score #graves.keep_hotbar mp.settings matches 0 unless items entity @s hotbar.6 #m_graves:kept_items run item replace entity @s hotbar.6 with air
execute if score #graves.keep_hotbar mp.settings matches 0 unless items entity @s hotbar.7 #m_graves:kept_items run item replace entity @s hotbar.7 with air
execute if score #graves.keep_hotbar mp.settings matches 0 unless items entity @s hotbar.8 #m_graves:kept_items run item replace entity @s hotbar.8 with air
execute if score #graves.keep_hotbar mp.settings matches 0 unless items entity @s weapon.offhand #m_graves:kept_items run item replace entity @s weapon.offhand with air
execute if score #graves.keep_armor mp.settings matches 0 unless items entity @s armor.head #m_graves:kept_items run item replace entity @s armor.head with air
execute if score #graves.keep_armor mp.settings matches 0 unless items entity @s armor.chest #m_graves:kept_items run item replace entity @s armor.chest with air
execute if score #graves.keep_armor mp.settings matches 0 unless items entity @s armor.legs #m_graves:kept_items run item replace entity @s armor.legs with air
execute if score #graves.keep_armor mp.settings matches 0 unless items entity @s armor.feet #m_graves:kept_items run item replace entity @s armor.feet with air
execute unless items entity @s inventory.0 #m_graves:kept_items run item replace entity @s inventory.0 with air
execute unless items entity @s inventory.1 #m_graves:kept_items run item replace entity @s inventory.1 with air
execute unless items entity @s inventory.2 #m_graves:kept_items run item replace entity @s inventory.2 with air
execute unless items entity @s inventory.3 #m_graves:kept_items run item replace entity @s inventory.3 with air
execute unless items entity @s inventory.4 #m_graves:kept_items run item replace entity @s inventory.4 with air
execute unless items entity @s inventory.5 #m_graves:kept_items run item replace entity @s inventory.5 with air
execute unless items entity @s inventory.6 #m_graves:kept_items run item replace entity @s inventory.6 with air
execute unless items entity @s inventory.7 #m_graves:kept_items run item replace entity @s inventory.7 with air
execute unless items entity @s inventory.8 #m_graves:kept_items run item replace entity @s inventory.8 with air
execute unless items entity @s inventory.9 #m_graves:kept_items run item replace entity @s inventory.9 with air
execute unless items entity @s inventory.10 #m_graves:kept_items run item replace entity @s inventory.10 with air
execute unless items entity @s inventory.11 #m_graves:kept_items run item replace entity @s inventory.11 with air
execute unless items entity @s inventory.12 #m_graves:kept_items run item replace entity @s inventory.12 with air
execute unless items entity @s inventory.13 #m_graves:kept_items run item replace entity @s inventory.13 with air
execute unless items entity @s inventory.14 #m_graves:kept_items run item replace entity @s inventory.14 with air
execute unless items entity @s inventory.15 #m_graves:kept_items run item replace entity @s inventory.15 with air
execute unless items entity @s inventory.16 #m_graves:kept_items run item replace entity @s inventory.16 with air
execute unless items entity @s inventory.17 #m_graves:kept_items run item replace entity @s inventory.17 with air
execute unless items entity @s inventory.18 #m_graves:kept_items run item replace entity @s inventory.18 with air
execute unless items entity @s inventory.19 #m_graves:kept_items run item replace entity @s inventory.19 with air
execute unless items entity @s inventory.20 #m_graves:kept_items run item replace entity @s inventory.20 with air
execute unless items entity @s inventory.21 #m_graves:kept_items run item replace entity @s inventory.21 with air
execute unless items entity @s inventory.22 #m_graves:kept_items run item replace entity @s inventory.22 with air
execute unless items entity @s inventory.23 #m_graves:kept_items run item replace entity @s inventory.23 with air
execute unless items entity @s inventory.24 #m_graves:kept_items run item replace entity @s inventory.24 with air
execute unless items entity @s inventory.25 #m_graves:kept_items run item replace entity @s inventory.25 with air
execute unless items entity @s inventory.26 #m_graves:kept_items run item replace entity @s inventory.26 with air
# Clear kept_item tag items if kept items is disabled
execute if score #graves.keep_items mp.settings matches 1 run return 0
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
