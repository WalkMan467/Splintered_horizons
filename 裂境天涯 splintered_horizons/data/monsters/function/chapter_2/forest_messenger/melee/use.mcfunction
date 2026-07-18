
execute \
    if entity @s[tag=monster.forest_afterimage.melee] run \
return 0

tag @s remove monster.forest_afterimage.remote

item replace entity @s weapon.mainhand with stone_sword[item_model="sword/wind_sword/1",attribute_modifiers=[{id:"minecraft:base_attack_damage",type:"attack_damage",operation:"add_value",amount:1.5,slot:"mainhand"}]]

tag @s add monster.forest_afterimage.melee