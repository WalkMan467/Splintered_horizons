give @s stone_sword[item_name=[{"translate": "weapon.wind_sword", "color": "dark_aqua", "bold": true}],lore=[[{"translate": "weapon.wind_sword.type", "color": "dark_gray", "italic": false}], {"text": ""}, [{"translate": "weapon.wind_sword.story.1", "color": "blue", "italic": false}], {"text": ""}, [{"text": "", "italic": false}, {"translate": "weapon.wind_sword.passive_skills", "color": "dark_aqua", "bold": true}, {"text": "  "}, {"translate": "weapon.skill_cd", "color": "#6E6E6E"}, {"text": "13s"}], [{"text": "", "italic": false}, {"translate": "weapon.wind_sword.passive_skills.1", "color": "#23768f", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.wind_sword.passive_skills.2", "color": "#23768f", "italic": false, "with": [{"keybind": "key.use", "underlined": True, "color": "dark_green"}]}], [{"text": "", "italic": false}, {"translate": "weapon.wind_sword.passive_skills.3", "color": "#23768f", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.wind_sword.passive_skills.4", "color": "#23768f", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.wind_sword.passive_skills.5", "color": "#23768f", "italic": false, "with": [{"translate": "weapon.effect.resplendence", "underlined": True, "color": "gold"}]}], [{"text": "", "italic": false}, {"translate": "weapon.wind_sword.passive_skills.6", "color": "#23768f", "italic": false}], {"text": ""}],attribute_modifiers=[{type:"attack_damage",id:"base_attack_damage",amount:4,operation:"add_value",slot:"mainhand"},{type:"attack_speed",id:"base_attack_speed",amount:-2.2,operation:"add_value",slot:"mainhand"}],max_stack_size=1,max_damage=150,damage=0,item_model="sword/wind_sword/1",custom_data={type:"sword",rarity:"rare",weapon:"wind_sword",forging_table:1b},enchantment_glint_override=false,tooltip_style="rare",minecraft:enchantments={"weapons:type/sword/wind_sword/use":1,"minecraft:unbreaking":1},damage_type="weapons:type/sword/wind_sword_attack", minimum_attack_charge=0.5]

# ==============================
# Translate Keys
# ==============================
# "weapon.wind_sword" : "࿓ 風力劍 ࿓",
# "weapon.wind_sword.type" : "劍 / 稀有",
# "weapon.wind_sword.story.1" : "受到風之祝福的劍，擁有操控風的力量。",
# "weapon.wind_sword.passive_skills" : "[風速斬]",
# "weapon.wind_sword.passive_skills.1" : "連續施放2個風速劍氣，",
# "weapon.wind_sword.passive_skills.2" : "對路徑上的敵人造成 150% 攻擊傷害，",
# "weapon.wind_sword.passive_skills.3" : "並且使他們起飛。",
# "weapon.wind_sword.passive_skills.4" : "當你使用此武器技能時",
# "weapon.wind_sword.passive_skills.5" : "你將獲得 [%s] 持續 5 秒。",
# "weapon.wind_sword.passive_skills.6" : "可以讓特定武器 CD 減少或者更為強大",

# ==============================
# item_builder.py Backup
# ==============================
# def build_item_struct():
#     return {
#         "name": ['࿓ 風力劍 ࿓', "dark_aqua", '劍 / 稀有'],
#         "story": {
#             'info': ['受到風之祝福的劍，擁有操控風的力量。'],
#             'color': 'blue'
#         },
#         "item_data": {
#             'real_item': 'stone_sword',
#             'id': 'wind_sword',
#             'item_model': '"sword/wind_sword/1"',
#             'custom_data': 'type:"sword",rarity:"rare",weapon:"wind_sword",forging_table:1b',
#             'rc': False,
#             'lc': False,
#             'max_damage': 150,
#             'max_stack_size': 1,
#             'other': [
#                 'minecraft:enchantments={"weapons:type/sword/wind_sword/use":1,"minecraft:unbreaking":1}',
#                 'enchantment_glint_override=false',
#                 'tooltip_style="rare"'
#             ]
#         },
# 
#         "skill": {
#             "is_skill": False,
#             "cd": 13,
#             "name": ["風速斬", "dark_aqua", "#23768f"],
#             "info": [
#                 "連續施放2個風速劍氣，",
# 
#                 {
#                     "text": "對路徑上的敵人造成 150% 攻擊傷害，",
#                     "with": [
#                         {"keybind": "key.use", "underlined": True, "color": "dark_green"}
#                     ]
#                 },
#                 "並且使他們起飛。",
#                 "當你使用此武器技能時",
#                 {
#                     "text": "你將獲得 [%s] 持續 5 秒。",
#                     "with": [
#                         {"translate":"weapon.effect.resplendence","underlined":True,"color":"gold"}
#                     ]
#                 },
#                 "可以讓特定武器 CD 減少或者更為強大"
#             ]
#         },
# 
#         "passive_skills": {
#             'is_passive_skills': True,
#             'cd': 13,
#             'name': ['風速斬', 'dark_aqua', '#23768f'],
#             'info': [
#                 "連續施放2個風速劍氣，",
#                 {
#                     "text": "對路徑上的敵人造成 150% 攻擊傷害，",
#                     "with": [
#                         {"keybind": "key.use", "underlined": True, "color": "dark_green"}
#                     ]
#                 },
#                 "並且使他們起飛。",
#                 "當你使用此武器技能時",
#                 {
#                     "text": "你將獲得 [%s] 持續 5 秒。",
#                     "with": [
#                         {"translate":"weapon.effect.resplendence","underlined":True,"color":"gold"}
#                     ]
#                 },
#                 "可以讓特定武器 CD 減少或者更為強大"
#             ]
#         },
# 
#         "ultimate": {
#             'is_ultimate': False,
#             'cd': 20,
#             'name': ['2', '#ff0000', '#7a0000'],
#             'info': ['']
#         },
#         "attributes": [
#             {
#                 'attribute': 'attack_damage',
#                 'id': 'base_attack_damage',
#                 'value': 4,
#                 'slot': 'mainhand',
#                 'operation': 'add_value'
#             },
#             {
#                 'attribute': 'attack_speed',
#                 'id': "base_attack_speed",
#                 'value': -2.2,
#                 'slot': 'mainhand',
#                 'operation': 'add_value'
#             }
#         ]
#     }