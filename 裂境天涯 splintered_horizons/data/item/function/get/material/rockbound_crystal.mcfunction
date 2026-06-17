give @s music_disc_11[item_name=[{"translate":"item.rockbound_crystal","color":"#e4a42f","italic":false,"bold":true}],lore=[[{"translate":"item.rockbound_crystal.type","italic":false,"color":"dark_gray"}],{"text":""},[{"translate":"item.rockbound_crystal.story.1","italic":false,"color":"blue"}],[{"translate":"item.rockbound_crystal.story.2","italic":false,"color":"blue"}]],attribute_modifiers=[{id:"base_attack_damage",type:"attack_damage",amount:0.0,operation:"add_value",slot:"mainhand"}],max_stack_size=64,unbreakable={},item_model="material/rockbound_crystal",custom_data={rc:0b,type:"item",id:"rockbound_crystal"},tooltip_display={hidden_components:["attribute_modifiers","unbreakable","jukebox_playable"]},tooltip_style="epic"] 64

# ==============================
# Translate Keys
# ==============================
# "item.rockbound_crystal" : "盤岩晶體",
# "item.rockbound_crystal.type" : "鍛造材料 / 史詩",
# "item.rockbound_crystal.story.1" : "不太穩定的水晶",
# "item.rockbound_crystal.story.2" : "但似乎可以用於鍛造特殊裝備",

# ==============================
# item_builder.py Backup
# ==============================
# def build_item_struct():
#     return {
#         "name": ['盤岩晶體', "#e4a42f", '鍛造材料 / 史詩'],
#         "story": {
#             'info': ['不太穩定的水晶','但似乎可以用於鍛造特殊裝備'],
#             'color': 'blue'
#         },
#         "item_data": {
#             'real_item': 'music_disc_11',
#             'id': 'rockbound_crystal',
#             'item_model': '"material/rockbound_crystal"',
#             'custom_data': 'type:"item",rarity:"epic",id:"rockbound_crystal"',
#             'rc': False,
#             'lc': False,
#             'max_damage': 0,
#             'max_stack_size': 64,
#             'other': [
#                 'enchantment_glint_override=false',
#                 'tooltip_style="epic"',
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