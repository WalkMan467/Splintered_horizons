give @s music_disc_11[item_name=[{"translate":"item.finality_ingot","color":"#a10000","italic":false,"bold":true}],lore=[[{"translate":"item.finality_ingot.type","italic":false,"color":"dark_gray"}],{"text":""},[{"translate":"item.finality_ingot.story.1","italic":false,"color":"blue"}],[{"translate":"item.finality_ingot.story.2","italic":false,"color":"blue"}],[{"translate":"item.finality_ingot.story.3","italic":false,"color":"blue"}],[{"translate":"item.finality_ingot.story.4","italic":false,"color":"blue"}]],attribute_modifiers=[{id:"base_attack_damage",type:"attack_damage",amount:0.0,operation:"add_value",slot:"mainhand"}],max_stack_size=64,unbreakable={},item_model="material/finality_ingot",custom_data={rc:0b,type:"item",id:"finality_ingot"},tooltip_display={hidden_components:["attribute_modifiers","unbreakable","jukebox_playable"]},tooltip_style="mythic"] 64

# ==============================
# Translate Keys
# ==============================
# "item.finality_ingot" : "終焉合金錠",
# "item.finality_ingot.type" : "鍛造材料 / 神話",
# "item.finality_ingot.story.1" : "被終焉之力侵蝕的合金錠",
# "item.finality_ingot.story.2" : "擁有遠超鎢鋼的硬度",
# "item.finality_ingot.story.3" : "四周散發極不穩定的終焉力量與輻射能量",
# "item.finality_ingot.story.4" : "能鍛造出非常強大的武器與裝備",

# ==============================
# item_builder.py Backup
# ==============================
# def build_item_struct():
#     return {
#         "name": ['終焉合金錠', "#a10000", '鍛造材料 / 神話'],
#         "story": {
#             'info': ['被終焉之力侵蝕的合金錠', '擁有遠超鎢鋼的硬度', '四周散發極不穩定的終焉力量與輻射能量', '能鍛造出非常強大的武器與裝備'],
#             'color': 'blue'
#         },
#         "item_data": {
#             'real_item': 'music_disc_11',
#             'id': 'finality_ingot',
#             'item_model': '"material/finality_ingot"',
#             'custom_data': 'type:"item",rarity:"mythic",id:"finality_ingot"',
#             'rc': False,
#             'lc': False,
#             'max_damage': 0,
#             'max_stack_size': 64,
#             'other': [
#                 'enchantment_glint_override=false',
#                 'tooltip_style="mythic"',
#                 'tooltip_display={hidden_components:["unbreakable","jukebox_playable"]}',
#             ]
#         },
# 
#         "skill": {
#             "is_skill": False,
#             "cd": 0,
#             "name": ["", "#ffffff", "#ffffff"],
#             "info": []
#         },
# 
#         "passive_skills": {
#             'is_passive_skills': False,
#             'cd': 0,
#             'name': ['', '#ffffff', '#ffffff'],
#             'info': []
#         },
# 
#         "ultimate": {
#             'is_ultimate': False,
#             'cd': 0,
#             'name': ['', '#ffffff', '#ffffff'],
#             'info': []
#         },
# 
#         "attributes": []
#     }