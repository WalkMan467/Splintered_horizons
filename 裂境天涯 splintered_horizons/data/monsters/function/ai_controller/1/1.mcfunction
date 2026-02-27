attribute @s movement_speed modifier remove monsters.ai_controller

item replace entity @s weapon.mainhand with shield

item replace entity @s weapon.offhand with wooden_sword[attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:0.0,operation:"add_multiplied_base",slot:"mainhand"}]] 1

function monsters:ai_controller/cast/end