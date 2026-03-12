attribute @s movement_speed modifier add monsters.ai_controller 0.375 add_multiplied_base

$execute unless items entity @s weapon.mainhand * run \
item replace entity @s weapon.mainhand with wooden_spear[kinetic_weapon={delay_ticks:0,contact_cooldown_ticks:20,forward_movement:0.0,damage_multiplier:0.0,knockback_conditions:{max_duration_ticks:60,min_speed:1024,min_relative_speed:1024},damage_conditions:{max_duration_ticks:100,min_speed:1024,min_relative_speed:1024},sound:"item.spear.use",hit_sound:"item.spear.hit"},attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:0.0,operation:"add_multiplied_base",slot:"mainhand"}],unbreakable={},item_model="$(mainhand)",attack_range={min_reach:5.0,max_reach:5.0,min_creative_reach:5.0,max_creative_reach:5.0,hitbox_margin:0.5},swing_animation={duration:8,type:"whack"}] 1

$execute unless items entity @s weapon.offhand * run \
item replace entity @s weapon.offhand with wooden_sword[item_model="$(offhand)",attribute_modifiers=[{id:"attack_damage",type:"attack_damage",amount:0.0,operation:"add_multiplied_base",slot:"mainhand"}]] 1