give @s enchanted_book[item_name=[{"translate": "item.energy_infusion_stone.generic", "color": "#ff4a03", "bold": true}],lore=[[{"translate": "item.energy_infusion_stone.resilient.type", "color": "dark_gray", "italic": false}], {"text": ""}, [{"translate": "item.energy_infusion_stone.generic.story.1", "color": "blue", "italic": false}], [{"translate": "item.energy_infusion_stone.generic.story.2", "color": "blue", "italic": false}], [{"translate": "item.energy_infusion_stone.generic.story.3", "color": "blue", "italic": false}], [{"translate": "item.energy_infusion_stone.generic.story.4", "color": "blue", "italic": false}], {"text": ""}, [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.resilient.passive_skills", "color": "dark_red", "bold": true}, {"text": "  "}], [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.resilient.passive_skills.1", "color": "#ffffff", "italic": false}], [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.resilient.passive_skills.2", "color": "#ffffff", "italic": false, "with": [{"translate": "item.energy_infusion_stone.resilient.passive_skills.7", "underlined": True, "italic": False, "color": "#b37400"}]}], [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.resilient.passive_skills.3", "color": "#ffffff", "italic": false, "with": [{"translate": "item.energy_infusion_stone.resilient.passive_skills.7", "underlined": True, "italic": False, "color": "#b37400"}, {"translate": "attribute.name.armor", "underlined": True, "color": "#999999"}]}], [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.resilient.passive_skills.4", "color": "#ffffff", "italic": false, "with": [{"translate": "item.energy_infusion_stone.resilient.passive_skills.7", "underlined": True, "italic": False, "color": "#b37400"}]}], [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.resilient.passive_skills.5", "color": "#ffffff", "italic": false, "with": [{"translate": "item.energy_infusion_stone.resilient.passive_skills.7", "underlined": True, "italic": False, "color": "#b37400"}]}], [{"text": "", "italic": false}, {"translate": "item.energy_infusion_stone.resilient.passive_skills.6", "color": "#ffffff", "italic": false, "with": [{"translate": "item.energy_infusion_stone.resilient.passive_skills.7", "underlined": True, "italic": False, "color": "#b37400"}]}], {"text": ""}],item_model="material/energy_infusion_stone/armor/mythic",enchantments={"energy_infusion_stone:skills/armor/resilient":1},enchantment_glint_override=false,custom_data={type:"item",rarity:"mythic",id:"armor_energy_infusion"},tooltip_style="mythic",max_stack_size=64] 64

# ==============================
# Translate Keys
# ==============================
# "item.energy_infusion_stone.resilient.type" : "注能之石 / 神話",
# "item.energy_infusion_stone.resilient.passive_skills" : "[堅硬]",
# "item.energy_infusion_stone.resilient.passive_skills.1" : "當你受到攻擊時(不包括持續傷害):",
# "item.energy_infusion_stone.resilient.passive_skills.2" : "獲得 1 點%1$s",
# "item.energy_infusion_stone.resilient.passive_skills.3" : "每點%1$s可以帶給玩家 1 點 %2$s:",
# "item.energy_infusion_stone.resilient.passive_skills.4" : "5 秒內未受到攻擊將移除所有%1$s",
# "item.energy_infusion_stone.resilient.passive_skills.5" : "當你獲得超過 5 點%1$s時:",
# "item.energy_infusion_stone.resilient.passive_skills.6" : "移除全部%1$s並進入 8 秒 CD",

# ==============================
# item_builder.py Backup
# ==============================
# def build_item_struct():
#     return {
#         "name": ['裝備注能: 破壞者', "#ff4a03", '注能之石 / 神話'],
#         "story": {
#             'info': ['散落在世界各地的注能之石','不同顏色對應不同類型','可以用於強化武器 / 裝備','但一旦綁定將無法分開'],
#             'color': 'blue'
#         },
#         "item_data": {
#             'real_item': 'music_disc_11',
#             'id': 'energy_infusion_stone.resilient',
#             'item_model': '"material/energy_infusion_stone/armor/mythic"',
#             'custom_data': 'type:"item",rarity:"mythic",id:"armor_energy_infusion"',
#             'enchantments': ['energy_infusion_stone:skills/armor/resilient:1'],
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
#             'name': ['堅硬', "dark_red", '#ffffff'],
#             'info': [
#                 '當你受到攻擊時(不包括持續傷害):',
#                 {
#                     "text": "獲得 1 點%1$s",
#                     "with": [
#                         {"translate": "item.energy_infusion_stone.resilient.passive_skills.7", "underlined": True, "italic": False, "color": "#b37400"}
#                     ]
#                 },
#                 {
#                     "text": "每點%1$s可以帶給玩家 1 點 %2$s:",
#                     "with": [
#                         {"translate": "item.energy_infusion_stone.resilient.passive_skills.7", "underlined": True, "italic": False, "color": "#b37400"},
#                         {"translate": "attribute.name.armor", "underlined": True, "color": "#999999"}
#                     ]
#                 },
#                 {
#                     "text": "5 秒內未受到攻擊將移除所有%1$s",
#                     "with": [
#                         {"translate": "item.energy_infusion_stone.resilient.passive_skills.7", "underlined": True, "italic": False, "color": "#b37400"}
#                     ]
#                 },
#                 {
#                     "text": "當你獲得超過 5 點%1$s時:",
#                     "with": [
#                         {"translate": "item.energy_infusion_stone.resilient.passive_skills.7", "underlined": True, "italic": False, "color": "#b37400"}
#                     ]
#                 },
#                 {
#                     "text": "移除全部%1$s並進入 8 秒 CD",
#                     "with": [
#                         {"translate": "item.energy_infusion_stone.resilient.passive_skills.7", "underlined": True, "italic": False, "color": "#b37400"}
#                     ]
#                 }
#             ]
#         },
#         "attributes": {
#             'is_attributes': False,  # 新增 attributes 標記
#             'name': ['屬性', '#ffffff', '#ffffff'],
#             'info': []
#         }
#     }
