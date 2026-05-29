give @s music_disc_11[item_name=[{"translate": "item.phase_crystal", "color": "#E100FF", "bold": true}],lore=[[{"translate": "item.phase_crystal.type", "color": "dark_gray", "italic": false}], {"text": ""}, [{"translate": "item.phase_crystal.story.1", "color": "blue", "italic": false}], [{"translate": "item.phase_crystal.story.2", "color": "blue", "italic": false}], {"text": ""}],item_model="material/phase_crystal",custom_data={type:"item",rarity:"epic",id:"phase_crystal"},enchantment_glint_override=false,tooltip_style="epic",tooltip_display={hidden_components:["unbreakable","jukebox_playable"]},max_stack_size=64] 64

# ==============================
# Translate Keys
# ==============================
# "item.phase_crystal" : "相位水晶",
# "item.phase_crystal.type" : "鍛造材料 / 史詩",
# "item.phase_crystal.story.1" : "不太穩定的水晶",
# "item.phase_crystal.story.2" : "但似乎可以用於鍛造特殊裝備",

# ==============================
# item_builder.py Backup
# ==============================
# def build_item_struct():
#     return {
#         "name": ['相位水晶', "#E100FF", '鍛造材料 / 史詩'],
#         "story": {
#             'info': ['不太穩定的水晶','但似乎可以用於鍛造特殊裝備'],
#             'color': 'blue'
#         },
#         "item_data": {
#             'real_item': 'music_disc_11',
#             'id': 'phase_crystal',
#             'item_model': '"material/phase_crystal"',
#             'custom_data': 'type:"item",rarity:"epic",id:"phase_crystal"',
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