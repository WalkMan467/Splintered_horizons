
summon item_frame ~ 255 ~ {Tags:[wma,wma.enchant],Invulnerable:1b}

item replace entity @e[type=item_frame,tag=wma.enchant,limit=1] container.0 from entity @s weapon.mainhand
$scoreboard players set #is_no_lvl wma.main $(lvl)

$execute unless score #is_no_lvl wma.main matches 0 run data modify entity @e[type=item_frame,tag=wma.enchant,limit=1] Item.components."minecraft:enchantments".levels."minecraft:$(id)" set value $(lvl)
$execute if score #is_no_lvl wma.main matches 0 run data remove entity @e[type=item_frame,tag=wma.enchant,limit=1] Item.components."minecraft:enchantments".levels."minecraft:$(id)"

item replace entity @s weapon.mainhand from entity @e[type=item_frame,tag=wma.enchant,limit=1] container.0

kill @e[type=item_frame,tag=wma.enchant,limit=1]