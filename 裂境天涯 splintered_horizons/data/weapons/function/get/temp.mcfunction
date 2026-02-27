give @s iron_sword[item_name=[{"translate": "weapon.flame_of_finality", "color": "#CE0000", "bold": true}],lore=[[{"translate": "weapon.flame_of_finality.type", "color": "dark_gray", "italic": false}], {"text": ""}, [{"translate": "weapon.flame_of_finality.story.1", "color": "blue", "italic": false}], [{"translate": "weapon.flame_of_finality.story.2", "color": "blue", "italic": false}], [{"translate": "weapon.flame_of_finality.story.3", "color": "blue", "italic": false}], [{"translate": "weapon.flame_of_finality.story.4", "color": "blue", "italic": false}], {"text": ""}, [{"text": "", "italic": false}, {"translate": "weapon.flame_of_finality.passive_skills", "color": "#A70000", "bold": true}, {"text": "  "}], [{"text": "", "italic": false}, {"translate": "weapon.flame_of_finality.passive_skills.1", "color": "#7A0000", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.flame_of_finality.passive_skills.2", "color": "#7A0000", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.flame_of_finality.passive_skills.3", "color": "#7A0000", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.flame_of_finality.passive_skills.4", "color": "#7A0000", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.flame_of_finality.passive_skills.5", "color": "#7A0000", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.flame_of_finality.passive_skills.6", "color": "#7A0000", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.flame_of_finality.passive_skills.7", "color": "#7A0000", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.flame_of_finality.passive_skills.8", "color": "#7A0000", "italic": false}], {"text": ""}, [{"text": "", "italic": false}, {"translate": "weapon.flame_of_finality.ultimate", "color": "#ff0000", "bold": true}, {"text": "  "}, {"translate": "weapon.skill_cd", "color": "#6E6E6E"}, {"text": "20s"}], [{"text": "", "italic": false}, {"translate": "weapon.flame_of_finality.ultimate.1", "color": "#7a0000", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.flame_of_finality.ultimate.2", "color": "#7a0000", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.flame_of_finality.ultimate.3", "color": "#7a0000", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.flame_of_finality.ultimate.4", "color": "#7a0000", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.flame_of_finality.ultimate.5", "color": "#7a0000", "italic": false}]],attribute_modifiers=[{type:"attack_damage",id:"base_attack_damage",amount:3.5,operation:"add_value",slot:"mainhand"},{type:"attack_speed",id:"base_attack_speed",amount:-1,operation:"add_value",slot:"mainhand"}],max_stack_size=1,max_damage=200,damage=0,item_model="scythe/flame_of_finality/1",custom_data={type:"scythe",rarity:"mythic",weapon:"flame_of_finality",forging_table:1b},enchantment_glint_override=false,tooltip_style="mythic",minecraft:enchantments={"weapons:lc":1}]

# ==============================
# Translate Keys
# ==============================
# "weapon.flame_of_finality" : "終焉雙重火",
# "weapon.flame_of_finality.type" : "鐮刀 / 神話",
# "weapon.flame_of_finality.story.1" : "最終決戰過後，舊宇宙迎來了終點的結局",
# "weapon.flame_of_finality.story.2" : "同時，宇宙出現了由深淵延伸的新力量「終焉」",
# "weapon.flame_of_finality.story.3" : "這把武器的誕生目前無法得知",
# "weapon.flame_of_finality.story.4" : "同時也埋藏了很多秘密",
# "weapon.flame_of_finality.passive_skills" : "[紅炎之舞]",
# "weapon.flame_of_finality.passive_skills.1" : "普通攻擊分為 4 段特殊攻擊：",
# "weapon.flame_of_finality.passive_skills.2" : "",
# "weapon.flame_of_finality.passive_skills.3" : "第一段：向左揮砍對前方 3 格內怪物造成 100% 基礎傷害",
# "weapon.flame_of_finality.passive_skills.4" : "第二段：向右揮砍對前方 3 格內怪物造成 100% 基礎傷害",
# "weapon.flame_of_finality.passive_skills.5" : "第三段：在前方 3 格遠的位置召喚【火紅蓮】",
# "weapon.flame_of_finality.passive_skills.6" : "並且對 1.5 格範圍內怪物造成 150% 基礎傷害",
# "weapon.flame_of_finality.passive_skills.7" : "第四段：引爆【火紅蓮】並且對 1.5 格範圍內怪物造成 150% 基礎傷害，",
# "weapon.flame_of_finality.passive_skills.8" : "並且給予你一個終焉閃電",
# "weapon.flame_of_finality.ultimate" : "[八重黑火]",
# "weapon.flame_of_finality.ultimate.1" : "當你按下【右鍵】時：",
# "weapon.flame_of_finality.ultimate.2" : "消耗一顆終焉之眼",
# "weapon.flame_of_finality.ultimate.3" : "對前方 7 格長範圍內怪物造成 150% 傷害",
# "weapon.flame_of_finality.ultimate.4" : "如果你擁有終焉閃電：",
# "weapon.flame_of_finality.ultimate.5" : "則消耗一個終焉閃電，並向前發射 1 發黑火彈，對怪物造成 150% 基礎傷害",

# ==============================
# item_builder.py Backup
# ==============================
# def build_item_struct():
#     return {
#         "name": ['終焉雙重火', "#CE0000", '鐮刀 / 神話'],
#         "story": {
#             'info': ['最終決戰過後，舊宇宙迎來了終點的結局','同時，宇宙出現了由深淵延伸的新力量「終焉」','這把武器的誕生目前無法得知','同時也埋藏了很多秘密'],
#             'color': 'blue'
#         },
#         "item_data": {
#             'real_item': 'iron_sword',
#             'id': 'flame_of_finality',
#             'item_model': '"scythe/flame_of_finality/1"',
#             
#             'custom_data': 'type:"scythe",rarity:"mythic",weapon:"flame_of_finality",forging_table:1b',
#             
#             'rc': True,
#             'lc': True,
# 
#             'max_damage': 200,
#             'max_stack_size': 1,
#             'other': [
#                 'enchantment_glint_override=false',
#                 'tooltip_style="mythic"',
#                 'minecraft:enchantments={"weapons:lc":1}'
#             ]
#         },
#         "skill": {
#             "is_skill": False,
#             "cd": 0,
#             "name": ["紅炎之舞", "#A70000", "#7A0000"],
#             "info": [
#                 "普通攻擊分為 4 段特殊攻擊：",
#                 "",
#                 "第一段：向左揮砍對前方 3 格內怪物造成 100% 基礎傷害",
#                 "第二段：向右揮砍對前方 3 格內怪物造成 100% 基礎傷害",
#                 "第三段：在前方 3 格遠的位置召喚【火紅蓮】",
#                 "並且對 1.5 格範圍內怪物造成 150% 基礎傷害",
#                 "第四段：引爆【火紅蓮】並且對 1.5 格範圍內怪物造成 150% 基礎傷害，",
#                 "並且給予你一個終焉閃電"
#             ]
#         },
#         "passive_skills": {
#             'is_passive_skills': True,
#             'cd': 0,
#             'name': ['紅炎之舞', '#A70000', '#7A0000'],
#             'info': [
#                 "普通攻擊分為 4 段特殊攻擊：",
#                 "",
#                 "第一段：向左揮砍對前方 3 格內怪物造成 100% 基礎傷害",
#                 "第二段：向右揮砍對前方 3 格內怪物造成 100% 基礎傷害",
#                 "第三段：在前方 3 格遠的位置召喚【火紅蓮】",
#                 "並且對 1.5 格範圍內怪物造成 150% 基礎傷害",
#                 "第四段：引爆【火紅蓮】並且對 1.5 格範圍內怪物造成 150% 基礎傷害，",
#                 "並且給予你一個終焉閃電"
#                 ]
#         },
#         "ultimate": {
#             'is_ultimate': True,
#             'cd': 20,
#             'name': ['八重黑火', '#ff0000', '#7a0000'],
#             'info': [
#                 '當你按下【右鍵】時：',
#                 '消耗一顆終焉之眼',
#                 '對前方 7 格長範圍內怪物造成 150% 傷害',
#                 '如果你擁有終焉閃電：',
#                 '則消耗一個終焉閃電，並向前發射 1 發黑火彈，對怪物造成 150% 基礎傷害',
#                 ]
#         },
#         "attributes": [
#             {
#                 'attribute': 'attack_damage',
#                 'id': 'base_attack_damage',
#                 'value': 3.5,
#                 'slot': 'mainhand',
#                 'operation': 'add_value'
#             },
#             {
#                 'attribute': 'attack_speed',
#                 'id': "base_attack_speed",
#                 'value': -1,
#                 'slot': 'mainhand',
#                 'operation': 'add_value'
#             }
#         ]
#     }
