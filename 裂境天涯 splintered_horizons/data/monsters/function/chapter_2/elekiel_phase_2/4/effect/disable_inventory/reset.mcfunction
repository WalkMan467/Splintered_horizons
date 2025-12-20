execute \
    unless entity @s[tag=monster.elekiel_phase_2.void.target] run \
return 0

execute \
    if entity @s[tag=chapter_2.elekiel_phase_2.lose] run \
return 0

clear @s *[custom_data~{disable_inventory:1b}]

execute \
    if items entity @s player.cursor *[custom_data~{disable_inventory:1b}] run \
item replace entity @s player.cursor with air

give @s iron_sword[tooltip_display={hide_tooltip:true},item_model="disable_icon",item_name="",max_stack_size=1,attribute_modifiers=[{id:"base_attack_damage",type:"attack_damage",amount:0.0,operation:"add_multiplied_base",slot:"mainhand"},{id:"base_attack_speed",type:"attack_speed",amount:0.0,operation:"add_multiplied_base",slot:"mainhand"}],unbreakable={},custom_data={disable_inventory:1b,no_switch_sfx:1b}] 36
item replace entity @s armor.head with iron_sword[equippable={slot:"head",asset_id:"air"},item_model="disable_icon",tooltip_display={hide_tooltip:true},enchantment_glint_override=false,enchantments={"binding_curse":1,"monsters:chapter_2/elekiel_phase_2/4/damage_immunity":1},attribute_modifiers=[{id:"base_attack_damage",type:"attack_damage",amount:0.0,operation:"add_multiplied_base",slot:"head"},{id:"base_attack_speed",type:"attack_speed",amount:0.0,operation:"add_multiplied_base",slot:"head"}],unbreakable={},custom_data={disable_inventory:1b,no_switch_sfx:1b}] 1
item replace entity @s armor.chest with iron_sword[equippable={slot:"chest",asset_id:"air"},item_model="disable_icon",tooltip_display={hide_tooltip:true},enchantment_glint_override=false,enchantments={"binding_curse":1,"monsters:chapter_2/elekiel_phase_2/4/damage_immunity":1},attribute_modifiers=[{id:"base_attack_damage",type:"attack_damage",amount:0.0,operation:"add_multiplied_base",slot:"chest"},{id:"base_attack_speed",type:"attack_speed",amount:0.0,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},custom_data={disable_inventory:1b,no_switch_sfx:1b}] 1
item replace entity @s armor.legs with iron_sword[equippable={slot:"legs",asset_id:"air"},item_model="disable_icon",tooltip_display={hide_tooltip:true},enchantment_glint_override=false,enchantments={"binding_curse":1,"monsters:chapter_2/elekiel_phase_2/4/damage_immunity":1},attribute_modifiers=[{id:"base_attack_damage",type:"attack_damage",amount:0.0,operation:"add_multiplied_base",slot:"legs"},{id:"base_attack_speed",type:"attack_speed",amount:0.0,operation:"add_multiplied_base",slot:"legs"}],unbreakable={},custom_data={disable_inventory:1b,no_switch_sfx:1b}] 1
item replace entity @s armor.feet with iron_sword[equippable={slot:"feet",asset_id:"air"},item_model="disable_icon",tooltip_display={hide_tooltip:true},enchantment_glint_override=false,enchantments={"binding_curse":1,"monsters:chapter_2/elekiel_phase_2/4/damage_immunity":1},attribute_modifiers=[{id:"base_attack_damage",type:"attack_damage",amount:0.0,operation:"add_multiplied_base",slot:"feet"},{id:"base_attack_speed",type:"attack_speed",amount:0.0,operation:"add_multiplied_base",slot:"feet"}],unbreakable={},custom_data={disable_inventory:1b,no_switch_sfx:1b}] 1
item replace entity @s weapon.offhand with iron_sword[item_model="disable_icon",tooltip_display={hide_tooltip:true},enchantment_glint_override=false,attribute_modifiers=[{id:"base_attack_damage",type:"attack_damage",amount:0.0,operation:"add_multiplied_base",slot:"offhand"},{id:"base_attack_speed",type:"attack_speed",amount:0.0,operation:"add_multiplied_base",slot:"offhand"}],unbreakable={},custom_data={disable_inventory:1b,no_switch_sfx:1b}] 1

kill @e[sort=arbitrary,predicate=monsters:chapter_2/elekiel_phase_2/disable_inventory/item,type=item]

function players:inventory/return {bag:"disable_inventory"}

tag @s add monster.elekiel_phase_2.void.target