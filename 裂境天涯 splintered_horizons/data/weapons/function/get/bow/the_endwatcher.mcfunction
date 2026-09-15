give @s bow[item_name=[{"translate": "weapon.the_endwatcher", "color": "#CE0000", "bold": true}],lore=[[{"translate":"weapon.the_endwatcher.type","color":"dark_gray","italic":false}],{"text":""},[{"translate":"weapon.the_endwatcher.story.1","color":"blue","italic":false}],[{"translate":"weapon.the_endwatcher.story.2","color":"blue","italic":false}],[{"translate":"weapon.the_endwatcher.story.3","color":"blue","italic":false}],{"text":""},[{"text":"","italic":false},{"translate":"weapon.the_endwatcher.ultimate","color":"#ff0000","bold":true},{"text":"  "},{"translate":"weapon.skill_cd","color":"#6E6E6E"},{"text":"50s"}],[{"text":"","italic":false},{"translate":"weapon.the_endwatcher.ultimate.1","color":"#A70000","italic":false,"with":[{"translate":"weapon.the_endwatcher.resonance","underlined":true,"color":"#ff9d00"}]}],[{"text":"","italic":false},{"translate":"weapon.the_endwatcher.ultimate.2","color":"#A70000","italic":false,"with":[{"translate":"weapon.the_endwatcher.awaken","underlined":true,"color":"#CE0000"}]}],[{"text":"","italic":false},{"translate":"weapon.the_endwatcher.ultimate.3","color":"#A70000","italic":false,"with":[{"translate":"weapon.effect.finality_tunder","underlined":true,"color":"#ff5555"}]}],[{"text":"","italic":false},{"translate":"weapon.the_endwatcher.ultimate.4","color":"#A70000","italic":false}],[{"text":"","italic":false},{"translate":"weapon.the_endwatcher.ultimate.5","color":"#A70000","italic":false}],[{"text":"","italic":false},{"translate":"weapon.the_endwatcher.ultimate.6","color":"#A70000","italic":false,"with":[{"translate":"weapon.the_endwatcher.awaken","underlined":true,"color":"#CE0000"}]}],{"text":""},[{"text":"","italic":false},{"translate":"weapon.the_endwatcher.passive_skills","color":"#ff0000","bold":true},{"text":"  "}],[{"text":"","italic":false},{"translate":"weapon.the_endwatcher.passive_skills.1","color":"#A70000","italic":false,"with":[{"translate":"weapon.effect.finality_tunder","underlined":true,"color":"#ff5555"}]}],[{"text":"","italic":false},{"translate":"weapon.the_endwatcher.passive_skills.2","color":"#A70000","italic":false,"with":[{"translate":"weapon.effect.finality_tunder","underlined":true,"color":"#ff5555"}]}],[{"text":"","italic":false},{"translate":"weapon.the_endwatcher.passive_skills.3","color":"#A70000","italic":false}],[{"text":"","italic":false},{"translate":"weapon.the_endwatcher.passive_skills.4","color":"#A70000","italic":false,"with":[{"translate":"weapon.the_endwatcher.resonance","underlined":true,"color":"#ff9d00"}]}],[{"text":"","italic":false},{"translate":"weapon.the_endwatcher.passive_skills.5","color":"#A70000","italic":false}],[{"text":"","italic":false},{"translate":"weapon.the_endwatcher.passive_skills.6","color":"#A70000","italic":false,"with":[{"translate":"weapon.the_endwatcher.awaken","underlined":true,"color":"#CE0000"}]}],{"text":""}],attribute_modifiers=[{type:"attack_damage",id:"base_attack_damage",amount:3,operation:"add_value",slot:"mainhand"},{type:"attack_speed",id:"base_attack_speed",amount:-2.4,operation:"add_value",slot:"mainhand"}],max_stack_size=1,max_damage=200,damage=0,item_model="minecraft:bow/the_endwatcher/1",custom_data={type:"bow",rarity:"rare",weapon:"the_endwatcher",finality:1b,rc:1b,forging_table:1b},enchantment_glint_override=false,tooltip_style="mythic",custom_model_data={flags:[0]}]

