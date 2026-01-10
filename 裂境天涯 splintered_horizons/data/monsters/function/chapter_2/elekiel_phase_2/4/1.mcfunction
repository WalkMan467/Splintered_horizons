scoreboard players set #monster.elekiel_phase_2.skill.4.portal.actived global.main 0

execute \
    if items entity @p[sort=arbitrary,tag=monster.elekiel_phase_2.4.target] armor.chest * run \
item modify entity @p[sort=arbitrary,tag=monster.elekiel_phase_2.4.target] armor.chest [{function:"minecraft:set_enchantments",enchantments:{"monsters:chapter_2/elekiel_phase_2/4/damage_immunity":1,"minecraft:binding_curse":1}}]

execute \
    unless items entity @p[sort=arbitrary,tag=monster.elekiel_phase_2.4.target] armor.chest * run \
item replace entity @p[sort=arbitrary,tag=monster.elekiel_phase_2.4.target] armor.chest with iron_sword[equippable={slot:"chest",asset_id:"air"},item_model="disable_icon",tooltip_display={hide_tooltip:true},enchantment_glint_override=false,enchantments={"binding_curse":1,"monsters:chapter_2/elekiel_phase_2/4/damage_immunity":1},attribute_modifiers=[{id:"base_attack_damage",type:"attack_damage",amount:0.0,operation:"add_multiplied_base",slot:"chest"},{id:"base_attack_speed",type:"attack_speed",amount:0.0,operation:"add_multiplied_base",slot:"chest"}],unbreakable={},custom_data={damage_immunity:1b}] 1

function particle:spacetime_collapse/use

summon marker ~ ~ ~ \
    { \
        UUID: [I; 2141321, -32124214, 2414121, -412421],\
        Tags: \
            [ \
                "monster.elekiel_phase_2.4.portal.point" \
            ] \
    }

tag @p[sort=arbitrary,tag=monster.elekiel_phase_2.4.target] add monster.elekiel_phase_2.4.portal.target