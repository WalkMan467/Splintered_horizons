execute \
    on target \
    store result score #world_area.main.dream.weapon_drop global.main run \
clear @s *[custom_data~{beginner_tutorial:1b,weapon:"wind_sword"}] 0

execute \
    on target \
    unless score #world_area.main.dream.weapon_drop global.main matches 1.. run \
give @s stone_sword[item_name=[{"translate": "weapon.wind_sword", "color": "dark_aqua", "bold": true}],lore=[[{"translate": "weapon.wind_sword.type", "color": "dark_gray", "italic": false}], {"text": ""}, [{"translate": "weapon.wind_sword.story.1", "color": "blue", "italic": false}], {"text": ""}, [{"text": "", "italic": false}, {"translate": "weapon.wind_sword.passive_skills", "color": "dark_aqua", "bold": true}, {"text": "  "}, {"translate": "weapon.skill_cd", "color": "#6E6E6E"}, {"text": "13s"}], [{"text": "", "italic": false}, {"translate": "weapon.wind_sword.passive_skills.1", "color": "#23768f", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.wind_sword.passive_skills.2", "color": "#23768f", "italic": false, "with": [{"keybind": "key.use", "underlined": True, "color": "dark_green"}]}], [{"text": "", "italic": false}, {"translate": "weapon.wind_sword.passive_skills.3", "color": "#23768f", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.wind_sword.passive_skills.4", "color": "#23768f", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.wind_sword.passive_skills.5", "color": "#23768f", "italic": false, "with": [{"translate": "weapon.effect.resplendence", "underlined": True, "color": "gold"}]}], [{"text": "", "italic": false}, {"translate": "weapon.wind_sword.passive_skills.6", "color": "#23768f", "italic": false}], {"text": ""}],attribute_modifiers=[{type:"attack_damage",id:"base_attack_damage",amount:4,operation:"add_value",slot:"mainhand"},{type:"attack_speed",id:"base_attack_speed",amount:-2.2,operation:"add_value",slot:"mainhand"}],max_stack_size=1,max_damage=150,damage=0,item_model="sword/wind_sword/1",custom_data={type:"sword",rarity:"rare",weapon:"wind_sword",beginner_tutorial:1b,forging_table:1b},enchantment_glint_override=false,tooltip_style="rare",minecraft:enchantments={"weapons:type/sword/wind_sword/use":1,"minecraft:unbreaking":1},damage_type="weapons:type/sword/wind_sword_attack", minimum_attack_charge=0.5]

execute \
    on target \
    unless score #world_area.main.dream.weapon_drop global.main matches 1.. run \
function world_area:main/dream/weapon_drop/success

tag @s add temp

execute \
    on target \
    if score #world_area.main.dream.weapon_drop global.main matches 1.. run \
function world_area:main/dream/weapon_drop/failure

tag @s remove temp

data remove entity @s interaction