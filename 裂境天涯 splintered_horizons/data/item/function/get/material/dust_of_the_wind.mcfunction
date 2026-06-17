give @s music_disc_11[item_name=[{"translate":"item.dust_of_the_wind","color":"#2ab172","italic":false,"bold":true}],lore=[[{"translate":"item.dust_of_the_wind.type","italic":false,"color":"dark_gray"}],{"text":""},[{"translate":"item.dust_of_the_wind.story.1","italic":false,"color":"blue"}],[{"translate":"item.dust_of_the_wind.story.2","italic":false,"color":"blue"}]],attribute_modifiers=[{id:"base_attack_damage",type:"attack_damage",amount:0.0,operation:"add_value",slot:"mainhand"}],max_stack_size=64,unbreakable={},item_model="material/dust_of_the_wind",custom_data={rc:0b,type:"item",id:"dust_of_the_wind"},tooltip_display={hidden_components:["attribute_modifiers","unbreakable","jukebox_playable"]},tooltip_style="rare"] 64

# ==============================
# Translate Keys
# ==============================
# "item.dust_of_the_wind" : "風之粉塵",
# "item.dust_of_the_wind.type" : "鍛造材料 / 稀有",
# "item.dust_of_the_wind.story.1" : "吸收風之力量的粉塵",
# "item.dust_of_the_wind.story.2" : "能夠透過鍛造台鍛造出強力的武器",

# ==============================
# item_builder.py Backup
# ==============================
# def build_item_struct():
#     return {
#         "name": ['風之粉塵', "#2ab172", '鍛造材料 / 稀有'],
#         "story": {
#             'info': ['吸收風之力量的粉塵','能夠透過鍛造台鍛造出強力的武器'],
#             'color': 'blue'
#         },
#         "item_data": {
#             'real_item': 'music_disc_11',
#             'id': 'dust_of_the_wind',
#             'item_model': '"material/dust_of_the_wind"',
#             'custom_data': 'type:"item",rarity:"rare",id:"dust_of_the_wind"',
#             'rc': False,
#             'lc': False,
#             'max_damage': 0,
#             'max_stack_size': 64,
#             'other': [
#                 'enchantment_glint_override=false',
#                 'tooltip_style="rare"',
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