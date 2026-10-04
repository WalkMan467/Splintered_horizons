give @s bow[item_name=[{"translate": "weapon.the_endwatcher", "color": "#CE0000", "bold": true}],lore=[[{"translate": "weapon.the_endwatcher.type", "color": "dark_gray", "italic": false}], {"text": ""}, [{"translate": "weapon.the_endwatcher.story.1", "color": "blue", "italic": false}], [{"translate": "weapon.the_endwatcher.story.2", "color": "blue", "italic": false}], [{"translate": "weapon.the_endwatcher.story.3", "color": "blue", "italic": false}], {"text": ""}, [{"text": "", "italic": false}, {"translate": "weapon.the_endwatcher.ultimate", "color": "#ff0000", "bold": true}, {"text": "  "}, {"translate": "weapon.skill_cd", "color": "#6E6E6E"}, {"text": "20s"}], [{"text": "", "italic": false}, {"translate": "weapon.the_endwatcher.ultimate.1", "color": "#A70000", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.the_endwatcher.ultimate.2", "color": "#A70000", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.the_endwatcher.ultimate.3", "color": "#A70000", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.the_endwatcher.ultimate.4", "color": "#A70000", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.the_endwatcher.ultimate.5", "color": "#A70000", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.the_endwatcher.ultimate.6", "color": "#A70000", "italic": false}], [{"text": "", "italic": false}, {"translate": "weapon.the_endwatcher.ultimate.7", "color": "#A70000", "italic": false}], {"text": ""}],attribute_modifiers=[{type:"attack_damage",id:"base_attack_damage",amount:3,operation:"add_value",slot:"mainhand"},{type:"attack_speed",id:"base_attack_speed",amount:-2.4,operation:"add_value",slot:"mainhand"}],max_stack_size=1,max_damage=200,damage=0,item_model="minecraft:bow/the_endwatcher/1",custom_data={type:"sword",rarity:"rare",weapon:"the_endwatcher",forging_table:1b},enchantment_glint_override=false,tooltip_style="mythic"]

# ==============================
# Translate Keys
# ==============================
# "weapon.the_endwatcher" : "終焉凝視者",
# "weapon.the_endwatcher.type" : "弓 / 秘藏",
# "weapon.the_endwatcher.story.1" : "來至蘇菲亞與萊卡舊世界的武器",
# "weapon.the_endwatcher.story.2" : "周遭散發紅色不穩定閃電與黑紅色的火焰",
# "weapon.the_endwatcher.story.3" : "弓箭中心的眼睛彷彿在凝視著世界的一切",
# "weapon.the_endwatcher.ultimate" : "[終焉閃光]",
# "weapon.the_endwatcher.ultimate.1" : "蓄力完成可以進入下階段蓄力:",
# "weapon.the_endwatcher.ultimate.2" : "最多可以進行三階段蓄力",
# "weapon.the_endwatcher.ultimate.3" : "",
# "weapon.the_endwatcher.ultimate.4" : "射出箭矢將無視重力",
# "weapon.the_endwatcher.ultimate.5" : "命中 方塊 / 敵人 時:",
# "weapon.the_endwatcher.ultimate.6" : "將展開領域並對 8 格範圍內敵人附加 終焉裂隙 與 防禦力 -25% (00:05)",
# "weapon.the_endwatcher.ultimate.7" : "並且造成 250% 攻擊力傷害",

# ==============================
# item_builder.py Backup
# ==============================
# def build_item_struct():
#     return {
#         "name": ['終焉凝視者', "#CE0000", '弓 / 秘藏'],
#         "story": {
#             'info': ['來至蘇菲亞與萊卡舊世界的武器','周遭散發紅色不穩定閃電與黑紅色的火焰','弓箭中心的眼睛彷彿在凝視著世界的一切'],
#             'color': 'blue'
#         },
#         "item_data": {
#             'real_item': 'bow',
#             'id': 'the_endwatcher',
#             'item_model': '"minecraft:bow/the_endwatcher/1"',
#             
#             'custom_data': 'type:"sword",rarity:"rare",weapon:"the_endwatcher",forging_table:1b',
#             
#             'rc': False,
#             'lc': False,
# 
#             'max_damage': 200,
#             'max_stack_size': 1,
#             'other': [
#                 'enchantment_glint_override=false',
#                 'tooltip_style="mythic"'
#             ]
#         },
#         "skill": {
#             "is_skill": False,
#             "cd": 25,
#             "name": ["終焉閃光", "#A70000", "#7A0000"],
#             "info": [
#                 "連續施放2個風速劍氣，",
#                 {
#                     "text": "對路徑上的敵人造成%s攻擊傷害，",
#                     "with": [
#                         {"text": "250%", "color": "gold"}
#                     ]
#                 },
#                 "並且使他們起飛 ",
#                 "當你使用此武器技能時",
#                 {
#                     "text": "你將獲得 [%s] 持續 5 秒 ",
#                     "with": [
#                         {"translate":"weapon.effect.resplendence","underlined":True,"color":"gold"}
#                     ]
#                 },
#                 "可以讓特定武器 CD 減少或者更為強大"
#             ]
#         },
#         "passive_skills": {
#             'is_passive_skills': False,
#             'cd': 6,
#             'name': ['深淵惡咒', '#8c00ff', '#480083'],
#             'info': ['a', 'a1']
#         },
#         "ultimate": {
#             'is_ultimate': True,
#             'cd': 20,
#             'name': ['終焉閃光', '#ff0000', '#A70000'],
#             'info': ['蓄力完成可以進入下階段蓄力:','最多可以進行三階段蓄力','','射出箭矢將無視重力','命中 方塊 / 敵人 時:','將展開領域並對 8 格範圍內敵人附加 終焉裂隙 與 防禦力 -25% (00:05)','並且造成 250% 攻擊力傷害']
#         },
#         "attributes": [
#             {
#                 'attribute': 'attack_damage',
#                 'id': 'base_attack_damage',
#                 'value': 3,
#                 'slot': 'mainhand',
#                 'operation': 'add_value'
#             },
#             {
#                 'attribute': 'attack_speed',
#                 'id': "base_attack_speed",
#                 'value': -2.4,
#                 'slot': 'mainhand',
#                 'operation': 'add_value'
#             }
#         ]
#     }
