give @s arrow[item_name=[{"translate": "weapon.soul_restraint_arrow", "color": "#00ffbb", "bold": true}],lore=[[{"translate":"weapon.soul_restraint_arrow.type","color":"dark_gray","italic":false}],{"text":""},[{"translate":"weapon.soul_restraint_arrow.story.1","color":"blue","italic":false}],[{"translate":"weapon.soul_restraint_arrow.story.2","color":"blue","italic":false}],[{"translate":"weapon.soul_restraint_arrow.story.3","color":"blue","italic":false}],[{"translate":"weapon.soul_restraint_arrow.story.4","color":"blue","italic":false}],{"text":""},[{"text":"","italic":false},{"translate":"weapon.soul_restraint_arrow.skill","color":"#00ffbb","bold":true},{"text":"  "}],[{"text":"","italic":false},{"translate":"weapon.soul_restraint_arrow.skill.1","color":"#a9ffe8","italic":false}],[{"text":"","italic":false},{"translate":"weapon.soul_restraint_arrow.skill.2","color":"#a9ffe8","italic":false}],[{"text":"","italic":false},{"translate":"weapon.soul_restraint_arrow.skill.3","color":"#a9ffe8","italic":false,"with":[{"translate":"cse.status_effects.soul_restraint","underlined":true,"color":"#00ffbb"}]}],[{"text":"","italic":false},{"translate":"weapon.soul_restraint_arrow.skill.4","color":"#a9ffe8","italic":false}],{"text":""}],attribute_modifiers=[{type:"attack_speed",id:"base_attack_speed",amount:0,operation:"add_value",slot:"mainhand"}],max_stack_size=64,unbreakable={},item_model="arrow/starry_sky_frost_arrow",custom_data={type:"arrow",rarity:"epic",id:"soul_restraint_arrow"},tooltip_display={hidden_components:["enchantments","attribute_modifiers","unbreakable"]},tooltip_style="epic"] 64

# ==============================
# Translate Keys
# ==============================
# "weapon.soul_restraint_arrow" : "靈魂拘束箭矢",
# "weapon.soul_restraint_arrow.type" : "箭矢 / 史詩",
# "weapon.soul_restraint_arrow.story.1" : "靈魂被釘住的東西，連影子都走不遠",
# "weapon.soul_restraint_arrow.story.2" : "古老的獵人會在獵物腳邊插上一柄矛",
# "weapon.soul_restraint_arrow.story.3" : "矛不殺牠，只是讓牠明白自己哪裡也去不了",
# "weapon.soul_restraint_arrow.story.4" : "真正的牢籠從來不是牆，是一條看不見的線",
# "weapon.soul_restraint_arrow.skill" : "[靈魂拘束]",
# "weapon.soul_restraint_arrow.skill.1" : "箭矢命中敵人時:",
# "weapon.soul_restraint_arrow.skill.2" : "造成取至弓的 250%% 真實傷害",
# "weapon.soul_restraint_arrow.skill.3" : "並對命中的敵人附加 %1$s (00:08)",
# "weapon.soul_restraint_arrow.skill.4" : "被拘束的目標只能在 4 格範圍內移動",

# ==============================
# item_builder.py Backup
# ==============================
# def build_item_struct():
#     return {
#         "name": ['靈魂拘束箭矢', "#00ffbb", '箭矢 / 史詩'],
#         "story": {
#             'info': [
#                 '靈魂被釘住的東西，連影子都走不遠',
#                 '古老的獵人會在獵物腳邊插上一柄矛',
#                 '矛不殺牠，只是讓牠明白自己哪裡也去不了',
#                 '真正的牢籠從來不是牆，是一條看不見的線'
#             ],
#             'color': 'blue'
#         },
#         "item_data": {
#             'real_item': 'arrow',
#             'id': 'soul_restraint_arrow',
#             'item_model': '"arrow/starry_sky_frost_arrow"',
#             'custom_data': 'type:"arrow",rarity:"epic",id:"soul_restraint_arrow"',
#             'rc': False,
#             'lc': False,
#             'max_damage': -1,
#             'max_stack_size': 64,
#             'other': [
#                 'tooltip_display={hidden_components:["enchantments","attribute_modifiers","unbreakable"]}',
#                 'tooltip_style="epic"'
#             ]
#         },
# 
#         "skill": {
#             "is_skill": True,
#             "cd": 0,
#             "name": ["靈魂拘束", "#00ffbb", "#a9ffe8"],
#             "info": [
#                 "箭矢命中敵人時:",
#                 "造成取至弓的 250%% 真實傷害",
#                 {
#                     "text": "並對命中的敵人附加 %1$s (00:08)",
#                     "with": [
#                         {"translate": "cse.status_effects.soul_restraint", "underlined": True, "color": "#00ffbb"}
#                     ],
#                 },
#                 "被拘束的目標只能在 4 格範圍內移動"
#             ]
#         },
# 
#         "passive_skills": {
#             'is_passive_skills': False,
#             'cd': 0,
#             'name': ['', "#ff0000", "#ff5100"],
#             'info': ['']
#         },
# 
#         "ultimate": {
#             'is_ultimate': False,
#             'cd': 0,
#             'name': ['', '#ff0000', '#7a0000'],
#             'info': ['']
#         },
#         "attributes": [
#             {
#                 'attribute': 'attack_speed',
#                 'id': "base_attack_speed",
#                 'value': 0,
#                 'slot': 'mainhand',
#                 'operation': 'add_value'
#             }
#         ]
#     }
