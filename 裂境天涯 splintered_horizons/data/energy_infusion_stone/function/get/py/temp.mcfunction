give @s music_disc_11[item_name=[{"translate": "item.energy_infusion_stone.generic", "color": "#910000", "bold": true}],lore=[[{"translate": "item.energy_infusion_stone.finality_cycle.type", "color": "dark_gray", "italic": false}], {"text": ""}, [{"translate": "item.energy_infusion_stone.generic.story.1", "color": "blue", "italic": false}], [{"translate": "item.energy_infusion_stone.generic.story.2", "color": "blue", "italic": false}], [{"translate": "item.energy_infusion_stone.generic.story.3", "color": "blue", "italic": false}], [{"translate": "item.energy_infusion_stone.generic.story.4", "color": "blue", "italic": false}], {"text": ""}, [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.finality_cycle.passive_skills", "color": "#8F0000", "bold": true}, {"text": "  "}], [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.finality_cycle.passive_skills.1", "color": "#ff4b4b", "italic": false}], [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.finality_cycle.passive_skills.2", "color": "#ff4b4b", "italic": false, "with": [{"text": "%"}, {"translate": "tips.eye_of_finality", "underlined": True, "color": "dark_red"}]}], {"text": ""}],item_model="material/energy_infusion_stone/weapon/mythic",enchantments={"energy_infusion_stone:skills/weapon/finality_cycle":1},enchantment_glint_override=false,custom_data={type:"item",rarity:"mythic",id:"weapon_energy_infusion"},tooltip_style="mythic",tooltip_display={hidden_components:["unbreakable","jukebox_playable"]},max_stack_size=64] 64

# ==============================
# Translate Keys
# ==============================
# "item.energy_infusion_stone.finality_cycle.type" : "注能之石 / 神話",
# "item.energy_infusion_stone.finality_cycle.passive_skills" : "[終焉轉化]",
# "item.energy_infusion_stone.finality_cycle.passive_skills.1" : "當你擊敗敵人時：",
# "item.energy_infusion_stone.finality_cycle.passive_skills.2" : "有 ( 20% * 附魔等級 ) 機率使 %1$s 冷卻 -5 秒",

# ==============================
# item_builder.py Backup
# ==============================
# def build_item_struct():
#     return {
#         "name": ['武器注能: 終焉迴路', "#910000", '注能之石 / 神話'],
#         "story": {
#             'info': ['散落在世界各地的注能之石','不同顏色對應不同類型','可以用於強化武器 / 裝備','但一旦綁定將無法分開'],
#             'color': 'blue'
#         },
#         "item_data": {
#             'real_item': 'music_disc_11',
#             'id': 'energy_infusion_stone.finality_cycle',
#             'item_model': '"material/energy_infusion_stone/weapon/mythic"',
#             'custom_data': 'type:"item",rarity:"mythic",id:"weapon_energy_infusion"',
#             'enchantments': ['energy_infusion_stone:skills/weapon/finality_cycle:1'],
#             'max_stack_size': 64,
#             'other': [
#                 'tooltip_style="mythic"',
#                 'tooltip_display={hidden_components:["unbreakable","jukebox_playable"]}'
#             ]
#         },
#         "skill": {
#             'is_skill': False,
#             'name': ['', "#ff0000", '#ffffff'],
#             'info': []
#         },
#         "passive_skills": {
#             'is_passive_skills': True,
#             'name': ['終焉轉化', "#8F0000", "#ff4b4b"],
#             'info': [
#                 '當你擊敗敵人時：',
#                 {
#                     "text": "有 ( 20% * 附魔等級 ) 機率使 %1$s 冷卻 -5 秒",
#                     "with": [
#                         {"text":"%"},
#                         {"translate": "tips.eye_of_finality", "underlined": True, "color": "dark_red"}
#                     ]
#                 }
#             ]
#         },
#         "attributes": {
#             'is_attributes': False,
#             'name': ['屬性', '#ffffff', '#ffffff'],
#             'info': []
#         }
#     }
