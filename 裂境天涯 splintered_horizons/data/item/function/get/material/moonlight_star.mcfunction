give @s music_disc_11[item_name=[{"translate":"item.moonlight_star","color":"#8e00aa","italic":false,"bold":true}],lore=[[{"translate":"item.moonlight_star.type","italic":false,"color":"dark_gray"}],{"text":""},[{"translate":"item.moonlight_star.story.1","italic":false,"color":"blue"}],[{"translate":"item.moonlight_star.story.2","italic":false,"color":"blue"}]],attribute_modifiers=[{id:"base_attack_damage",type:"attack_damage",amount:0.0,operation:"add_value",slot:"mainhand"}],max_stack_size=64,unbreakable={},item_model="material/moonlight_star",custom_data={rc:0b,type:"item",id:"moonlight_star"},tooltip_display={hidden_components:["attribute_modifiers","unbreakable","jukebox_playable"]},tooltip_style="epic"] 64

# ==============================
# Translate Keys
# ==============================
# "item.moonlight_star" : "月光之星",
# "item.moonlight_star.type" : "鍛造材料 / 史詩",
# "item.moonlight_star.story.1" : "天空中掉落的星星",
# "item.moonlight_star.story.2" : "能夠透過鍛造台鍛造出強力的武器",

# ==============================
# item_builder.py Backup
# ==============================
# def build_item_struct():
#     return {
#         "name": ['月光之星', "#8e00aa", '鍛造材料 / 史詩'],
#         "story": {
#             'info': ['天空中掉落的星星', '能夠透過鍛造台鍛造出強力的武器'],
#             'color': 'blue'
#         },
#         "item_data": {
#             'real_item': 'music_disc_11',
#             'id': 'moonlight_star',
#             'item_model': '"material/moonlight_star"',
#             'custom_data': 'type:"item",rarity:"epic",id:"moonlight_star"',
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