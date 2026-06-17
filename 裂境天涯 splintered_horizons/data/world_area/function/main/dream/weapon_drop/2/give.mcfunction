execute \
    on target \
    store result score #world_area.main.dream.weapon_drop global.main run \
clear @s *[custom_data~{beginner_tutorial:1b,weapon:"morning_light"}] 0

execute \
    on target \
    unless score #world_area.main.dream.weapon_drop global.main matches 1.. run \
give @s stone_sword[item_name=[{"translate":"weapon.morning_light","color":"#ffd000","italic":false,"bold":true}],lore=[[{"translate":"weapon.morning_light.type","italic":false,"color":"dark_gray"}],{"text":""},[{"translate":"weapon.morning_light.story.1","italic":false,"color":"blue"}],[{"translate":"weapon.morning_light.story.2","italic":false,"color":"blue"}],[{"translate":"weapon.morning_light.story.3","italic":false,"color":"blue"}],[{"translate":"weapon.morning_light.story.4","italic":false,"color":"blue"}],[{"translate":"weapon.morning_light.story.5","italic":false,"color":"blue"}],{"text":""},[{"text":"","italic":false},{"translate":"weapon.morning_light.skill","color":"gold","bold":true},{"text":"  "},{"translate":"weapon.skill_cd","color":"#6E6E6E"},{"text":"5s"}],[{"text":"","italic":false},{"translate":"weapon.morning_light.skill.1","color":"#fffb00"}],[{"text":"","italic":false},{"translate":"weapon.morning_light.skill.2","color":"#fffb00"}],[{"text":"","italic":false},{"translate":"weapon.morning_light.skill.3","color":"#fffb00"}],[{"text":"","italic":false},{"translate":"weapon.morning_light.skill.4","color":"#fffb00",with:[{"translate":"weapon.effect.resplendence","underlined":true,"color":"gold"}]}],[{"text":"","italic":false},{"translate":"weapon.morning_light.skill.5","color":"#fffb00"}],{"text":""},[{"text":"","italic":false},{"translate":"weapon.morning_light.passive_skills","color":"gold","bold":true},{"text":"  "}],[{"text":"","italic":false},{"translate":"weapon.morning_light.passive_skills.1","color":"#fffb00"}],[{"text":"","italic":false},{"translate":"weapon.morning_light.passive_skills.2","color":"#fffb00"}],[{"text":"","italic":false},{"translate":"weapon.morning_light.passive_skills.3","color":"#fffb00"}],[{"text":"","italic":false},{"translate":"weapon.morning_light.passive_skills.4","color":"#fffb00",with:[{"translate":"weapon.effect.holy_fire","underlined":true,"color":"#e6e6e6"}]}]],attribute_modifiers=[{id:"base_attack_damage",type:"attack_damage",amount:3.5,operation:"add_value",slot:"mainhand"},{id:"base_attack_speed",type:"attack_speed",amount:-2.35,operation:"add_value",slot:"mainhand"}],max_stack_size=1,max_damage=150,damage=0,item_model="minecraft:sword/morning_light/1",custom_data={type:"sword",rarity:"epic",weapon:"morning_light",beginner_tutorial:1b,forging_table:1b},minecraft:enchantments={"weapons:type/sword/morning_light/use":1, "minecraft:mending":1},enchantment_glint_override=false,tooltip_style="epic"]

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