# ==============================
# Translate Keys
# ==============================
# "weapon.the_endwatcher" : "終焉凝視者",
# "weapon.the_endwatcher.type" : "弓 / 秘藏",
# "weapon.the_endwatcher.story.1" : "來至蘇菲亞與萊卡舊世界的武器",
# "weapon.the_endwatcher.story.2" : "周遭散發紅色不穩定閃電與黑紅色的火焰",
# "weapon.the_endwatcher.story.3" : "弓箭中心的眼睛彷彿在凝視著世界的一切",
# "weapon.effect.finality_tunder" : "終焉閃電",
# "weapon.the_endwatcher.resonance" : "共鳴值",
# "weapon.the_endwatcher.awaken" : "開眼",
# "weapon.the_endwatcher.ultimate" : "【終焉迴光】",
# "weapon.the_endwatcher.ultimate.1" : "【%1$s】達 100% 時，下一發第二段蓄力自動發動",
# "weapon.the_endwatcher.ultimate.2" : "消耗 1 顆終焉之眼進入【%1$s】型態，共鳴值歸零",
# "weapon.the_endwatcher.ultimate.3" : "開眼期間第二段蓄力不消耗【%1$s】",
# "weapon.the_endwatcher.ultimate.4" : "且蓄力時間縮短 50%",
# "weapon.the_endwatcher.ultimate.5" : "每次命中釋放目前累積傷害的 20% 作為基礎傷害",
# "weapon.the_endwatcher.ultimate.6" : "釋放 5 次後退出【%1$s】",
# "weapon.the_endwatcher.passive_skills" : "【終末之光】",
# "weapon.the_endwatcher.passive_skills.1" : "當你擁有【%1$s】時解鎖第二段蓄力",
# "weapon.the_endwatcher.passive_skills.2" : "第二段蓄力消耗 1 個【%1$s】",
# "weapon.the_endwatcher.passive_skills.3" : "第二段蓄力的箭命中敵人時：",
# "weapon.the_endwatcher.passive_skills.4" : "為【%1$s】充能 8 ~ 15%",
# "weapon.the_endwatcher.passive_skills.5" : "並儲存造成的傷害 (上限 = 攻擊力 x 50)",
# "weapon.the_endwatcher.passive_skills.6" : "【%1$s】型態期間不會觸發此被動",

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
#                 'tooltip_style="mythic"',
#                 'custom_model_data={flags:[0]}'
#             ]
#         },
#         "skill": {
#             "is_skill": False,
#             "cd": 0,
#             "name": ["", "#A70000", "#7A0000"],
#             "info": []
#         },
# 
#         "passive_skills": {
#             "is_passive_skills": True,
#             "cd": 0,
#             "name": ["終末之光", "#ff0000", "#A70000"],
#             "info": [
#                 {
#                     "text": "當你擁有【%1$s】時解鎖第二段蓄力",
#                     "with": [
#                         {"translate": "weapon.effect.finality_tunder", "underlined": True, "color": "#ff5555"}
#                     ],
#                 },
#                 {
#                     "text": "第二段蓄力消耗 1 個【%1$s】",
#                     "with": [
#                         {"translate": "weapon.effect.finality_tunder", "underlined": True, "color": "#ff5555"}
#                     ],
#                 },
#                 "第二段蓄力的箭命中敵人時：",
#                 {
#                     "text": "為【%1$s】充能 8 ~ 15%",
#                     "with": [
#                         {"translate": "weapon.the_endwatcher.resonance", "underlined": True, "color": "#ff9d00"}
#                     ],
#                 },
#                 "並儲存造成的傷害 (上限 = 攻擊力 x 50)",
#                 {
#                     "text": "【%1$s】型態期間不會觸發此被動",
#                     "with": [
#                         {"translate": "weapon.the_endwatcher.awaken", "underlined": True, "color": "#CE0000"}
#                     ],
#                 },
#             ]
#         },
# 
#         "ultimate": {
#             "is_ultimate": True,
#             "cd": 50,
#             "name": ["終焉迴光", "#ff0000", "#A70000"],
#             "info": [
#                 {
#                     "text": "【%1$s】達 100% 時，下一發第二段蓄力自動發動",
#                     "with": [
#                         {"translate": "weapon.the_endwatcher.resonance", "underlined": True, "color": "#ff9d00"}
#                     ],
#                 },
#                 {
#                     "text": "消耗 1 顆終焉之眼進入【%1$s】型態，共鳴值歸零",
#                     "with": [
#                         {"translate": "weapon.the_endwatcher.awaken", "underlined": True, "color": "#CE0000"}
#                     ],
#                 },
#                 {
#                     "text": "開眼期間第二段蓄力不消耗【%1$s】",
#                     "with": [
#                         {"translate": "weapon.effect.finality_tunder", "underlined": True, "color": "#ff5555"}
#                     ],
#                 },
#                 "且蓄力時間縮短 50%",
#                 "每次命中釋放目前累積傷害的 20% 作為基礎傷害",
#                 {
#                     "text": "釋放 5 次後退出【%1$s】",
#                     "with": [
#                         {"translate": "weapon.the_endwatcher.awaken", "underlined": True, "color": "#CE0000"}
#                     ],
#                 },
#             ]
#         },
# 
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
