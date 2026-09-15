give @s arrow[item_name=[{"translate": "weapon.damage_resonance_arrow", "color": "#fbff00", "bold": true}],lore=[[{"translate": "weapon.damage_resonance_arrow.type", "color": "dark_gray", "italic": false}], {"text": ""}, [{"translate": "weapon.damage_resonance_arrow.story.1", "color": "blue", "italic": false}], [{"translate": "weapon.damage_resonance_arrow.story.2", "color": "blue", "italic": false}], [{"translate": "weapon.damage_resonance_arrow.story.3", "color": "blue", "italic": false}], [{"translate": "weapon.damage_resonance_arrow.story.4", "color": "blue", "italic": false}], {"text": ""}, [{"text": "", "italic": false}, {"translate": "weapon.damage_resonance_arrow.skill", "color": "#fbff00", "bold": true}, {"text": "  "}], [{"text": "", "italic": false}, {"translate": "weapon.damage_resonance_arrow.skill.1", "color": "#fff98a", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.damage_resonance_arrow.skill.2", "color": "#fff98a", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.damage_resonance_arrow.skill.3", "color": "#fff98a", "italic": false, "with": [{"translate": "weapon.effect.damage_resonance", "underlined": True, "color": "#fbff00"}]}], [{"text": "", "italic": false}, {"translate": "weapon.damage_resonance_arrow.skill.4", "color": "#fff98a", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.damage_resonance_arrow.skill.5", "color": "#fff98a", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.damage_resonance_arrow.skill.6", "color": "#fff98a", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.damage_resonance_arrow.skill.7", "color": "#fff98a", "italic": false}], {"text": ""}],attribute_modifiers=[{type:"attack_speed",id:"base_attack_speed",amount:0,operation:"add_value",slot:"mainhand"}],max_stack_size=64,unbreakable={},item_model="arrow/shadow_arrow",custom_data={type:"arrow",rarity:"epic",id:"damage_resonance_arrow",ground_detect:1b},tooltip_display={hidden_components:["enchantments","attribute_modifiers","unbreakable"]},tooltip_style="epic"] 64

# ==============================
# Translate Keys
# ==============================
# "weapon.damage_resonance_arrow" : "傷害共鳴箭矢",
# "weapon.damage_resonance_arrow.type" : "箭矢 / 史詩",
# "weapon.damage_resonance_arrow.story.1" : "兩個傷口若同時裂開，痛楚便會彼此呼喚",
# "weapon.damage_resonance_arrow.story.2" : "古代的獵人發現，把獵物繫在同一條弦上",
# "weapon.damage_resonance_arrow.story.3" : "牠們就再也分不清哪一道傷是自己的",
# "weapon.damage_resonance_arrow.story.4" : "弦愈長，聲音愈散，痛也就愈輕",
# "weapon.damage_resonance_arrow.skill" : "[傷害共鳴]",
# "weapon.damage_resonance_arrow.skill.1" : "箭矢命中怪物或地板時:",
# "weapon.damage_resonance_arrow.skill.2" : "造成取至弓的 250% 基礎傷害",
# "weapon.damage_resonance_arrow.skill.3" : "並對 5 格範圍內的敵人附加 %1$s (00:15)",
# "weapon.damage_resonance_arrow.skill.4" : "共鳴中的任一目標受到傷害時",
# "weapon.damage_resonance_arrow.skill.5" : "該傷害會同時傳導給其他所有共鳴目標",
# "weapon.damage_resonance_arrow.skill.6" : "但總傷害會依共鳴目標的數量平均分攤",
# "weapon.damage_resonance_arrow.skill.7" : "所以共鳴的敵人越多，每一隻承受的越少",

# ==============================
# item_builder.py Backup
# ==============================
# def build_item_struct():
#     return {
#         "name": ['傷害共鳴箭矢', "#fbff00", '箭矢 / 史詩'],
#         "story": {
#             'info': [
#                 '兩個傷口若同時裂開，痛楚便會彼此呼喚',
#                 '古代的獵人發現，把獵物繫在同一條弦上',
#                 '牠們就再也分不清哪一道傷是自己的',
#                 '弦愈長，聲音愈散，痛也就愈輕'
#             ],
#             'color': 'blue'
#         },
#         "item_data": {
#             'real_item': 'arrow',
#             'id': 'damage_resonance_arrow',
#             'item_model': '"arrow/shadow_arrow"',
#             'custom_data': 'type:"arrow",rarity:"epic",id:"damage_resonance_arrow",ground_detect:1b',
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
#             "name": ["傷害共鳴", "#fbff00", "#fff98a"],
#             "info": [
#                 "箭矢命中怪物或地板時:",
#                 "造成取至弓的 250% 基礎傷害",
#                 {
#                     "text": "並對 5 格範圍內的敵人附加 %1$s (00:15)",
#                     "with": [
#                         {"translate": "weapon.effect.damage_resonance", "underlined": True, "color": "#fbff00"}
#                     ],
#                 },
#                 "共鳴中的任一目標受到傷害時",
#                 "該傷害會同時傳導給其他所有共鳴目標",
#                 "但總傷害會依共鳴目標的數量平均分攤",
#                 "所以共鳴的敵人越多，每一隻承受的越少",
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
