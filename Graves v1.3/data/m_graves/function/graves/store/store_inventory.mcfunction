## Clear and store this player's inventory and xp
clear @s *[enchantments~[{"enchantments":"vanishing_curse"}]]
execute if score #graves.lose_items mp.settings matches 1 run clear @s #m_graves:lost_items
execute if score #graves.keep_xp mp.settings matches 0 run function m_graves:graves/store/experience
execute if score #graves.keep_xp mp.settings matches 1 run data modify storage multipack:graves Xp set value 0
data modify storage multipack:graves Items set from entity @s Inventory
data modify storage multipack:graves Items append from entity @s equipment.offhand
execute if items entity @s weapon.offhand * run data modify storage multipack:graves Items[-1].Slot set value "offhand"
data modify storage multipack:graves Items append from entity @s equipment.feet
execute if items entity @s armor.feet * run data modify storage multipack:graves Items[-1].Slot set value "feet"
data modify storage multipack:graves Items append from entity @s equipment.legs
execute if items entity @s armor.legs * run data modify storage multipack:graves Items[-1].Slot set value "legs"
data modify storage multipack:graves Items append from entity @s equipment.chest
execute if items entity @s armor.chest * run data modify storage multipack:graves Items[-1].Slot set value "chest"
data modify storage multipack:graves Items append from entity @s equipment.head
execute if items entity @s armor.head * run data modify storage multipack:graves Items[-1].Slot set value "head"
function m_graves:graves/store/clear_items
function m_graves:graves/store/remove_dupes
