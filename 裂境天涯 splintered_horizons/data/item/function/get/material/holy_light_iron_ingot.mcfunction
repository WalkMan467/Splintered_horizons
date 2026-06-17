give @s music_disc_11[item_name=[{"translate":"item.holy_light_iron_ingot","color":"#ffe600","italic":false,"bold":true}],lore=[[{"translate":"item.holy_light_iron_ingot.type","italic":false,"color":"dark_gray"}],{"text":""},[{"translate":"item.holy_light_iron_ingot.story.1","italic":false,"color":"blue"}],[{"translate":"item.holy_light_iron_ingot.story.2","italic":false,"color":"blue"}]],max_stack_size=64,unbreakable={},item_model="material/holy_light_iron_ingot",custom_data={rc:0b,type:"item",id:"holy_light_iron_ingot"},tooltip_display={hidden_components:["attribute_modifiers","unbreakable","jukebox_playable"]},tooltip_style="epic"] 64

# ==============================
# Translate Keys
# ==============================
# "item.holy_light_iron_ingot" : "聖光鐵錠",
# "item.holy_light_iron_ingot.type" : "鍛造材料 / 史詩",
# "item.holy_light_iron_ingot.story.1" : "散發光輝的鐵錠",
# "item.holy_light_iron_ingot.story.2" : "能鍛造出強大的武器與裝備",

# ==============================
# item_builder.py Backup
# ==============================
# def build_item_struct():
#     return {
#         "name": ['聖光鐵錠', "#ffe600", '鍛造材料 / 史詩'],
#         "story": {
#             'info': ['散發光輝的鐵錠', '能鍛造出強大的武器與裝備'],
#             'color': 'blue'
#         },
#         "item_data": {
#             'real_item': 'music_disc_11',
#             'id': 'holy_light_iron_ingot',
#             'item_model': '"material/holy_light_iron_ingot"',
#             'custom_data': 'type:"item",rarity:"epic",id:"holy_light_iron_ingot"',
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