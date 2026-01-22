scoreboard players add @s armor.paladins_helmet.cd 0

execute \
    unless items entity @s armor.head *[minecraft:custom_data~{id:"paladins_helmet"}] run \
return 0

execute \
    if score @s armor.paladins_helmet.cd matches 1.. run \
return 0

execute \
    if score @s armor.helmet.effect.actived matches 1.. run \
return 0

scoreboard players set @s armor.paladins_helmet.cd 25

scoreboard players set @s armor.paladins_helmet.effect.timer 8
attribute @s armor_toughness modifier add armor.paladins_helmet.effect.timer 3 add_value

scoreboard players set @s armor.helmet.effect.actived 2