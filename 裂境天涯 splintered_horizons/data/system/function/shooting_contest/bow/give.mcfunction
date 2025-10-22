
# clear
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{shooting_contest:1b}}}}]
clear @a bow[custom_data~{shooting_contest:1b}]

# give
give @p bow[max_stack_size=1,unbreakable={},tooltip_display={hidden_components:["unbreakable","enchantments","attribute_modifiers"]},custom_data={shooting_contest:1b,disable_bow_detect:1b},enchantment_glint_override=false,attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:-1000,operation:"add_multiplied_total",slot:"any"}]] 1